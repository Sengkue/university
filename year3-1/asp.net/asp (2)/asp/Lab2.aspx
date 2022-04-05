<script language="c#" runat="server">
  private void Page_Load(Object s,EventArgs e){
    lbMessage.Text = "<h2>This is an ASP.Net webprogramming</h2>";
  }

</script>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ASP.Net</title>
</head>
<body>
    <h1>ASP.NET 3CW2 Lab2</h1>
    <form id="f1" runat = "server">
      <asp:label id="lbMessage" runat="server">

      </asp:label>     
    </form>
</body>
</html>