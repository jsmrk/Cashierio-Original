Imports System.Security.Cryptography
Imports System.Text
Imports System.Text.RegularExpressions
Imports MySql.Data.MySqlClient

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

End Module
