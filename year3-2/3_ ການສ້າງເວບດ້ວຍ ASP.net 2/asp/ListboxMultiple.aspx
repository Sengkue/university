<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ListBox</title>
</head>
<body>
    <form runat="server">
     <asp:ListBox id="lswindows" selectionMode="Multiple" runat="server"> 
     <asp:ListItem Text="Windows XP"/>
     <asp:ListItem Text="Windows 2k"/>
     <asp:ListItem Text="Windows vista"/>
     <asp:ListItem Text="Windows 7"/>
     <asp:ListItem Text="Windows 10"/>
     <asp:ListItem Text="Linux" selected="true"/>

     </asp:ListBox>

     <asp:Button id="btnSubmit" text="Select Your Windows" onclick="MyCheck" runat="server" />
     <hr/>
     <asp:Label id="lblResponse" runat="server"/>
    </form>

    
</body>
</html>

<script language="c#" runat="server">
   private void MyCheck(Object s, EventArgs e) {
    String strWindow ="";
    foreach(ListItem itmWindow in lswindows.Items) {
        if(itmWindow.Selected == true) {
            strWindow += "<li>" + itmWindow.Text + "," ;
        }
    }
    lblResponse.Text = strWindow;
   }
</script>