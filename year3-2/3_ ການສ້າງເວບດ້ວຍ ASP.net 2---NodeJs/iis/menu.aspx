<!-- <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Menu ID="menu1" runat="server">
                <items>
                   
                    <asp:MenuItem Text="Web Board" value="bebboard">
  
                    </asp:MenuItem>
      
                </items>
            </asp:Menu>
        </div>
    </form>
</body>
</html> -->
<!-- <!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    What the fuck
</body>
</html> -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Staudent</title>
</head>
<body>
    <form runat="server">
        ID Student:&nbsp;&nbsp;<asp:texTBox id="txtID" runat="server"/>
        <asp:RequiredFieldValidator
         ControlToValidate="txtID"
         Errormessage="Cannot leave blank ID"
         runat="server"/><br><br>
         Name:&nbsp;&nbsp; <asp:texTBox id="txtName" runat="server"/><br><br>
         Age: &nbsp;&nbsp;<asp:texTBox id="txtAge" runat="server"/>
         <asp:RequiredFieldValidator
         ControlToValidate="txtAge"
        MinimumValue="1"
        MaximumValue="100"
        Type="INteger"
        EnableClientScript="false"
         Errormessage=" 1 to 100!"
         runat="server"/><br><br>
         Email : &nbsp;&nbsp;<asp:texTBox id="txtEmail" runat="server"/>&nbsp;
         <asp:RegularExpressionValidator
        ControlToValidate="txtEmail"
        Text=" @ ."
        ValidationExpression=".*@.*\..*"
        Display="Dynamic"
        runat="server"
        /><br><br>
        <asp:Button id ="btOk" text="Ok" OnClick="MyMethode" runat="server"/>&nbsp;&nbsp;&nbsp;
        <asp:Button id="btCancel" text="Cancel" runat="server"/>
         <hr>
         <asp:label id="lbMessage" runat="server"/>
    </form>
</body>
</html>
<script language="c#" runat="server">
    private void MyMethode(Object s, EventArgs e)
    {
        lbMessage.Text = "Student:"+ txtID.Text + "<br>";
        lbMessage.Text += "Name:"+ txtName.Text + "<br>";
        lbMessage.Text += " Age:"+ txtAge.Text + "<br>";
        lbMessage.Text += " Email :"+ txtEmail.Text + "<br>";
        
    }
</script>