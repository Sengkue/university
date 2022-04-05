<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DropDownList</title>
</head>
<body>
    <form runat="server" style="margin-top: 4rem; font-size: 23px;">
     <asp:DropdownList id="ddCountry" runat="server"> 
     <asp:ListItem Text="Brunie"/>
     <asp:ListItem Text="Laos" Selected="true"/>
     <asp:ListItem Text="Thailand"/>
     <asp:ListItem Text="Indonesia"/>
     <asp:ListItem Text="Singapore"/>
     <asp:ListItem Text="Vietnam"/>
     </asp:DropdownList>

     <asp:Button id="btnSubmit" text="Select Your Country" onclick="MyCheck" runat="server" />
     <hr/>
     <asp:Label id="lblResponse" runat="server"/>
    </form>

    
</body>
</html>

<script language="c#" runat="server">
   private void MyCheck(Object s, EventArgs e) {
    lblResponse.Text = ddCountry.SelectedIndex + " - " + ddCountry.SelectedItem.Text ;
   }
</script>