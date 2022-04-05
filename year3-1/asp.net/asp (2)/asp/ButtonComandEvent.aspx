<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>button Command event</title>
</head>
<body>
    <form runat="server" style="margin-top: 5rem;">
        <asp:Button
         id="btnSubmit" 
         text="Add 5 " 
         CommandName="Add"
         CommandArgument="5"
         runat="server" 
         
         /> &

         <asp:Button
         text="Subtract 10 " 
         CommandName="Subtract"
         CommandArgument="10"
         runat="server" 
         />
        <hr/>
        <asp:label id="lblMessage" runat="server"/>
       </form>
</body>
</html>