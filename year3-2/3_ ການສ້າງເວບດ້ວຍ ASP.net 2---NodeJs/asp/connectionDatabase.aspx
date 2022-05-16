<%@ Page Language="C#" Debug="true" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>
<script runat="server">
  private void Page_Load(Object s,EventArgs e)
  {
            if(!Page.IsPostBack){
                      showData();
            }
  }
  private void showData(){
    string strCon="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\\dbasp3CW2.accdb;"+
    "User ID=;Password=;";
        OleDbConnection myconn=new  OleDbConnection(strCon);
         myconn.Open();  
        string sql="SELECT * FROM tbstudent";
        DataSet ds=new DataSet();
        OleDbDataAdapter da=new OleDbDataAdapter(sql,myconn); 
        da.Fill(ds,"abc");
        myGrid.DataSource=ds;
        myGrid.DataBind();
        myconn.Close();
 
  }
 
</script>
<!DOCTYPE html>
<html lang="en">
<head>
          <meta charset="UTF-8">
          <meta http-equiv="X-UA-Compatible" content="IE=edge">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Connection Access database</title>
</head>
<body>
     <form id="f1" runat="server">
          <center><h1>Test MS ACCESS Connection </h1> 
        
         <asp:DataGrid id="myGrid" runat="server"/>
          </center>    
     </form>     
</body>
</html>
