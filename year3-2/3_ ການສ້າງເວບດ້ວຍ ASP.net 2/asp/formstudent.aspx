<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Staudent</title>
</head>
<body style="font-family: phetsarath ot ;">
    <form runat="server">
        ລະຫັດນັກສຶກສາ   &nbsp;&nbsp;<asp:texTBox id="txtID" runat="server" style="margin-left: 1.5rem; padding: 10px;"/>
        <asp:RequiredFieldValidator
         ControlToValidate="txtID"
         Errormessage="ລະຫັດນັກສຶກສາບໍ່ໃຫ້ຫວ່າງເປົ່າ"
         runat="server"/><br><br>
         ຊື່   &nbsp;&nbsp; <asp:texTBox id="txtName" runat="server" style="padding: 10px; margin-left: 6.6rem; "/><br><br>
         ອາຍຸ   &nbsp;&nbsp;<asp:texTBox id="txtAge" runat="server" style="margin-left: 5.8rem;padding: 10px;"/>
         <asp:RequiredFieldValidator
         ControlToValidate="txtAge"
        MinimumValue="1"
        MaximumValue="100"
        Type="INteger"
        EnableClientScript="false"
         Errormessage=" 1 ຫາ 100!"
         runat="server"/><br><br>
         ອີເມວ    &nbsp;&nbsp;<asp:texTBox id="txtEmail" runat="server" style="margin-left: 5.3rem;padding: 10px;"/>&nbsp;
         <asp:RegularExpressionValidator
        ControlToValidate="txtEmail"
        Text=" @ ."
        ValidationExpression=".*@.*\..*"
        Display="Dynamic"
        runat="server"
        /><br><br>
        <asp:Button id ="btOk" text="ບັນທຶກ" OnClick="MyMethode" runat="server" 
        style="font-family: phetsarath ot ;cursor: pointer;;border-radius: 10px; margin-left: 7.5rem; padding:10px;width: 100px; background-color: green;border: none; color: white;"/>&nbsp;&nbsp;&nbsp;
        <asp:Button id="btCancel" text="ຍົກເລີກ" runat="server" style="font-family: phetsarath ot ;cursor: pointer;border-radius: 10px; padding:10px;width: 100px; background-color: green;border: none; color: white;"/>
         <hr>
         <asp:label id="lbMessage" runat="server"/>
    </form>
</body>
</html>
<script language="c#" runat="server">
    private void MyMethode(Object s, EventArgs e)
    {
        lbMessage.Text = "<li>ລະຫັດນັກສຶກສາ : "+ txtID.Text + "</li><br>";
        lbMessage.Text += "<li>ຊື່ : "+ txtName.Text + "</li><br>";
        lbMessage.Text += "<li> ອາຍຸ: "+ txtAge.Text + "</li><br>";
        lbMessage.Text += "<li> ອີເມວ : "+ txtEmail.Text + "</li><br>";
        
    }
</script>