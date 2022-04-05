<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body bgcolor="<%=myBgColor  %>">
   <form runat="server">
    <h2>Please select your favorite color:</h2>
     <p>
         <asp:RadioButtonList id="radColor" AutopostBack="True" runat="server">
     <asp:listItem value="W" Text="White" Selected="true"/>
     <asp:listItem value="R" Text="Red"/>
     <asp:listItem value="B" Text="Blue"/>
     <asp:listItem value="G" Text="Green"/>
     <asp:listItem value="Y" Text="Yellow"/>
     <asp:listItem value="Gr" Text="Gray"/>

         </asp:RadioButtonList>
     </p>
   </form> 
</body>
</html>

<script language="C#" runat="server">
 String myBgColor = "#FFFFFF";
 private void Page_Load(){
     if(IsPostBack==true) {
         myBgColor=radColor.SelectedItem.Text;
     }
 }
</script>