<script language="c#" runat ="server">
 private void MyOK(Object s, EventArgs e){
    lbMessage.Text = txtName.Text
 }
</script>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ASP.NET</title>
</head>
<body>
    <h1>ASP.NET 3CW2 Lab3</h1>
    <form id="f1" runat = "server">
      <asp:label id="lbName" Text="Name:" runat="server"/>  
      <br/>
      <asp:TextBox id="txtName" runat="server"/>
      <asp:Button id="btnOK" Text="OK" runat="server"/>
      <hr/>
      <asp:lable id="lbMessage" runat="server"/>
    </form>
</html> 