Imports MySql.Data.MySqlClient
Imports CrystalDecisions.CrystalReports.Engine
Module ModGlobalVariable
    'global variable
    Public servername As String        'localhost
    Public databaseusername As String  'username
    Public databasepassword As String  'password
    Public databasename As String      'schema 
    Public port As String              'port
    Public conRestMgtSys As New MySqlConnection   'Variable that hold for the connection string
    Public command As New MySqlCommand             'mao ni na variable ang mag execute sa sql command
    Public strConnectionString As String
    Public customerPhotoPath As String   'mao ni ang variable na mag gunit sa location/path sa imong image
    Public datRest As New DataTable 'datHotel
    Public SqlAdapterRest As New MySqlDataAdapter 'SqlAdapterHotel
    Public row As Integer
    Public action As String
    Public tempcusid As Integer
    Public cid As Integer
    Public rid As Integer
    Public reportname As String
    '  Public reportdoc As New ReportDocument
    Public ReportPath As String
    Public g_username As String
    Public g_userposition As String
    Public totalprice, change, cash As String

End Module
