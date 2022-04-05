<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="shortcut icon" href="https://cdn-icons.flaticon.com/png/512/2632/premium/2632839.png?token=exp=1637120749~hmac=a7c1a5378a9514f615631279149bc3ca" type="image/x-icon">
  <title>ASP.Net</title>
</head>
<body>

    
  <h1>Choice </h1>
  <form  runat="server">
      <asp:CheckBoxList 
      id="Programming"
      runat="server"
      >
      <asp:ListItem>Java</asp:ListItem>
      <asp:ListItem>PHP</asp:ListItem>
      <asp:ListItem>JSP</asp:ListItem>
  </asp:CheckBoxList>
  <br/>
  <asp:Button 
  id="Button1" 
  runat="server" 
  Text="Submit" 
  
   />
  <br>
  <hr/>
  <asp:label id="showText" Text="" runat="server"/>
  </form>
</body>
</html>

<script language="c#" runat ="server">
    private void MyOK(Object s, EventArgs e){
      
    }
   </script>