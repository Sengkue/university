<%@ Page Language="C#" Debug="true"%>
<%@ Import Namespace="System.Data"%>
<%@ Import Namespace="System.Data.OleDb" %>

<script runat="server">
     private void Page_Load(Object s,EventArgs e)
  {
            if(!Page.IsPostBack){
                    OleDbConnection myConn;
                    OleDbCommand myCommand;
                    OleDbDataReader myReader;
                    string sql;
                    string strConn ="Provider=Microsoft.ACE.OLEDB.12.0;Data source=D:\\dbasp3cw2.acc.accdb;";
                              
                    myConn = new OleDbConnection(strConn);
                    myConn.Open();
                   
                 string sql ="SELECT Majorname, MajorID FROM tbmajor";
                 myCommand = new OleDbCommand(sql,myConn);
                 myReader = myCommand.ExecuteReader();
                 drpMarjor.DataSource=myReader;
                 drpMarjor.DataTextField="Majorname";
                 drpMarjor.DataValueField="MajorID";
                 drpMarjor.DataBind();
                 drpCategory.Items.Insert(0, new ListItem("Select category", -1));
                 myReader.Close();
                 myConn.Close();
                } // End if
  } // End page load

  private void BindMajor( int intMajorID) {
    OleDbConnection myConn;
                    OleDbCommand myCommand;
                    OleDbDataReader myReader;
                    string sql;
                    string strConn ="Provider=Microsoft.ACE.OLEDB.12.0;Data source=D:\\dbasp3cw2.acc.accdb;";
                              
                    myConn = new OleDbConnection(strConn);
                    myConn.Open();
                    string sqlQuery = "SELECT ID, Name,Surname, Gender FROM tbstudent WHERE MajorID=@majorID";
                    myCommand = new OleDbCommand(sqlQuery,myConn);
                    myCommand.Parameter.Add(@majorID,intMajorID);
                    myReader=myCommand.ExecuteReader();
                    rptStudent.DataSource=myReader;
                    rptStudent.DataBind();
                    myReader.Close();
                    myConn.Close();
    
  }
</script>