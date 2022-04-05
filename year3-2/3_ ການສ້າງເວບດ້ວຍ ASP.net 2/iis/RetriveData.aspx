<%@ Page Language="c#" Debug="true" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>
<script runat="server">
private void Page_Load(Object s,  EventArgs e){
if  (!Page.IsPostBack ){
         showData();
         
    }
 /*
if(myconn !=null){
  Response.Write("<h1> Connect Sucessfull </h1>");
  */
}
private void showData(){
  //string strCon= "data source=DESKTOP-7M2BJJA\\SQLEXPRESS;uid=tina;pwd=tina;Initial Catalog=dbcw12;Trusted_Connection=True;Integrated Security=True;";
  string strCon="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\\dbasp3CW2.accdb;"+
    "User ID=;Password=;";
  OleDbConnection myconn = new OleDbConnection(strCon); 
    myconn.Open();
   string sql="SELECT * FROM tbstudent";
   DataSet ds = new DataSet();
   OleDbDataAdapter da = new OleDbDataAdapter(sql, myconn);
da.Fill(ds, "abc");
//DataView dv = new DataView(ds.Tables["abc"]);
MyGrid.DataSource = ds;
MyGrid.DataBind();
myconn.Close();
}
private void DataGrid_Edit( Object S, DataGridCommandEventArgs E){
     MyGrid.EditItemIndex=E.Item.ItemIndex;
  showData();
}
private void DataGrid_Cancel(Object S,DataGridCommandEventArgs E){
  MyGrid.EditItemIndex=-1;
  showData();
}
private void DataGrid_Delete(Object S,DataGridCommandEventArgs e){
  int eid;
eid=(int)MyGrid.DataKeys[e.Item.ItemIndex];
string strCon="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\\dbasp3CW2.accdb;"+
    "User ID=;Password=;";
  OleDbConnection myconn = new OleDbConnection(strCon); 
    myconn.Open();
string  sqlDel="DELETE  FROM tbstudent WHERE ID=@id1";
 
OleDbCommand command= new OleDbCommand(sqlDel,myconn);
command.Parameters.AddWithValue("id1", eid);
 command.ExecuteNonQuery();
 
  showData();
}
</script>
<!DOCTYPE html>
<html lang="en">
<head>
          <meta charset="UTF-8">
          <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
          <meta http-equiv="X-UA-Compatible" content="IE=edge">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Retrive Data</title>
          <style>
              body{
                  font-family: "phetsarath ot";
                  text-align: center;
              }
          </style>
</head>
<body >
     <form id="f1" runat="server">
          <center><h1>Test MS ACCESS Connection </h1> 
        
         <asp:DataGrid id="MyGrid" runat="server"
         Autogeneratecolumns="false" DataKeyField="ID"
 
         onEditCommand="DataGrid_Edit"
         onCancelCommand="DataGrid_Cancel"
         onDeleteCommand="DataGrid_Delete"
       
         AllowPaging="True"
         PageSize="10"
         PagerStyle-mode="NumericPages"
         HeaderStyle-BackColor="#99cc66"
         AlternatingItemStyle-BackColor="#D1F2EB" 
         >   
         <Columns>
          <asp:EditCommandColumn HeaderText="ເເກ້ໄຂ" ButtonType="LinkButton" CancelText="Cancel" EditText="Edit" UpdateText="Update" />
          <asp:BoundColumn HeaderText="ID(ລະຫັດ)" DataField="ID" ReadOnly="True" />
          <asp:BoundColumn HeaderText="ຊື່" DataField="ຊື່" />
          <asp:BoundColumn HeaderText="ນາມສະກຸນ" DataField="ນາມສະກຸນ" />
          <asp:BoundColumn HeaderText="ເພດ" DataField="ເພດ" />
          <asp:BoundColumn HeaderText="ອີເມວ" DataField="ອີເມວ" />
          <asp:BoundColumn HeaderText="ສະຫັດປະເທດ" DataField="ສະຫັດປະເທດ" />
          <asp:BoundColumn HeaderText="ວິຊາທີ່ມັກ" DataField="ວິຊາທີ່ມັກ" />
          <asp:BoundColumn HeaderText="ສາຂາຮຽນ" DataField="ສາຂາຮຽນ" />
          <asp:ButtonColumn HeaderText="ລຶບ" Text="Delete" CommandName="Delete" />  
         </Columns>     
          </asp:DataGrid>
          </center>    
     </form>     
</body>
</html>
