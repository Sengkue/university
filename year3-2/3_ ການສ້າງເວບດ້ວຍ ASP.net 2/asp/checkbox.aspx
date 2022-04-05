<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CheckBox</title>
</head>
<body>
    <form runat="server">
    <asp:CheckBox id="chkMailing" Text="Do you want to hear from us" runat="server"/>
    <asp:CheckBox id="chkWhatsApp" Text="Do you want to hear from us" runat="server"/>
    <asp:button id="btnok" Text="Submit"  runat="server"/>
     <hr/>
     <asp:label id="lblRespone" runat="server" runat="server">
       

     </asp:label>
    </form>
</body>
</html>

<script language="c#" runat ="server" >
    private void Mycheck(Object s, EventArgs e) {
        if(chkMailling.Check == true) {
            lblRespone.Text = chkMailling.Text
        }
    }
</script>
