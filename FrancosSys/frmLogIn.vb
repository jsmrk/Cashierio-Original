Imports System.Security.Cryptography
Imports System.Text
Imports MySql.Data.MySqlClient
Public Class frmLogIn
    Dim currentuser As String
    Private Sub frmLogIn_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        chkDatabaseConnection()
        txtpassword.Text = ""
        txtusername.Text = ""
    End Sub

    Private Sub btnLogIn_Click(sender As Object, e As EventArgs) Handles btnLogIn.Click
        datRest = New DataTable
        SqlAdapterRest = New MySqlDataAdapter

        Dim enteredPassword = txtPassword.Text
        Dim HashedPass = HashPassword(enteredPassword)

        Try
            With command
                .Parameters.Clear()
                .CommandText = "procSearchUser"
                .Parameters.AddWithValue("@p_userposition", Trim(cmbUserPosition.Text))
                .Parameters.AddWithValue("@p_username", Trim(txtusername.Text))
                .Parameters.AddWithValue("@p_userpassword", HashedPass)
                .CommandType = CommandType.StoredProcedure
                SqlAdapterRest.SelectCommand = command
                datRest.Clear()
                SqlAdapterRest.Fill(datRest)
                g_userposition = cmbUserPosition.Text
                userPosition = g_userposition

                If datRest.Rows.Count > 0 Then
                    If g_userposition = "Admin" Then
                        userFullname = datRest.Rows(row).Item("fullname").ToString
                        frmMain.txtCurrentUser.Text = userFullname
                        g_username = txtusername.Text
                        frmMain.Show()
                        frmMain.btn_inventory.Show()
                        frmMain.btn_accounts.Show()
                        frmMain.btn_logout.Location = New Point(-1, 597)
                        frmMain.btn_sales.Location = New Point(-1, 400)
                        frmMain.btn_inventory.PerformClick()
                        frmMain.btn_sales.PerformClick()
                        frmMain.btn_dash.PerformClick()
                    Else
                        userFullname = datRest.Rows(row).Item("fullname").ToString
                        frmMain.txtCurrentUser.Text = userFullname
                        g_username = txtusername.Text
                        frmMain.Show()
                        frmMain.btn_inventory.Hide()
                        frmMain.btn_accounts.Hide()
                        frmMain.btn_logs.Hide()
                        frmMain.btn_sales.Location = New Point(-1, 330)
                        frmMain.btn_logout.Location = New Point(-1, 400)
                        frmMain.btn_inventory.PerformClick()
                        frmMain.btn_sales.PerformClick()
                        frmMain.btn_dash.PerformClick()
                    End If
                    SaveToLogs(log:="User Has Logged In", action:="userSession")
                    'ExportDatabase("login")
                    'UploadFileToGoogleDrive("login")
                    Me.Visible = False
                Else
                    MessageBox.Show("User not found/Invalid Password", "Login", MessageBoxButtons.OK, MessageBoxIcon.Error)
                    txtPassword.Clear()
                End If

            End With
            datRest.Dispose()
            SqlAdapterRest.Dispose()
        Catch ex As Exception
            MessageBox.Show("" + ex.Message)
        End Try

    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs)
        Me.Dispose()
        frmMain.Dispose()
    End Sub

    Private Sub txtusername_TextChanged(sender As Object, e As EventArgs)

    End Sub

    Private Sub Guna2ComboBox1_SelectedIndexChanged(sender As Object, e As EventArgs)

    End Sub

    Private Sub Guna2ControlBox1_Click(sender As Object, e As EventArgs) Handles Guna2ControlBox1.Click
        Me.Dispose()
    End Sub

    Private Sub txtpassword_TextChanged(sender As Object, e As EventArgs) Handles txtpassword.TextChanged

    End Sub

    Private Sub txtusername_TextChanged_1(sender As Object, e As EventArgs) Handles txtusername.TextChanged

    End Sub

    Private Sub cmbUserPosition_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cmbUserPosition.SelectedIndexChanged

    End Sub


    'Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
    '    Dim username As String
    '    Dim password As String
    '    username = TxtUser.Text
    '    password = TxtUser.Text
    '    If (username.Equals("admin") And password.Equals("admin")) Then
    '        MessageBox.Show("Login Success", "information", MessageBoxButtons.OK, MessageBoxIcon.Information)
    '    Else
    '        MessageBox.Show("error", "information", MessageBoxButtons.OK, MessageBoxIcon.Error)
    '    End If
    'End Sub
End Class