<%@ Page Language="vb" Debug="true" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>
 
<script  runat="server">
Sub Page_Load()
If Not IsPostBAck then
 Dim myCon As OleDbConnection
 Dim myCommand As OleDbCommand
 Dim myReader As OleDbDataReader
 Dim tmpOleDb As String
 
 myCon = New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\\dbasp3CW2.accdb;User Id=;Password=;")
 myCon.Open
 
 tmpOleDb = "Select Majorname from tbmajor"
 myCommand = New OleDbCommand(tmpOleDb,myCon)
 
 myReader = myCommand.ExecuteReader()
 
 drpCategory.DataSource = myReader
 drpCategory.DataTextField = "Majorname"
 drpCategory.DataBind()
 
 myReader.Close()
 myCon.Close()
 
End If
End Sub
</script>
<html>
          <head><title></title></head>
          <body>
          <form Runat="Server">
          
          <asp:DropDownList
           id="drpCategory"
           Runat="Server" />
           
          <asp:Button
           Text="Select Category"
           Runat="Server" /> 
          
          </form>  
          </body>
          </html>