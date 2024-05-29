Imports System.ComponentModel
Imports System.Security.Cryptography
Imports System.Text
Imports System.Text.RegularExpressions
Imports MySql.Data.MySqlClient
Imports System.Diagnostics
Imports Google.Apis.Auth.OAuth2
Imports Google.Apis.Drive.v3
Imports Google.Apis.Services
Imports Google.Apis.Upload
Imports System.IO
Imports System.Threading

Module ModGlobalProcedure
    Public Function fncConnectToDatabase() As Boolean
        Try
            servername = "localhost"
            databasename = "cashieriosys"
            databaseusername = "root"
            databasepassword = "1234"
            port = "3306"

            'check kung nka close ang status ng connection sa variable na conHotelMgtSys
            If conRestMgtSys.State = ConnectionState.Closed Then   'kung naka closed  mag established ng connection
                conRestMgtSys = New MySqlConnection
                strConnectionString = "SERVER=" & servername & ";" _
                                      & "DATABASE=" & databasename & ";" _
                                      & "USERNAME=" & databaseusername & ";" _
                                      & "PASSWORD=" & databasepassword & ";" _
                                      & "PORT=" & port
                conRestMgtSys.ConnectionString = strConnectionString
                conRestMgtSys.Open()
                command.Connection = conRestMgtSys
                Return True
            Else
                conRestMgtSys.Close()
                Return False
            End If

        Catch ex As Exception
            MessageBox.Show("" & ex.Message)
        End Try
        Return False
    End Function

    Public Sub chkDatabaseConnection()
        If fncConnectToDatabase() = True Then
            ' no processes it is already connected
        Else
            conRestMgtSys.Open()
        End If
    End Sub

    Public Function CheckPasswordStrength(password As String) As Boolean
        ' Check minimum length of 8 characters, at least 1 special character, at least 1 numeric character, and at least 1 uppercase letter
        Dim regex As New Regex("^(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$")
        If regex.IsMatch(password) Then
            Return True
        End If
        Return False
    End Function


    Public Function HashPassword(password As String) As String
        Using sha256 As SHA256 = SHA256.Create()
            ' Compute the hash as a byte array
            Dim bytes As Byte() = sha256.ComputeHash(Encoding.UTF8.GetBytes(password))

            ' Convert the byte array to a hexadecimal string
            Dim builder As New StringBuilder()
            For Each b As Byte In bytes
                builder.Append(b.ToString("x2"))
            Next
            Return builder.ToString()
        End Using
    End Function


    Public Function SaveToLogs(log As String, action As String) As String
        datRest = New DataTable
        SqlAdapterRest = New MySqlDataAdapter
        Dim datetime = currentDateTime

        If action = "userSession" Then
            Try
                With command
                    .Parameters.Clear() 'clear command parameters
                    .CommandText = "procAddLogs" 'call stored procedure from mysql
                    .CommandType = CommandType.StoredProcedure
                    .Parameters.AddWithValue("@p_userposition", g_userposition)
                    .Parameters.AddWithValue("@p_fullname", userFullname)
                    .Parameters.AddWithValue("@p_useraction", log)
                    .Parameters.AddWithValue("@p_datetime", datetime.ToString)
                    .ExecuteNonQuery()
                End With
                '    MessageBox.Show("Record Successfully Save", "Save Record", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Catch ex As Exception
                MessageBox.Show("" + ex.Message)
            End Try
        End If

    End Function

    Public Sub ExportDatabase()
        Try
            Dim fileName As String = Environment.GetFolderPath(Environment.SpecialFolder.Desktop) & "\cashierio-backup.sql"
            Dim process As New Process()
            process.StartInfo.FileName = "cmd.exe"
            process.StartInfo.UseShellExecute = False
            process.StartInfo.RedirectStandardInput = True
            process.StartInfo.RedirectStandardOutput = True
            process.StartInfo.RedirectStandardError = True
            process.StartInfo.CreateNoWindow = True

            process.Start()

            Dim cmd As String = $"mysqldump -u root -p 1234 cashieriosys > ""{fileName}"""
            process.StandardInput.WriteLine(cmd)
            process.StandardInput.Close()

            process.WaitForExit()
            process.Close()
        Catch ex As Exception
            MessageBox.Show("An error occurred while exporting the database: " & ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
        End Try
    End Sub


    Public Sub UploadFileToGoogleDrive()
        Dim filePath As String = Environment.GetFolderPath(Environment.SpecialFolder.Desktop) & "\cashierio-backup.sql"

        Dim clientId As String = "542851119247-rt8rjgbvfh2hcc5oeaegdl9pftqhn4ki.apps.googleusercontent.com"
        Dim clientSecret As String = "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"

        Dim credential = GoogleWebAuthorizationBroker.AuthorizeAsync(
            New ClientSecrets With {
                .ClientId = clientId,
                .ClientSecret = clientSecret
            },
            {DriveService.Scope.DriveFile},
            "user",
            CancellationToken.None).Result

        Dim service = New DriveService(New BaseClientService.Initializer() With {
            .HttpClientInitializer = credential,
            .ApplicationName = "cashierio-original"
        })

        Dim fileMetadata = New Google.Apis.Drive.v3.Data.File() With {
            .Name = "backup.sql"
        }
        Dim fileStream = New FileStream(filePath, FileMode.Open, FileAccess.Read)

        Dim request = service.Files.Create(fileMetadata, fileStream, "application/sql")
        request.Fields = "id"
        Dim uploadResult = request.Upload()

        If uploadResult.Status = UploadStatus.Failed Then
            Console.WriteLine("Upload Failed: " & uploadResult.Exception.Message)
        Else
            Console.WriteLine("File Uploaded Successfully!")
        End If

        fileStream.Close()
    End Sub

End Module

