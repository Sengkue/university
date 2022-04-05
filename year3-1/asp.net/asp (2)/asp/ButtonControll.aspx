<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ButtonControl</title>
</head>
<body >
    <form runat="server" style="margin-top: 5rem;">
         <h1>this is a button conntroll</h1>
         <asp:textbox id="txt" size="15" runat="server" />
        <asp:Button id="btnOK" text="Click Me " runat="server" onclick="MyClick" />
     <hr/>
     <asp:label id="lblMessage" runat="server"/>
    </form>
</body>
</html>

<script language="c#" runat="server">
    // private void MyCheck(Object s, EventArgs e) {
    //     lblMessage.Text = "Submit button clicked" ;
    // }
      
    private void MyClick(Object s, EventArgs e) {
        lblMessage.Text = "Welcome" + " : " +  txt.Text;
    }
   
 </script>