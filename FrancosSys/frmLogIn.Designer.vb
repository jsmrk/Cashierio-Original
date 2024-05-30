<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class frmLogIn
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()>
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Me.PictureBox1 = New System.Windows.Forms.PictureBox()
        Me.Guna2ControlBox1 = New Guna.UI2.WinForms.Guna2ControlBox()
        Me.txtusername = New Guna.UI2.WinForms.Guna2TextBox()
        Me.txtpassword = New Guna.UI2.WinForms.Guna2TextBox()
        Me.Guna2CustomGradientPanel1 = New Guna.UI2.WinForms.Guna2CustomGradientPanel()
        Me.asdas = New Guna.UI2.WinForms.Guna2Button()
        Me.cmbUserPosition = New Guna.UI2.WinForms.Guna2ComboBox()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.Guna2CustomGradientPanel1.SuspendLayout()
        Me.SuspendLayout()
        '
        'PictureBox1
        '
        Me.PictureBox1.BackColor = System.Drawing.Color.Transparent
        Me.PictureBox1.BackgroundImage = Global.FrancosSys.My.Resources.Resources.LOGO_resize_removebg_preview
        Me.PictureBox1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.PictureBox1.Location = New System.Drawing.Point(94, 53)
        Me.PictureBox1.Name = "PictureBox1"
        Me.PictureBox1.Size = New System.Drawing.Size(298, 178)
        Me.PictureBox1.TabIndex = 0
        Me.PictureBox1.TabStop = False
        '
        'Guna2ControlBox1
        '
        Me.Guna2ControlBox1.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Guna2ControlBox1.BackColor = System.Drawing.Color.Transparent
        Me.Guna2ControlBox1.BorderRadius = 10
        Me.Guna2ControlBox1.FillColor = System.Drawing.Color.White
        Me.Guna2ControlBox1.HoverState.Parent = Me.Guna2ControlBox1
        Me.Guna2ControlBox1.IconColor = System.Drawing.Color.Black
        Me.Guna2ControlBox1.Location = New System.Drawing.Point(411, 12)
        Me.Guna2ControlBox1.Name = "Guna2ControlBox1"
        Me.Guna2ControlBox1.ShadowDecoration.Parent = Me.Guna2ControlBox1
        Me.Guna2ControlBox1.Size = New System.Drawing.Size(45, 29)
        Me.Guna2ControlBox1.TabIndex = 7
        '
        'txtusername
        '
        Me.txtusername.BorderRadius = 10
        Me.txtusername.Cursor = System.Windows.Forms.Cursors.IBeam
        Me.txtusername.DefaultText = ""
        Me.txtusername.DisabledState.BorderColor = System.Drawing.Color.FromArgb(CType(CType(208, Byte), Integer), CType(CType(208, Byte), Integer), CType(CType(208, Byte), Integer))
        Me.txtusername.DisabledState.FillColor = System.Drawing.Color.FromArgb(CType(CType(226, Byte), Integer), CType(CType(226, Byte), Integer), CType(CType(226, Byte), Integer))
        Me.txtusername.DisabledState.ForeColor = System.Drawing.Color.FromArgb(CType(CType(138, Byte), Integer), CType(CType(138, Byte), Integer), CType(CType(138, Byte), Integer))
        Me.txtusername.DisabledState.Parent = Me.txtusername
        Me.txtusername.DisabledState.PlaceholderForeColor = System.Drawing.Color.FromArgb(CType(CType(138, Byte), Integer), CType(CType(138, Byte), Integer), CType(CType(138, Byte), Integer))
        Me.txtusername.FocusedState.BorderColor = System.Drawing.Color.FromArgb(CType(CType(94, Byte), Integer), CType(CType(148, Byte), Integer), CType(CType(255, Byte), Integer))
        Me.txtusername.FocusedState.Parent = Me.txtusername
        Me.txtusername.Font = New System.Drawing.Font("Century Gothic", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtusername.HoverState.BorderColor = System.Drawing.Color.FromArgb(CType(CType(94, Byte), Integer), CType(CType(148, Byte), Integer), CType(CType(255, Byte), Integer))
        Me.txtusername.HoverState.Parent = Me.txtusername
        Me.txtusername.IconLeft = Global.FrancosSys.My.Resources.Resources.user
        Me.txtusername.Location = New System.Drawing.Point(57, 90)
        Me.txtusername.Margin = New System.Windows.Forms.Padding(4)
        Me.txtusername.Name = "txtusername"
        Me.txtusername.PasswordChar = Global.Microsoft.VisualBasic.ChrW(0)
        Me.txtusername.PlaceholderText = "  Username"
        Me.txtusername.SelectedText = ""
        Me.txtusername.ShadowDecoration.Parent = Me.txtusername
        Me.txtusername.Size = New System.Drawing.Size(267, 49)
        Me.txtusername.TabIndex = 5
        '
        'txtpassword
        '
        Me.txtpassword.BorderRadius = 10
        Me.txtpassword.Cursor = System.Windows.Forms.Cursors.IBeam
        Me.txtpassword.DefaultText = ""
        Me.txtpassword.DisabledState.BorderColor = System.Drawing.Color.FromArgb(CType(CType(208, Byte), Integer), CType(CType(208, Byte), Integer), CType(CType(208, Byte), Integer))
        Me.txtpassword.DisabledState.FillColor = System.Drawing.Color.FromArgb(CType(CType(226, Byte), Integer), CType(CType(226, Byte), Integer), CType(CType(226, Byte), Integer))
        Me.txtpassword.DisabledState.ForeColor = System.Drawing.Color.FromArgb(CType(CType(138, Byte), Integer), CType(CType(138, Byte), Integer), CType(CType(138, Byte), Integer))
        Me.txtpassword.DisabledState.Parent = Me.txtpassword
        Me.txtpassword.DisabledState.PlaceholderForeColor = System.Drawing.Color.FromArgb(CType(CType(138, Byte), Integer), CType(CType(138, Byte), Integer), CType(CType(138, Byte), Integer))
        Me.txtpassword.FocusedState.BorderColor = System.Drawing.Color.FromArgb(CType(CType(94, Byte), Integer), CType(CType(148, Byte), Integer), CType(CType(255, Byte), Integer))
        Me.txtpassword.FocusedState.Parent = Me.txtpassword
        Me.txtpassword.Font = New System.Drawing.Font("Century Gothic", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtpassword.HoverState.BorderColor = System.Drawing.Color.FromArgb(CType(CType(94, Byte), Integer), CType(CType(148, Byte), Integer), CType(CType(255, Byte), Integer))
        Me.txtpassword.HoverState.Parent = Me.txtpassword
        Me.txtpassword.IconLeft = Global.FrancosSys.My.Resources.Resources.padlock
        Me.txtpassword.Location = New System.Drawing.Point(57, 148)
        Me.txtpassword.Margin = New System.Windows.Forms.Padding(5, 5, 5, 5)
        Me.txtpassword.Name = "txtpassword"
        Me.txtpassword.PasswordChar = Global.Microsoft.VisualBasic.ChrW(0)
        Me.txtpassword.PlaceholderText = "  Password"
        Me.txtpassword.SelectedText = ""
        Me.txtpassword.ShadowDecoration.Parent = Me.txtpassword
        Me.txtpassword.Size = New System.Drawing.Size(267, 49)
        Me.txtpassword.TabIndex = 6
        Me.txtpassword.UseSystemPasswordChar = True
        '
        'Guna2CustomGradientPanel1
        '
        Me.Guna2CustomGradientPanel1.BackColor = System.Drawing.Color.Transparent
        Me.Guna2CustomGradientPanel1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.Guna2CustomGradientPanel1.BorderRadius = 10
        Me.Guna2CustomGradientPanel1.BorderStyle = System.Drawing.Drawing2D.DashStyle.DashDot
        Me.Guna2CustomGradientPanel1.Controls.Add(Me.asdas)
        Me.Guna2CustomGradientPanel1.Controls.Add(Me.cmbUserPosition)
        Me.Guna2CustomGradientPanel1.Controls.Add(Me.txtpassword)
        Me.Guna2CustomGradientPanel1.Controls.Add(Me.txtusername)
        Me.Guna2CustomGradientPanel1.Location = New System.Drawing.Point(47, 248)
        Me.Guna2CustomGradientPanel1.Name = "Guna2CustomGradientPanel1"
        Me.Guna2CustomGradientPanel1.ShadowDecoration.Parent = Me.Guna2CustomGradientPanel1
        Me.Guna2CustomGradientPanel1.Size = New System.Drawing.Size(376, 304)
        Me.Guna2CustomGradientPanel1.TabIndex = 6
        '
        'asdas
        '
        Me.asdas.BackColor = System.Drawing.Color.Transparent
        Me.asdas.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom
        Me.asdas.BorderRadius = 10
        Me.asdas.CheckedState.Parent = Me.asdas
        Me.asdas.CustomImages.Parent = Me.asdas
        Me.asdas.FillColor = System.Drawing.Color.Pink
        Me.asdas.Font = New System.Drawing.Font("Century Gothic", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.asdas.ForeColor = System.Drawing.Color.DimGray
        Me.asdas.HoverState.Parent = Me.asdas
        Me.asdas.Location = New System.Drawing.Point(106, 218)
        Me.asdas.Name = "asdas"
        Me.asdas.ShadowDecoration.Parent = Me.asdas
        Me.asdas.Size = New System.Drawing.Size(172, 44)
        Me.asdas.TabIndex = 8
        Me.asdas.Text = "LOG  IN"
        '
        'cmbUserPosition
        '
        Me.cmbUserPosition.Animated = True
        Me.cmbUserPosition.AutoCompleteCustomSource.AddRange(New String() {"Select User Type"})
        Me.cmbUserPosition.BackColor = System.Drawing.Color.Transparent
        Me.cmbUserPosition.BorderRadius = 10
        Me.cmbUserPosition.Cursor = System.Windows.Forms.Cursors.Hand
        Me.cmbUserPosition.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawFixed
        Me.cmbUserPosition.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbUserPosition.FocusedColor = System.Drawing.Color.Empty
        Me.cmbUserPosition.FocusedState.Parent = Me.cmbUserPosition
        Me.cmbUserPosition.Font = New System.Drawing.Font("Century Gothic", 12.0!)
        Me.cmbUserPosition.ForeColor = System.Drawing.Color.FromArgb(CType(CType(68, Byte), Integer), CType(CType(88, Byte), Integer), CType(CType(112, Byte), Integer))
        Me.cmbUserPosition.FormattingEnabled = True
        Me.cmbUserPosition.HoverState.Parent = Me.cmbUserPosition
        Me.cmbUserPosition.ItemHeight = 30
        Me.cmbUserPosition.Items.AddRange(New Object() {"Admin", "Employee"})
        Me.cmbUserPosition.ItemsAppearance.Parent = Me.cmbUserPosition
        Me.cmbUserPosition.Location = New System.Drawing.Point(57, 40)
        Me.cmbUserPosition.Name = "cmbUserPosition"
        Me.cmbUserPosition.ShadowDecoration.BorderRadius = 10
        Me.cmbUserPosition.ShadowDecoration.Parent = Me.cmbUserPosition
        Me.cmbUserPosition.Size = New System.Drawing.Size(267, 36)
        Me.cmbUserPosition.TabIndex = 7
        Me.cmbUserPosition.Tag = ""
        '
        'frmLogIn
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackgroundImage = Global.FrancosSys.My.Resources.Resources._360_F_230182799_SuoqXG9zd8J70Bhe6NKVkiHTvHVEMgee
        Me.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.ClientSize = New System.Drawing.Size(468, 584)
        Me.Controls.Add(Me.Guna2ControlBox1)
        Me.Controls.Add(Me.PictureBox1)
        Me.Controls.Add(Me.Guna2CustomGradientPanel1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None
        Me.Name = "frmLogIn"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "frmLogIn"
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.Guna2CustomGradientPanel1.ResumeLayout(False)
        Me.ResumeLayout(False)

    End Sub

    Friend WithEvents PictureBox1 As PictureBox
    Friend WithEvents Guna2ControlBox1 As Guna.UI2.WinForms.Guna2ControlBox
    Friend WithEvents txtusername As Guna.UI2.WinForms.Guna2TextBox
    Friend WithEvents txtpassword As Guna.UI2.WinForms.Guna2TextBox
    Friend WithEvents Guna2CustomGradientPanel1 As Guna.UI2.WinForms.Guna2CustomGradientPanel
    Friend WithEvents cmbUserPosition As Guna.UI2.WinForms.Guna2ComboBox
    Friend WithEvents asdas As Guna.UI2.WinForms.Guna2Button
End Class
