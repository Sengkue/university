<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HyperLink</title>
</head>
<body>
   <form runat="server">
       <asp:HyperLink style="font-size: 30px;" id="hyperLink" text="go to other page" runat="server">

       </asp:HyperLink>

   </form> 
</body>
</html>

<script language="c#" runat="server">
  private void Page_Load(){
      hyperLink.NavigateUrl="ListBox.aspx";
  }
</script>