Imports MySql.Data.MySqlClient
Public Class frmLogIn
    Dim currentuser As String
    Private Sub frmLogIn_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        chkDatabaseConnection()
        txtPassword.Text = ""
        txtusername.Text = ""
    End Sub

    Private Sub btnLogIn_Click(sender As Object, e As EventArgs) Handles btnLogIn.Click
        datRest = New DataTable
        SqlAdapterRest = New MySqlDataAdapter

        Try
            With command
                .Parameters.Clear()
                .CommandText = "procSearchUser"
                .Parameters.AddWithValue("@p_userposition", Trim(cmbUserPosition.Text))
                .Parameters.AddWithValue("@p_username", Trim(txtusername.Text))
                .Parameters.AddWithValue("@p_userpassword", Trim(txtPassword.Text))
                .CommandType = CommandType.StoredProcedure
                SqlAdapterRest.SelectCommand = command
                datRest.Clear()
                SqlAdapterRest.Fill(datRest)
                g_userposition = cmbUserPosition.Text
                If datRest.Rows.Count > 0 Then
                    If g_userposition = "Admin" Then
                        currentuser = datRest.Rows(row).Item("fullname").ToString
                        frmMain.txtCurrentUser.Text = currentuser
                        g_username = txtusername.Text
                        frmMain.Show()
                        frmMain.btn_inventory.Show()
                        frmMain.btn_accounts.Show()
                        frmMain.btn_logout.Location = New Point(-1, 540)
                        frmMain.btn_sales.Location = New Point(-1, 400)
                        frmMain.btn_inventory.PerformClick()
                        frmMain.btn_sales.PerformClick()
                        frmMain.btn_dash.PerformClick()
                    Else
                        currentuser = datRest.Rows(row).Item("fullname").ToString
                        frmMain.txtCurrentUser.Text = currentuser
                        g_username = txtusername.Text
                        frmMain.Show()
                        frmMain.btn_inventory.Hide()
                        frmMain.btn_accounts.Hide()
                        frmMain.btn_sales.Location = New Point(-1, 330)
                        frmMain.btn_logout.Location = New Point(-1, 400)
                        frmMain.btn_inventory.PerformClick()
                        frmMain.btn_sales.PerformClick()
                        frmMain.btn_dash.PerformClick()
                    End If
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

    Private Sub cmbUser_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cmbUserPosition.SelectedIndexChanged

    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Me.Dispose()
        frmMain.Dispose()
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