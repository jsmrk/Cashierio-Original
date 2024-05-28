Imports MySql.Data.MySqlClient
Imports System.Drawing
Imports System.IO
Imports System.Diagnostics

Public Class frmMain
    Dim cid As Integer
    Dim itemname As String
    Dim stock As Integer
    Dim cost As Double
    Dim itemprice As Double
    Dim itemDT As String
    Dim isStrongPass As Boolean


    '////Cashier Variables
    Dim Ccid As Integer
    Dim Citemname As String
    Dim Cstock As Integer
    Dim Ccost As Double
    Dim Citemprice As Double
    Dim g_itemname As String
    Dim qtyvalue As Integer
    Dim deducted As Integer


    Private Sub frmMenu_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        chkDatabaseConnection()
        Timer1.Enabled = True
        'frmLogIn.ShowDialog()
        btn_dash.PerformClick()
        procDisplayDailySale()
        procDisplayMonthlySale()
        procDisplayYearlySale()
        pnldeleteorder.Visible = False

    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        lblDateTime.Text = Date.Now.ToString("dd-MM-yyyy hh:mm:ss")
        lblitemDT.Text = Date.Now.ToString("dd-MM-yyyy hh:mm:ss")
    End Sub

    'SIDE PANEL ///////////////////////////////////////////////////////////////////////////////////////////////////
    Private Sub btn_dash_Click(sender As Object, e As EventArgs) Handles btn_dash.Click
        pnlOnButtonPosition.Height = btn_dash.Height
        pnlOnButtonPosition.Top = btn_dash.Top

        btn_dash.BackColor = SystemColors.Control
        btn_cashier.BackColor = Color.Transparent
        btn_inventory.BackColor = Color.Transparent
        btn_sales.BackColor = Color.Transparent
        btn_logs.BackColor = Color.Transparent
        btn_accounts.BackColor = Color.Transparent

        procDisplayYearlySale()
        procDisplayMonthlySale()
        procDisplayDailySale()

        pnl_dashboard.Visible = True
        pnl_cashier.Visible = False
        pnl_inventory.Visible = False
        pnl_sales.Visible = False
        pnl_logs.Visible = False
        pnl_accounts.Visible = False

        notif()
    End Sub

    Private Sub btn_cashier_Click(sender As Object, e As EventArgs) Handles btn_cashier.Click
        pnlOnButtonPosition.Height = btn_cashier.Height
        pnlOnButtonPosition.Top = btn_cashier.Top

        btn_dash.BackColor = Color.Transparent
        btn_cashier.BackColor = SystemColors.Control
        btn_inventory.BackColor = Color.Transparent
        btn_sales.BackColor = Color.Transparent
        btn_logs.BackColor = Color.Transparent
        btn_accounts.BackColor = Color.Transparent

        procDisplayItemsInCashier()
        pnldeleteorder.Visible = False

        pnl_dashboard.Visible = False
        pnl_cashier.Visible = True
        pnl_inventory.Visible = False
        pnl_sales.Visible = False
        pnl_logs.Visible = False
        pnl_accounts.Visible = False
    End Sub

    Private Sub btn_inventory_Click(sender As Object, e As EventArgs) Handles btn_inventory.Click
        pnlOnButtonPosition.Height = btn_inventory.Height
        pnlOnButtonPosition.Top = btn_inventory.Top

        btn_dash.BackColor = Color.Transparent
        btn_cashier.BackColor = Color.Transparent
        btn_inventory.BackColor = SystemColors.Control
        btn_sales.BackColor = Color.Transparent
        btn_logs.BackColor = Color.Transparent
        btn_accounts.BackColor = Color.Transparent

        pnl_additem.Visible = False

        procDisplayInventory()

        pnl_dashboard.Visible = False
        pnl_cashier.Visible = False
        pnl_inventory.Visible = True
        pnl_sales.Visible = False
        pnl_logs.Visible = False
        pnl_accounts.Visible = False
    End Sub

    Private Sub btn_sales_Click(sender As Object, e As EventArgs) Handles btn_sales.Click
        pnlOnButtonPosition.Height = btn_sales.Height
        pnlOnButtonPosition.Top = btn_sales.Top

        btn_dash.BackColor = Color.Transparent
        btn_cashier.BackColor = Color.Transparent
        btn_inventory.BackColor = Color.Transparent
        btn_sales.BackColor = SystemColors.Control
        btn_logs.BackColor = Color.Transparent
        btn_accounts.BackColor = Color.Transparent

        procDisplaySalesRecords()
        procDisplayYearlySale()
        procDisplayMonthlySale()
        procDisplayDailySale()
        calculateSalesRecords()

        pnl_dashboard.Visible = False
        pnl_cashier.Visible = False
        pnl_inventory.Visible = False
        pnl_sales.Visible = True
        pnl_logs.Visible = False
        pnl_accounts.Visible = False

        countrecords()
    End Sub

    Private Sub btn_accounts_Click(sender As Object, e As EventArgs) Handles btn_accounts.Click
        pnlOnButtonPosition.Height = btn_accounts.Height
        pnlOnButtonPosition.Top = btn_accounts.Top

        btn_dash.BackColor = Color.Transparent
        btn_cashier.BackColor = Color.Transparent
        btn_inventory.BackColor = Color.Transparent
        btn_sales.BackColor = Color.Transparent
        btn_logs.BackColor = Color.Transparent
        btn_accounts.BackColor = SystemColors.Control

        procDisplayAllUsers()

        pnl_AddUser.Visible = False
        pnl_dashboard.Visible = False
        pnl_cashier.Visible = False
        pnl_inventory.Visible = False
        pnl_sales.Visible = False
        pnl_logs.Visible = False
        pnl_accounts.Visible = True
    End Sub

    Private Sub picMaximize_Click(sender As Object, e As EventArgs) Handles picMaximize.Click
        Me.Dispose()
        frmLogIn.Dispose()
    End Sub

    Private Sub btn_logout_Click(sender As Object, e As EventArgs)
        Me.Visible = False
        frmLogIn.Visible = True
        frmLogIn.txtPassword.Text = ""
        frmLogIn.txtusername.Text = ""
        frmLogIn.cmbUserPosition.Text = ""
    End Sub

    'USERS TAB =============================================================================================================================================================='
    'USERS TAB =============================================================================================================================================================='

    Private Sub procClearAddUser()
        cmbPosition.Text = ""
        txtlastname.Text = ""
        txtFirstname.Text = ""
        txtmiddlename.Text = ""
        cmbGender.Text = ""
        txtAddress.Text = ""
        txtEmailAdd.Text = ""
        txtMobileNo.Text = ""
        txtUsername.Text = ""
        txtPassword.Text = ""
        txtretypepassword.Text = ""
    End Sub

    Private Sub procDisplayAllUsers()
        datRest = New DataTable
        SqlAdapterRest = New MySqlDataAdapter
        Try
            With command
                .Parameters.Clear()
                .CommandText = "procDisplayAllUsers"
                .CommandType = CommandType.StoredProcedure
                SqlAdapterRest.SelectCommand = command
                datRest.Clear()
                SqlAdapterRest.Fill(datRest)
                lbltotalusers.Text = "Total Records :" & datRest.Rows.Count
                If datRest.Rows.Count > 0 Then
                    dgUsers.RowCount = datRest.Rows.Count
                    row = 0
                    While Not datRest.Rows.Count - 1 < row
                        With dgUsers
                            .Rows(row).Cells(0).Value = datRest.Rows(row).Item("id").ToString
                            .Rows(row).Cells(1).Value = datRest.Rows(row).Item("UserPosition").ToString
                            .Rows(row).Cells(2).Value = datRest.Rows(row).Item("Fullname").ToString
                            .Rows(row).Cells(3).Value = datRest.Rows(row).Item("Gender").ToString
                            .Rows(row).Cells(4).Value = datRest.Rows(row).Item("Address").ToString
                            .Rows(row).Cells(5).Value = datRest.Rows(row).Item("Emailadd").ToString
                            .Rows(row).Cells(6).Value = datRest.Rows(row).Item("Mobileno").ToString
                            .Rows(row).Cells(7).Value = datRest.Rows(row).Item("Username").ToString
                        End With
                        row = row + 1
                    End While
                Else
                    dgUsers.Rows.Clear()
                    MessageBox.Show("NO Record Found!", "Record Status", MessageBoxButtons.OK, MessageBoxIcon.Exclamation)
                End If
            End With
            datRest.Dispose()
            SqlAdapterRest.Dispose()
        Catch ex As Exception
            MessageBox.Show("" + ex.Message)
        End Try

    End Sub


    Private Sub btn_saveuser_Click(sender As Object, e As EventArgs) Handles btn_saveuser.Click
        Dim isStrongPass As Boolean = CheckPasswordStrength(txtPassword.Text)

        If txtPassword.Text = txtretypepassword.Text AndAlso isStrongPass Then
            Try
                ' Hash the password using SHA-256
                Dim hashedPassword As String = HashPassword(txtPassword.Text)

                With command
                    .Parameters.Clear() ' Clear command parameters
                    .CommandText = "ProcInsertUser" ' Call stored procedure from MySQL
                    .CommandType = CommandType.StoredProcedure
                    .Parameters.AddWithValue("@p_userposition", cmbPosition.Text)
                    .Parameters.AddWithValue("@p_lastname", txtlastname.Text)
                    .Parameters.AddWithValue("@p_firstname", txtFirstname.Text)
                    .Parameters.AddWithValue("@p_middlename", txtmiddlename.Text)
                    .Parameters.AddWithValue("@p_gender", cmbGender.Text)
                    .Parameters.AddWithValue("@p_address", txtAddress.Text)
                    .Parameters.AddWithValue("@p_emailadd", txtEmailAdd.Text)
                    .Parameters.AddWithValue("@p_mobileno", txtMobileNo.Text)
                    .Parameters.AddWithValue("@p_username", txtUsername.Text)
                    .Parameters.AddWithValue("@p_userpassword", hashedPassword)
                    .ExecuteNonQuery()
                End With

                MessageBox.Show("Record Successfully Saved", "Save Record", MessageBoxButtons.OK, MessageBoxIcon.Information)
                pnl_AddUser.Visible = False
            Catch ex As Exception
                MessageBox.Show(ex.Message)
            End Try
            procClearAddUser()
            procDisplayAllUsers()
        ElseIf txtPassword.Text <> txtretypepassword.Text AndAlso isStrongPass Then
            ' Show not match error
            MessageBox.Show("Password Not Match", "Error", MessageBoxButtons.OK, MessageBoxIcon.Information)
        ElseIf Not isStrongPass AndAlso txtPassword.Text = txtretypepassword.Text Then
            ' Show password strength error
            MessageBox.Show("Password Not Strong", "Error", MessageBoxButtons.OK, MessageBoxIcon.Information)
        ElseIf Not isStrongPass AndAlso txtPassword.Text <> txtretypepassword.Text Then
            ' Show both errors
            MessageBox.Show("Password Not Strong & Password Don't Match", "Error", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If
    End Sub


    Private Sub PictureBox4_Click(sender As Object, e As EventArgs) Handles PictureBox4.Click
        pnl_AddUser.Visible = False
    End Sub

    Private Sub btn_AddUser_Click(sender As Object, e As EventArgs) Handles btn_AddUser.Click
        procClearAddUser()
        pnl_AddUser.Visible = True
        pnl_AddUser.BringToFront()
    End Sub



    Private Sub btn_DeleteUser_Click(sender As Object, e As EventArgs) Handles btn_DeleteUser.Click
        Try
            With command
                .Parameters.Clear()
                .CommandText = "procDeleteUser"
                .CommandType = CommandType.StoredProcedure
                .Parameters.AddWithValue("@p_id", CInt(dgUsers.CurrentRow.Cells(0).Value))
                .ExecuteNonQuery()
                MessageBox.Show("Record Successfully Deleted!", "Record Status", MessageBoxButtons.OK, MessageBoxIcon.Exclamation)
            End With
            'refresh/reload customer records in datagridview
            procDisplayAllUsers()
        Catch ex As Exception
            MessageBox.Show("" + ex.Message)
        End Try
    End Sub

    'INVENTORY TAB =============================================================================================================================================================='
    'INVENTORY TAB =============================================================================================================================================================='

    Private Sub procDisplayInventory()
        datRest = New DataTable
        SqlAdapterRest = New MySqlDataAdapter
        Try
            With command
                .Parameters.Clear()
                .CommandText = "procDisplayInventory"
                .CommandType = CommandType.StoredProcedure
                SqlAdapterRest.SelectCommand = command
                datRest.Clear()
                SqlAdapterRest.Fill(datRest)
                lbltotalusers.Text = "Total Records :" & datRest.Rows.Count
                If datRest.Rows.Count > 0 Then
                    dgInventory.RowCount = datRest.Rows.Count
                    row = 0
                    While Not datRest.Rows.Count - 1 < row
                        With dgInventory
                            .Rows(row).Cells(0).Value = datRest.Rows(row).Item("id").ToString
                            .Rows(row).Cells(1).Value = datRest.Rows(row).Item("itemname").ToString
                            .Rows(row).Cells(2).Value = datRest.Rows(row).Item("stock").ToString
                            .Rows(row).Cells(3).Value = datRest.Rows(row).Item("cost").ToString
                            .Rows(row).Cells(4).Value = datRest.Rows(row).Item("price").ToString
                            .Rows(row).Cells(5).Value = datRest.Rows(row).Item("lastupdated").ToString
                        End With
                        row = row + 1
                    End While
                Else
                    dgInventory.Rows.Clear()
                    MessageBox.Show("NO Record Found!", "Record Status", MessageBoxButtons.OK, MessageBoxIcon.Exclamation)
                End If
            End With
            datRest.Dispose()
            SqlAdapterRest.Dispose()
        Catch ex As Exception
            MessageBox.Show("" + ex.Message)
        End Try

    End Sub

    Private Sub clearAddItem()
        txtItemName.Text = ""
        txtStock.Text = ""
        txtCost.Text = ""
        txtPrice.Text = ""
    End Sub

    Private Sub procUpdateItem()
        datRest = New DataTable
        SqlAdapterRest = New MySqlDataAdapter
        Try
            With command
                .Parameters.Clear()
                .CommandText = "procUpdateItem"
                .CommandType = CommandType.StoredProcedure
                .Parameters.AddWithValue("@p_id", CInt(dgInventory.CurrentRow.Cells(0).Value))
                SqlAdapterRest.SelectCommand = command
                datRest.Clear()
                SqlAdapterRest.Fill(datRest)
                If datRest.Rows.Count > 0 Then

                    cid = CInt(datRest.Rows(0).Item("id").ToString)
                    itemname = datRest.Rows(0).Item("itemname").ToString
                    stock = CInt(datRest.Rows(0).Item("stock").ToString)
                    cost = CDbl(datRest.Rows(0).Item("cost").ToString)
                    itemprice = CDbl(datRest.Rows(0).Item("price").ToString)

                Else
                    MessageBox.Show("NO Record Found!", "Record Status", MessageBoxButtons.OK, MessageBoxIcon.Exclamation)
                End If
            End With
            datRest.Dispose()
            SqlAdapterRest.Dispose()
        Catch ex As Exception
            MessageBox.Show("" + ex.Message)
        End Try
    End Sub

    Private Sub procSearchInventory(ByVal p_searchtype As String, ByVal p_searhText As String)
        datRest = New DataTable
        SqlAdapterRest = New MySqlDataAdapter
        Try
            With command
                .Parameters.Clear()
                .CommandText = "procSearchInventory"
                .CommandType = CommandType.StoredProcedure
                .Parameters.AddWithValue("@p_searchtype", p_searchtype)
                .Parameters.AddWithValue("@p_value", p_searhText)
                SqlAdapterRest.SelectCommand = command
                datRest.Clear()
                SqlAdapterRest.Fill(datRest)
                lbltotalusers.Text = "Total Records :" & datRest.Rows.Count
                If datRest.Rows.Count > 0 Then
                    dgInventory.RowCount = datRest.Rows.Count
                    row = 0
                    While Not datRest.Rows.Count - 1 < row
                        With dgInventory
                            .Rows(row).Cells(0).Value = datRest.Rows(row).Item("id").ToString
                            .Rows(row).Cells(1).Value = datRest.Rows(row).Item("itemname").ToString
                            .Rows(row).Cells(2).Value = datRest.Rows(row).Item("stock").ToString
                            .Rows(row).Cells(3).Value = datRest.Rows(row).Item("cost").ToString
                            .Rows(row).Cells(4).Value = datRest.Rows(row).Item("price").ToString
                            .Rows(row).Cells(5).Value = datRest.Rows(row).Item("lastupdated").ToString
                        End With
                        row = row + 1
                    End While
                Else
                    dgInventory.Rows.Clear()
                End If
            End With

            datRest.Dispose()
            SqlAdapterRest.Dispose()
        Catch ex As Exception
            MessageBox.Show("" + ex.Message)
        End Try

    End Sub

    Private Sub btnAddProd_Click(sender As Object, e As EventArgs) Handles btnAddProd.Click
        lblProductHeader.Text = "Add Product"
        pnl_additem.Visible = True
        pnl_AddUser.BringToFront()
        clearAddItem()
    End Sub

    Private Sub PictureBox1_Click(sender As Object, e As EventArgs) Handles PictureBox1.Click
        pnl_additem.Visible = False
    End Sub

    Private Sub btnAddProduct_Click(sender As Object, e As EventArgs) Handles btnAddProduct.Click

        If lblProductHeader.Text = "Add Product" Then
            Try
                With command
                    .Parameters.Clear() 'clear command parameters
                    .CommandText = "ProcAddProduct" 'call stored procedure from mysql
                    .CommandType = CommandType.StoredProcedure
                    .Parameters.AddWithValue("@p_itemname", txtItemName.Text)
                    .Parameters.AddWithValue("@p_stock", txtStock.Text)
                    .Parameters.AddWithValue("@p_cost", txtCost.Text)
                    .Parameters.AddWithValue("@p_price", txtPrice.Text)
                    .Parameters.AddWithValue("@p_itemDT", lblitemDT.Text)
                    .ExecuteNonQuery()
                End With


                MessageBox.Show("Record Successfully Save", "Save Record", MessageBoxButtons.OK, MessageBoxIcon.Information)
                pnl_additem.Visible = False
            Catch ex As Exception
                MessageBox.Show("" + ex.Message)
            End Try
            procDisplayInventory()
            clearAddItem()
        ElseIf lblProductHeader.Text = "Update Product" Then
            Try
                With command
                    .Parameters.Clear() 'clear command parameters
                    .CommandText = "procSaveUpdateItem" 'call stored procedure from mysql 
                    .CommandType = CommandType.StoredProcedure
                    .Parameters.AddWithValue("@p_id", CInt(dgInventory.CurrentRow.Cells(0).Value))
                    .Parameters.AddWithValue("@p_itemname", txtItemName.Text)
                    .Parameters.AddWithValue("@p_stock", txtStock.Text)
                    .Parameters.AddWithValue("@p_cost", txtCost.Text)
                    .Parameters.AddWithValue("@p_price", txtPrice.Text)
                    .Parameters.AddWithValue("@p_itemDT", lblitemDT.Text)
                    .ExecuteNonQuery()
                End With


                MessageBox.Show("Record Successfully Save", "Save Record", MessageBoxButtons.OK, MessageBoxIcon.Information)
                pnl_additem.Visible = False
            Catch ex As Exception
                MessageBox.Show("" + ex.Message)
            End Try
            procDisplayInventory()
            clearAddItem()
        End If

    End Sub

    Private Sub btnDeleteItem_Click(sender As Object, e As EventArgs) Handles btnDeleteItem.Click
        Try
            With command
                .Parameters.Clear()
                .CommandText = "procDeleteItem"
                .CommandType = CommandType.StoredProcedure
                .Parameters.AddWithValue("@p_id", CInt(dgInventory.CurrentRow.Cells(0).Value))
                .ExecuteNonQuery()
                MessageBox.Show("Record Successfully Deleted!", "Record Status", MessageBoxButtons.OK, MessageBoxIcon.Exclamation)
            End With
            'refresh/reload customer records in datagridview
            procDisplayInventory()
        Catch ex As Exception
            MessageBox.Show("" + ex.Message)
        End Try
    End Sub

    Private Sub ClearAddItem_Click(sender As Object, e As EventArgs) Handles btnClearAddItem.Click
        clearAddItem()
    End Sub

    Private Sub UpdateItem_Click(sender As Object, e As EventArgs) Handles btnUpdateItem.Click
        action = "Edit"

        lblProductHeader.Text = "Update Product"
        pnl_additem.Visible = True
        pnl_AddUser.BringToFront()
        clearAddItem()

        procUpdateItem()

        txtItemName.Text = itemname
        txtStock.Text = stock
        txtCost.Text = cost
        txtPrice.Text = itemprice

    End Sub

    Private Sub txtsearchinventory_TextChanged(sender As Object, e As EventArgs) Handles txtsearchinventory.TextChanged
        procSearchInventory("itemname", txtsearchinventory.Text)
    End Sub

    Private Sub procDisplayDailySale()
        Dim totalQty As Integer = 0
        Dim totalSales As Double = 0
        Dim currentdate As DateTime = DateTime.Now.Date
        Dim moddate As String = currentdate.ToString("MM/dd/yyyy")

        For i As Integer = 0 To dgsalesrecords.Rows.Count() - 1 Step +1
            If dgsalesrecords.Rows(i).Cells(5).Value = moddate Then
                totalSales = totalSales + dgsalesrecords.Rows(i).Cells(3).Value
            End If
        Next
        lbldailysale.Text = totalSales.ToString("N2")
    End Sub

    Private Sub procDisplayMonthlySale()
        Dim totalQty As Integer = 0
        Dim totalSales As Double = 0
        Dim currentdate As DateTime = DateTime.Now.Date
        Dim moddate As String = currentdate.ToString("yyyy/MM")

        For i As Integer = 0 To dgsalesrecords.Rows.Count() - 1 Step +1
            Dim saleDate As DateTime = DateTime.ParseExact(dgsalesrecords.Rows(i).Cells(5).Value.ToString(), "MM/dd/yyyy", Nothing)
            If Year(saleDate) = Year(currentdate) AndAlso Month(saleDate) = Month(currentdate) Then
                totalSales = totalSales + dgsalesrecords.Rows(i).Cells(3).Value
            End If
        Next
        lblmonthlysale.Text = totalSales.ToString("N2")
    End Sub

    Private Sub procDisplayYearlySale()
        Dim totalQty As Integer = 0
        Dim totalSales As Double = 0
        Dim currentdate As DateTime = DateTime.Now.Date
        Dim moddate As String = currentdate.ToString("yyyy")

        For i As Integer = 0 To dgsalesrecords.Rows.Count() - 1 Step +1
            Dim saleDate As DateTime = DateTime.ParseExact(dgsalesrecords.Rows(i).Cells(5).Value.ToString(), "MM/dd/yyyy", Nothing)
            If Year(saleDate) = Integer.Parse(moddate) Then
                totalSales = totalSales + dgsalesrecords.Rows(i).Cells(3).Value
            End If
        Next
        lblyearlysale.Text = totalSales.ToString("N2")
    End Sub

    'CASHIER TAB =============================================================================================================================================================='
    'CASHIER TAB =============================================================================================================================================================='
    Private Sub procDisplayItemsInCashier()
        datRest = New DataTable
        SqlAdapterRest = New MySqlDataAdapter
        Try
            With command
                .Parameters.Clear()
                .CommandText = "procDisplayItemsInCashier"
                .CommandType = CommandType.StoredProcedure
                SqlAdapterRest.SelectCommand = command
                datRest.Clear()
                SqlAdapterRest.Fill(datRest)
                lbltotalusers.Text = "Total Records :" & datRest.Rows.Count
                If datRest.Rows.Count > 0 Then
                    dgSelectCashier.RowCount = datRest.Rows.Count
                    row = 0
                    While Not datRest.Rows.Count - 1 < row
                        With dgSelectCashier
                            .Rows(row).Cells(0).Value = datRest.Rows(row).Item("id").ToString
                            .Rows(row).Cells(1).Value = datRest.Rows(row).Item("itemname").ToString
                            .Rows(row).Cells(2).Value = datRest.Rows(row).Item("price").ToString
                            .Rows(row).Cells(3).Value = datRest.Rows(row).Item("stock").ToString
                        End With
                        row = row + 1
                    End While
                Else
                    dgSelectCashier.Rows.Clear()
                    MessageBox.Show("NO Record Found!", "Record Status", MessageBoxButtons.OK, MessageBoxIcon.Exclamation)
                End If
            End With
            datRest.Dispose()
            SqlAdapterRest.Dispose()
        Catch ex As Exception
            MessageBox.Show("" + ex.Message)
        End Try

    End Sub

    Private Sub procSelectItemToBuy()
        datRest = New DataTable
        SqlAdapterRest = New MySqlDataAdapter
        Try
            With command
                .Parameters.Clear()
                .CommandText = "procSelectItemToBuy"
                .CommandType = CommandType.StoredProcedure
                .Parameters.AddWithValue("@p_id", CInt(dgSelectCashier.CurrentRow.Cells(0).Value))
                SqlAdapterRest.SelectCommand = command
                datRest.Clear()
                SqlAdapterRest.Fill(datRest)
                If datRest.Rows.Count > 0 Then

                    Ccid = CInt(datRest.Rows(0).Item("id").ToString)
                    Citemname = datRest.Rows(0).Item("itemname").ToString
                    Cstock = CInt(datRest.Rows(0).Item("stock").ToString)
                    Ccost = CDbl(datRest.Rows(0).Item("cost").ToString)
                    Citemprice = CDbl(datRest.Rows(0).Item("price").ToString)

                Else
                    MessageBox.Show("NO Record Found!", "Record Status", MessageBoxButtons.OK, MessageBoxIcon.Exclamation)
                End If
            End With
            datRest.Dispose()
            SqlAdapterRest.Dispose()
        Catch ex As Exception
            MessageBox.Show("" + ex.Message)
        End Try
    End Sub

    Private Sub procSearchSelectItem(ByVal p_searchtype As String, ByVal p_searhText As String)
        datRest = New DataTable
        SqlAdapterRest = New MySqlDataAdapter
        Try
            With command
                .Parameters.Clear()
                .CommandText = "procSearchSelectItem"
                .CommandType = CommandType.StoredProcedure
                .Parameters.AddWithValue("@p_searchtype", p_searchtype)
                .Parameters.AddWithValue("@p_value", p_searhText)
                SqlAdapterRest.SelectCommand = command
                datRest.Clear()
                SqlAdapterRest.Fill(datRest)
                lbltotalusers.Text = "Total Records :" & datRest.Rows.Count
                If datRest.Rows.Count > 0 Then
                    dgSelectCashier.RowCount = datRest.Rows.Count
                    row = 0
                    While Not datRest.Rows.Count - 1 < row
                        With dgSelectCashier
                            .Rows(row).Cells(0).Value = datRest.Rows(row).Item("id").ToString
                            .Rows(row).Cells(1).Value = datRest.Rows(row).Item("itemname").ToString
                            .Rows(row).Cells(2).Value = datRest.Rows(row).Item("price").ToString
                            .Rows(row).Cells(3).Value = datRest.Rows(row).Item("stock").ToString
                        End With
                        row = row + 1
                    End While
                Else
                    dgSelectCashier.Rows.Clear()
                End If
            End With

            datRest.Dispose()
            SqlAdapterRest.Dispose()
        Catch ex As Exception
            MessageBox.Show("" + ex.Message)
        End Try

    End Sub

    Public Sub totalOrder() 'Sum The Total Order
        Dim sumOrder As Integer = 0
        For i As Integer = 0 To dgCashier.Rows.Count() - 1 Step +1
            sumOrder = sumOrder + dgCashier.Rows(i).Cells(2).Value
        Next
        lbltotalorder.Text = sumOrder.ToString()
    End Sub

    Private Sub dgSelectCashier_CellClick(sender As Object, e As DataGridViewCellEventArgs) Handles dgSelectCashier.CellClick
        procSelectItemToBuy()
        txtSelectedItem.Text = Citemname
        pnlQTY.Visible = True
        txtSelectQty.Text = "1"
        pnlQTY.BringToFront()
    End Sub

    Private Sub btnCancelSelectItem_Click(sender As Object, e As EventArgs) Handles btnCancelSelectItem.Click
        pnlQTY.Visible = False
        txtSelectQty.Text = "1"
    End Sub

    Private Sub btnConfirmSelectItem_Click(sender As Object, e As EventArgs) Handles btnConfirmSelectItem.Click
        If CDbl(txtSelectQty.Text) <= Cstock Then
            dgCashier.Rows.Add(txtSelectQty.Text, Citemname, Citemprice * CDbl(txtSelectQty.Text), DateTime.Now.ToString("HH:mm:ss"), DateTime.Now.ToString("MM/dd/yyyy"))
            txtSelectQty.Text = "1"
            pnlQTY.Visible = False
            totalOrder()
        Else
            MessageBox.Show("Quantity more than the stock Available", "Invalid Quantity", MessageBoxButtons.OK, MessageBoxIcon.Information)
            txtSelectQty.Text = "1"
        End If
    End Sub

    Private Sub txtSearchSelectItem_TextChanged(sender As Object, e As EventArgs) Handles txtSearchSelectItem.TextChanged
        procSearchSelectItem("itemname", txtSearchSelectItem.Text)
    End Sub

    Private Sub calculatechange()
        If txtCash.Text = "" Then
            lblchange.Text = "0"
            lblchange.ForeColor = Color.Black
            txtCash.BackColor = SystemColors.Control
        ElseIf txtCash.Text >= CDbl(lbltotalorder.Text) Then
            lblchange.Text = CDbl(txtCash.Text) - lbltotalorder.Text
            lblchange.ForeColor = Color.Black
            txtCash.BackColor = SystemColors.Control
        Else
            txtCash.BackColor = Color.Red
            lblchange.ForeColor = Color.Red
        End If

    End Sub

    Private Sub txtCash_TextChanged(sender As Object, e As EventArgs) Handles txtCash.TextChanged
        calculatechange()
    End Sub

    Private Sub btnClearOrders_Click(sender As Object, e As EventArgs) Handles btnClearOrders.Click

        pnldeleteorder.Visible = True
        lblTypeOfDel.Text = "Clear Order"
        DisableControlsOutsidePanel(pnldeleteorder)

    End Sub

    Private Sub procDeductStock()
        Try
            For Each row As DataGridViewRow In dgCashier.Rows
                Dim productName As String = row.Cells(1).Value.ToString()
                Dim quantitySold As Integer = CInt(row.Cells(0).Value)
                With command
                    .Parameters.Clear()
                    .CommandText = "procUpdateStock"
                    .CommandType = CommandType.StoredProcedure
                    .Parameters.AddWithValue("@p_itemname", productName)
                    .Parameters.AddWithValue("@p_stock", quantitySold)
                    command.ExecuteNonQuery()
                End With
            Next
            MessageBox.Show("Stock updated successfully.")
        Catch ex As Exception
            MessageBox.Show("" + ex.Message)
        End Try
        procDisplayItemsInCashier()
    End Sub

    Private Sub procAddtoSalesTable()
        action = "Insert"
        Try
            If action = "Insert" Then
                For i = 0 To dgCashier.RowCount - 1
                    With command
                        .Parameters.Clear() 'clear command parameters
                        .CommandText = "procInsertSalesRecords" 'call stored procedure from mysql
                        .CommandType = CommandType.StoredProcedure
                        .Parameters.AddWithValue("@p_qty", CInt(dgCashier.Rows(i).Cells(0).Value.ToString))
                        .Parameters.AddWithValue("@p_itemname", dgCashier.Rows(i).Cells(1).Value.ToString)
                        .Parameters.AddWithValue("@p_price", CDbl(dgCashier.Rows(i).Cells(2).Value.ToString))
                        .Parameters.AddWithValue("@p_timenow", dgCashier.Rows(i).Cells(3).Value.ToString)
                        .Parameters.AddWithValue("@p_datenow", dgCashier.Rows(i).Cells(4).Value.ToString)
                        .Parameters.AddWithValue("@p_transactuser", txtCurrentUser.Text)
                        .ExecuteNonQuery()
                    End With
                Next
            End If

            MessageBox.Show("Record Successfully Save", "Paid Successfully", MessageBoxButtons.OK, MessageBoxIcon.Information)
        Catch ex As Exception
            MessageBox.Show("" + ex.Message)
        End Try
    End Sub
    Private Sub btnPay_Click(sender As Object, e As EventArgs) Handles btnPay.Click

        procAddtoSalesTable()
        procDeductStock()

        change = lblchange.Text
        cash = txtCash.Text
        totalprice = lbltotalorder.Text

        CashierToReceipt(dgCashier, dgReceipt)
        lblrtotal.Text = lbltotalorder.Text
        lblrcash.Text = txtCash.Text
        lblrchange.Text = lblrchange.Text
        pnlReceipt.BringToFront()
        saveReceiptPNG()

        dgCashier.Rows.Clear()
        txtCash.Text = 0
        lblchange.Text = 0
        lbltotalorder.Text = 0
        txtSearchSelectItem.Text = ""

        lblchange.ForeColor = Color.Black
        txtCash.BackColor = SystemColors.Control

    End Sub
    Private Sub procDisplaySalesRecords()
        datRest = New DataTable
        SqlAdapterRest = New MySqlDataAdapter
        Try
            With command
                .Parameters.Clear()
                .CommandText = "procDisplaySalesRecords"
                .CommandType = CommandType.StoredProcedure
                SqlAdapterRest.SelectCommand = command
                datRest.Clear()
                SqlAdapterRest.Fill(datRest)
                lbltotalusers.Text = datRest.Rows.Count
                If datRest.Rows.Count > 0 Then
                    dgsalesrecords.RowCount = datRest.Rows.Count
                    row = 0
                    While Not datRest.Rows.Count - 1 < row
                        With dgsalesrecords
                            .Rows(row).Cells(0).Value = datRest.Rows(row).Item("id").ToString
                            .Rows(row).Cells(1).Value = datRest.Rows(row).Item("itemname").ToString
                            .Rows(row).Cells(2).Value = datRest.Rows(row).Item("qty").ToString
                            .Rows(row).Cells(3).Value = datRest.Rows(row).Item("price").ToString
                            .Rows(row).Cells(4).Value = datRest.Rows(row).Item("timenow").ToString
                            .Rows(row).Cells(5).Value = datRest.Rows(row).Item("datenow").ToString
                            .Rows(row).Cells(6).Value = datRest.Rows(row).Item("transactuser").ToString
                        End With
                        row = row + 1
                    End While
                Else
                    dgsalesrecords.Rows.Clear()
                    MessageBox.Show("NO Record Found!", "Record Status", MessageBoxButtons.OK, MessageBoxIcon.Exclamation)
                End If
            End With
            datRest.Dispose()
            SqlAdapterRest.Dispose()
        Catch ex As Exception
            MessageBox.Show("" + ex.Message)
        End Try

    End Sub

    Private Sub procSearchSales(ByVal p_searchtype As String, ByVal p_searhText As String)
        datRest = New DataTable
        SqlAdapterRest = New MySqlDataAdapter
        Try
            With command
                .Parameters.Clear()
                .CommandText = "procSearchSales"
                .CommandType = CommandType.StoredProcedure
                .Parameters.AddWithValue("@p_searchtype", p_searchtype)
                .Parameters.AddWithValue("@p_value", p_searhText)
                SqlAdapterRest.SelectCommand = command
                datRest.Clear()
                SqlAdapterRest.Fill(datRest)
                lbltotalusers.Text = datRest.Rows.Count
                If datRest.Rows.Count > 0 Then
                    dgsalesrecords.RowCount = datRest.Rows.Count
                    row = 0
                    While Not datRest.Rows.Count - 1 < row
                        With dgsalesrecords
                            .Rows(row).Cells(0).Value = datRest.Rows(row).Item("id").ToString
                            .Rows(row).Cells(1).Value = datRest.Rows(row).Item("itemname").ToString
                            .Rows(row).Cells(2).Value = datRest.Rows(row).Item("qty").ToString
                            .Rows(row).Cells(3).Value = datRest.Rows(row).Item("price").ToString
                            .Rows(row).Cells(4).Value = datRest.Rows(row).Item("timenow").ToString
                            .Rows(row).Cells(5).Value = datRest.Rows(row).Item("datenow").ToString
                            .Rows(row).Cells(6).Value = datRest.Rows(row).Item("transactuser").ToString
                        End With
                        row = row + 1
                    End While
                Else
                    dgsalesrecords.Rows.Clear()
                    MessageBox.Show("NO Record Found!", "Record Status", MessageBoxButtons.OK, MessageBoxIcon.Exclamation)
                End If
            End With

            datRest.Dispose()
            SqlAdapterRest.Dispose()
        Catch ex As Exception
            MessageBox.Show("" + ex.Message)
        End Try
        calculateSalesRecords()
    End Sub

    Public Sub calculateSalesRecords() 'Calculate TotalRecords, TotalQty and Total Sales
        Dim totalQty As Integer = 0
        Dim totalSales As Integer = 0

        For i As Integer = 0 To dgsalesrecords.Rows.Count() - 1 Step +1
            totalQty = totalQty + dgsalesrecords.Rows(i).Cells(2).Value
            totalSales = totalSales + dgsalesrecords.Rows(i).Cells(3).Value
        Next
        lblTotalQty.Text = totalQty.ToString()
        lblTotalSales.Text = totalSales.ToString("₱###,###,###.00")
    End Sub

    Private Sub txtsearchSales_TextChanged_1(sender As Object, e As EventArgs) Handles txtsearchSales.TextChanged
        procSearchSales("itemname", txtsearchSales.Text)
    End Sub

    Private Sub procSearchRecordsByDate(ByVal p_fromdate As String, ByVal p_todate As String, ByVal p_itemname As String)
        datRest = New DataTable
        SqlAdapterRest = New MySqlDataAdapter
        Try
            With command
                .Parameters.Clear()
                .CommandText = "procSearchRecordsByDate"
                .CommandType = CommandType.StoredProcedure
                .Parameters.AddWithValue("@p_fromdate", p_fromdate)
                .Parameters.AddWithValue("@p_todate", p_todate)
                .Parameters.AddWithValue("@p_itemname", p_itemname)
                SqlAdapterRest.SelectCommand = command
                datRest.Clear()
                SqlAdapterRest.Fill(datRest)
                lblRowCountRecords.Text = datRest.Rows.Count
                If datRest.Rows.Count > 0 Then
                    dgsalesrecords.RowCount = datRest.Rows.Count
                    row = 0
                    While Not datRest.Rows.Count - 1 < row
                        With dgsalesrecords
                            .Rows(row).Cells(0).Value = datRest.Rows(row).Item("id").ToString
                            .Rows(row).Cells(1).Value = datRest.Rows(row).Item("itemname").ToString
                            .Rows(row).Cells(2).Value = datRest.Rows(row).Item("qty").ToString
                            .Rows(row).Cells(3).Value = datRest.Rows(row).Item("price").ToString
                            .Rows(row).Cells(4).Value = datRest.Rows(row).Item("timenow").ToString
                            .Rows(row).Cells(5).Value = datRest.Rows(row).Item("datenow").ToString
                            .Rows(row).Cells(6).Value = datRest.Rows(row).Item("transactuser").ToString
                        End With
                        row = row + 1
                    End While
                Else
                    dgsalesrecords.Rows.Clear()
                    MessageBox.Show("NO Record Found!", "Record Status", MessageBoxButtons.OK, MessageBoxIcon.Exclamation)
                End If
            End With

            datRest.Dispose()
            SqlAdapterRest.Dispose()
        Catch ex As Exception
            MessageBox.Show("" + ex.Message)
        End Try

    End Sub

    Private Sub btnSearchRecords_Click(sender As Object, e As EventArgs) Handles btnSearchRecords.Click
        procSearchRecordsByDate(fromDate.Value, toDate.Value, txtsearchSales.Text)
        calculateSalesRecords()
    End Sub

    Private Sub PictureBox2_Click(sender As Object, e As EventArgs) Handles PictureBox2.Click
        pnlReceipt.Hide()
    End Sub

    Private Sub saveReceiptPNG()
        ' Create a Bitmap with the size of the panel
        Dim bitmap As New Bitmap(pnlReceipt.Width, pnlReceipt.Height)

        ' Create a Graphics object from the Bitmap
        Using graphics As Graphics = Graphics.FromImage(bitmap)
            ' Copy the contents of the panel to the Bitmap
            graphics.CopyFromScreen(pnlReceipt.PointToScreen(Point.Empty), Point.Empty, pnlReceipt.Size)
        End Using

        ' Get the current date and time
        Dim currentDate As String = DateTime.Now.ToString("yyyyMMdd_HHmmss")

        ' Set the file path with the current date and time
        Dim filePath As String = $"C:\Users\alex aninon\Downloads\Cashierio v2\CASHIERIO_FINAL\CASHIERIO\CASHIERIO\FrancosSys\Receipts\{currentDate}.png"

        ' Save the Bitmap as a PNG file
        bitmap.Save(filePath, System.Drawing.Imaging.ImageFormat.Png)

        ' Dispose the Bitmap
        bitmap.Dispose()


    End Sub

    Private Sub CashierToReceipt(dgCashier As DataGridView, dgReceipt As DataGridView)
        ' Clear the destination grid
        dgReceipt.Rows.Clear()

        ' Copy rows from source grid to destination grid
        For Each row As DataGridViewRow In dgCashier.Rows
            ' Create a new row in the destination grid
            Dim newRow As DataGridViewRow = DirectCast(row.Clone(), DataGridViewRow)

            ' Copy cell values from source row to destination row
            For i As Integer = 0 To row.Cells.Count - 1
                newRow.Cells(i).Value = row.Cells(i).Value
            Next

            ' Add the new row to the destination grid
            dgReceipt.Rows.Add(newRow)
        Next

    End Sub

    Private Sub txtCash_KeyPress(sender As Object, e As KeyPressEventArgs) Handles txtCash.KeyPress
        ' Check if the pressed key is a numeric digit or a control character
        If Not Char.IsControl(e.KeyChar) AndAlso Not Char.IsDigit(e.KeyChar) Then
            ' Suppress the key press event
            e.Handled = True
        End If
    End Sub

    Private Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles qtySearch.TextChanged
        ' Get the filter value from the TextBox
        Dim filterValue As Integer
        If Not Integer.TryParse(qtySearch.Text.Trim(), filterValue) Then
            ' If the entered value is not a valid integer, clear the filter and display all rows
            For Each row As DataGridViewRow In dgInventory.Rows
                row.Visible = True
            Next
            Return
        End If

        ' Get the column index to filter
        Dim columnIndex As Integer = 2 ' Replace with the index of the desired column

        ' Loop through each row in the DataGridView
        For Each row As DataGridViewRow In dgInventory.Rows
            If row.Cells(columnIndex).Value IsNot Nothing AndAlso
           Integer.TryParse(row.Cells(columnIndex).Value.ToString(), 0) Then
                Dim cellValue As Integer = Integer.Parse(row.Cells(columnIndex).Value.ToString())
                ' Check if the value in the specific column is less than the filter value
                If cellValue <= filterValue Then
                    row.Visible = True
                Else
                    row.Visible = False
                End If
            Else
                row.Visible = False
            End If
        Next
    End Sub

    Private Sub TextBox1_KeyPress(sender As Object, e As KeyPressEventArgs) Handles qtySearch.KeyPress
        ' Check if the pressed key is a numeric digit or a control character
        If Not Char.IsControl(e.KeyChar) AndAlso Not Char.IsDigit(e.KeyChar) Then
            ' Suppress the key press event
            e.Handled = True
        End If
    End Sub

    Private Sub notif()
        ' Clear any existing data in dataGridView2
        dgNotif.DataSource = Nothing
        dgNotif.Rows.Clear()
        dgNotif.Columns.Clear()

        ' Get the filter value from the TextBox
        Dim filterValue As Integer = 5

        ' Get the column index to filter
        Dim columnIndex As Integer = 2 ' Replace with the index of the desired column

        ' Copy the column headers and styles from dataGridView1 to dataGridView2
        For Each column As DataGridViewColumn In dgInventory.Columns
            dgNotif.Columns.Add(DirectCast(column.Clone(), DataGridViewColumn))
        Next

        ' Loop through each row in dataGridView1
        For Each row As DataGridViewRow In dgInventory.Rows
            If row.Cells(columnIndex).Value IsNot Nothing AndAlso Integer.TryParse(row.Cells(columnIndex).Value.ToString(), 0) Then
                Dim cellValue As Integer = Integer.Parse(row.Cells(columnIndex).Value.ToString())

                ' Check if the value in the specific column is less than or equal to the filter value
                If cellValue <= filterValue Then
                    ' Create a new row in dataGridView2 and copy the values from the original row
                    Dim newRow As DataGridViewRow = DirectCast(row.Clone(), DataGridViewRow)

                    For Each cell As DataGridViewCell In row.Cells
                        newRow.Cells(cell.ColumnIndex).Value = cell.Value
                        newRow.Cells(cell.ColumnIndex).Style = DirectCast(cell.Style.Clone(), DataGridViewCellStyle)
                    Next

                    ' Add the new row to dataGridView2
                    dgNotif.Rows.Add(newRow)
                End If
            End If
        Next
    End Sub

    Private Sub countrecords()
        Dim rowCount As Integer = dgsalesrecords.Rows.Count
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        ' Prompt for the password
        Dim password As String = txtpass.Text

        ' Define the required password
        Dim requiredPassword As String = "secret"

        ' Compare the entered password with the required password
        If password = requiredPassword Then
            ' Check if any cell is selected
            If lblTypeOfDel.Text = "Delete Order" Then
                If dgCashier.SelectedCells.Count > 0 Then
                    ' Get the index of the first selected cell in the row
                    Dim rowIndex As Integer = dgCashier.SelectedCells(0).RowIndex
                    ' Delete the entire row
                    dgCashier.Rows.RemoveAt(rowIndex)
                    pnldeleteorder.Hide()
                    EnableAllControls()
                Else
                    MessageBox.Show("No cell selected.")
                End If
            ElseIf lblTypeOfDel.Text = "Clear Order" Then
                dgCashier.Rows.Clear()
                txtCash.Text = 0
                lblchange.Text = 0
                lbltotalorder.Text = 0
                txtSearchSelectItem.Text = ""

                lblchange.ForeColor = Color.Black
                txtCash.BackColor = SystemColors.Control

                pnldeleteorder.Hide()
                EnableAllControls()
            End If
        ElseIf password <> requiredPassword Then
            MessageBox.Show("Incorrect password.")
            btnDeleteOrder.PerformClick()
            txtpass.Text = ""
        End If

        txtpass.Text = ""
        totalOrder()


    End Sub

    Private Sub PictureBox5_Click(sender As Object, e As EventArgs) Handles PictureBox5.Click
        pnldeleteorder.Hide()
        EnableAllControls()
    End Sub

    Private Sub procSearchAccount(ByVal p_searchtype As String, ByVal p_searhText As String)
        datRest = New DataTable
        SqlAdapterRest = New MySqlDataAdapter
        Try
            With command
                .Parameters.Clear()
                .CommandText = "procSearchAcc"
                .CommandType = CommandType.StoredProcedure
                .Parameters.AddWithValue("@p_searchtype", p_searchtype)
                .Parameters.AddWithValue("@p_value", p_searhText)
                SqlAdapterRest.SelectCommand = command
                datRest.Clear()
                SqlAdapterRest.Fill(datRest)
                If datRest.Rows.Count > 0 Then
                    dgUsers.RowCount = datRest.Rows.Count
                    row = 0
                    While Not datRest.Rows.Count - 1 < row
                        With dgUsers
                            .Rows(row).Cells(0).Value = datRest.Rows(row).Item("id").ToString
                            .Rows(row).Cells(1).Value = datRest.Rows(row).Item("userposition").ToString
                            .Rows(row).Cells(2).Value = datRest.Rows(row).Item("fullname").ToString
                            .Rows(row).Cells(3).Value = datRest.Rows(row).Item("gender").ToString
                            .Rows(row).Cells(4).Value = datRest.Rows(row).Item("address").ToString
                            .Rows(row).Cells(5).Value = datRest.Rows(row).Item("emailadd").ToString
                            .Rows(row).Cells(6).Value = datRest.Rows(row).Item("mobileno").ToString
                            .Rows(row).Cells(7).Value = datRest.Rows(row).Item("username").ToString
                        End With
                        row = row + 1
                    End While
                Else
                    dgUsers.Rows.Clear()
                End If
            End With

            datRest.Dispose()
            SqlAdapterRest.Dispose()
        Catch ex As Exception
            MessageBox.Show("" + ex.Message)
        End Try

    End Sub

    Private Sub txtSearch_TextChanged(sender As Object, e As EventArgs) Handles txtSearch.TextChanged
        procSearchAccount("lastname", txtSearch.Text)
    End Sub

    Private Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        cmbGender.Text = ""
        cmbPosition.Text = ""
        txtlastname.Text = ""
        txtAddress.Text = ""
        txtFirstname.Text = ""
        txtmiddlename.Text = ""
        txtMobileNo.Text = ""
        txtEmailAdd.Text = ""
        txtUsername.Text = ""
        txtpass.Text = ""
        txtPassword.Text = ""
    End Sub

    Private Sub txtpass_TextChanged(sender As Object, e As EventArgs) Handles txtpass.TextChanged

    End Sub

    Private Sub btnDeleteOrder_Click(sender As Object, e As EventArgs) Handles btnDeleteOrder.Click
        pnldeleteorder.Visible = True
        lblTypeOfDel.Text = "Delete Order"
        DisableControlsOutsidePanel(pnldeleteorder)
    End Sub

    Private Sub DisableControlsOutsidePanel(panel As Panel)
        For Each control As Control In Me.Controls
            If Not IsControlInsidePanel(control, panel) Then
                control.Enabled = False
            End If
        Next
    End Sub

    Private Sub EnableControlsInPanel(panel As Panel)
        For Each control As Control In panel.Controls
            control.Enabled = True
        Next
    End Sub

    Private Function IsControlInsidePanel(control As Control, panel As Panel) As Boolean
        If control Is panel Then
            Return True
        ElseIf control.Parent IsNot Nothing Then
            Return IsControlInsidePanel(control.Parent, panel)
        Else
            Return False
        End If
    End Function

    Private Sub EnableAllControls()
        For Each control As Control In Me.Controls
            control.Enabled = True
        Next
    End Sub

    Private Sub btn_logs_Click(sender As Object, e As EventArgs) Handles btn_logs.Click
        pnlOnButtonPosition.Height = btn_logs.Height
        pnlOnButtonPosition.Top = btn_logs.Top

        btn_dash.BackColor = Color.Transparent
        btn_cashier.BackColor = Color.Transparent
        btn_inventory.BackColor = Color.Transparent
        btn_sales.BackColor = Color.Transparent
        btn_logs.BackColor = SystemColors.Control
        btn_accounts.BackColor = Color.Transparent


        ' procDisplayAllUsers()

        pnl_AddUser.Visible = False
        pnl_dashboard.Visible = False
        pnl_cashier.Visible = False
        pnl_inventory.Visible = False
        pnl_sales.Visible = False
        pnl_logs.Visible = True
        pnl_accounts.Visible = False
    End Sub

    Private Sub btn_logout_Click_1(sender As Object, e As EventArgs) Handles btn_logout.Click
        Me.Visible = False
        frmLogIn.Visible = True
        frmLogIn.txtPassword.Text = ""
        frmLogIn.txtusername.Text = ""
        frmLogIn.cmbUserPosition.Text = ""
    End Sub


End Class