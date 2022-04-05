<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Button CommandClick</title>
</head>
<body>
    <form runat="server" style="margin-top: 5rem;">
        <h1>this is a button command</h1>
       <asp:Button 
       text ="Add 5"
       id="btnOK" 
       CommandName="Add"
       CommandArgument="5"
       Oncommand="MyCommand"
       runat="server" 
       />

       <asp:Button 
       text ="Subtract 10"
       id="btnSub" 
       CommandName="Sub"
       CommandArgument="10"
       Oncommand="MyCommand"
       runat="server" 
       />
    <hr/>
    <asp:label id="lblMessage" runat="server"/>
   </form>
    
</body>
</html>

<script language="c#" runat="server">
     static int count = 0;
   private void MyCommand(Object s, CommandEventArgs e) {
  
    if(e.CommandName == "Add"){
       count = count+5;
       lblMessage.Text = count.ToString();
    } else if(e.CommandName == "Sub") {
        count = count-10;
       lblMessage.Text = count.ToString(); 
    }
   }
</script>