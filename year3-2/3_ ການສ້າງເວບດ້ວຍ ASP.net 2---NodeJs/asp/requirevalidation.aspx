<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RequiredFieldValidator</title>
</head>
<body>
    <form runat="server">
     ID: <asp:textBox id="txtID" runat="server"/><br/> <br/>
     <asp:RequiredFieldValidator 
     ControlToValidate="txtID"
     text="Can not leave blank ID "
     runat="server"/> <br/>

     Name: <asp:textBox id="txtName" runat="server"/><br/> <br>
    
     

     Score: <asp:textBox id="txtScore" runat="server"/><br/> <br/>
     <asp:RangeValidator
     ControlToValidate="txtScore"
     MinimumValue="0"
     MaximumValue="100"
     Type="Integer"
     EnableClientScript="false"
     text="Must be from 1 to 100"
     runat="server"    
     />   
      <br/> <br/>
     

    Password: <asp:textBox id="txtPassword" textmode="password" runat="server"/><br/> <br/>
    ConfirmPassword: <asp:textBox id="txtCPassword" textmode="password" runat="server"/><br/> <br/>
     
    <asp:CompareValidator
     ControlToValidate="txtPassword"
     ControlToCompare="txtCPassword"
     text="the password is not match"
     Display="Dynamic"
     Operator="equal"
     runat="server"
    /> <br/>   


   Email: <asp:textBox id="txtEmail" runat="server"/><br/> <br/>
    
   <asp:RegularExpressionValidator
     ControlToValidate="txtEmail"
     text="Invaild Email missing @ sign"
     ValidationExpression=".*@.*\..*"
     Display="Dynamic"
     runat="server"
   />

   CountryCode : <asp:textBox id="txtCode" runat="server"/>
   <asp:RegularExpressionValidator
     ControlToValidate="txtCode"
     text="Three digit"
     ValidationExpression="[0-9]{3}"
     Display="Dynamic"
     runat="server"
   /> <br/>
   
   <asp:Button id="btnSubmit" text="Submit" runat="server"/>
    </form>
    
</body>
</html>