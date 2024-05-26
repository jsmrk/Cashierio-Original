Imports MySql.Data.MySqlClient
Public Class frmCustomer

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        chkDatabaseConnection()
        txtlastname.Focus()
        Me.Height = 565
        Me.Width = 870
    End Sub

    Private Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        Try
            If action = "Insert" Then
                With command
                    .Parameters.Clear() 'clear command parameters
                    .CommandText = "ProcInsertCustomer" 'call stored procedure from mysql
                    .CommandType = CommandType.StoredProcedure
                    .Parameters.AddWithValue("@p_lastname", txtlastname.Text)
                    .Parameters.AddWithValue("@p_firstname", txtFirstname.Text)
                    .Parameters.AddWithValue("@p_middlename", txtmiddlename.Text)
                    .Parameters.AddWithValue("@p_gender", cmbGender.Text)
                    .Parameters.AddWithValue("@p_address", txtAddress.Text)
                    .Parameters.AddWithValue("@p_emailadd", txtEmailAdd.Text)
                    .Parameters.AddWithValue("@p_mobileno", txtMobileNo.Text)
                    .Parameters.AddWithValue("@p_custpic", customerPhotoPath)
                    .ExecuteNonQuery()
                End With
            Else
                With command
                    .Parameters.Clear() 'clear command parameters
                    .CommandText = "prcUpdateCustomerByID" 'call stored procedure from mysql
                    .CommandType = CommandType.StoredProcedure
                    .Parameters.AddWithValue("@p_id", tempcusid)
                    .Parameters.AddWithValue("@p_lastname", txtlastname.Text)
                    .Parameters.AddWithValue("@p_firstname", txtFirstname.Text)
                    .Parameters.AddWithValue("@p_middlename", txtmiddlename.Text)
                    .Parameters.AddWithValue("@p_gender", cmbGender.Text)
                    .Parameters.AddWithValue("@p_address", txtAddress.Text)
                    .Parameters.AddWithValue("@p_emailadd", txtEmailAdd.Text)
                    .Parameters.AddWithValue("@p_mobileno", txtMobileNo.Text)
                    .Parameters.AddWithValue("@p_custpic", customerPhotoPath)
                    .ExecuteNonQuery()
                End With
            End If

            MessageBox.Show("Record Successfully Save", "Save Record", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Me.Dispose()
        Catch ex As Exception
            MessageBox.Show("" + ex.Message)
        End Try
    End Sub

    Private Sub btnBrowse_Click(sender As Object, e As EventArgs) Handles btnBrowse.Click
        Try
            With OpenFileDialog1
                .Title = "Select Customer Picture"
                .FileName = ""
                If .ShowDialog = System.Windows.Forms.DialogResult.OK Then
                    picCustomer.Image = Image.FromFile(.FileName)
                    customerPhotoPath = .FileName
                End If
            End With
        Catch ex As Exception
            MessageBox.Show("" + ex.Message)
        End Try
    End Sub

    Private Sub btnExit_Click(sender As Object, e As EventArgs) Handles btnExit.Click
        Me.Dispose()
    End Sub

End Class
