<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Radiobutton</title>
</head>
<body>
    <form runat = "server">
        <h2>Please choose your Major</h2>
        <p>
            <asp:RadioButton id="CS" gropname="major" runat="server" text="Computer Science"></asp:RadioButton><br/>
            <asp:RadioButton id="CPR" gropname="major" runat="server" text="Computer Programming"></asp:RadioButton><br/>
            <asp:RadioButton id="CW" gropname="major" runat="server" text="Computer Web Programming"></asp:RadioButton><br/>
        </p>
        <p>
            <asp:Button id="btOK" text="OK" onclick="sumit_major" runat="server"></asp:Button>
        </p>
        <hr/>
        <p>
            <asp.lable id="lblMessage" runat = "server"></asp.lable>
        </p>
    </form>
</body>
</html>

<script language="C#" runat="server">
     private void sumit_major(Object s, EventArgs e) {
         if(CS.Checked==true) {
            lblMessage.text=CS.text;
         }else if (CPR.Checked==true){
            lblMessage.text =CPR.text;
         }else if (CW.Checked==true){
            lblMessage.text =CW.text;
         }
     }
</script>