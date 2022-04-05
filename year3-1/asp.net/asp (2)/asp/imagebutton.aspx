<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>image button </title>
</head>
<body>

    <form runat="server">
      <h1>this is image button</h1>
      <asp:ImageButton style="width: 100px;" 
      ImageUrl ="./google.png"  
      onclick="ImageButton_click"
      runat="server"
      />
      <hr/>
      <asp:label id="lblMessage" runat="server"/>
    </form>
       
</body>
</html>
<script language="VB" runat="server">
    Sub ImageButton_click(s as Object, e As ImageClickEventArgs)
    lblMessage.Text = e.x & "," &  e.y 

    end Sub
</script>