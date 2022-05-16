<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cookies</title>
</head>
<body>
   <form runat="server">
       <div align="center">
        <strong>CookieName:</strong><br>
        <asp:TextBox id="ckname" runat="server" size="10" /> <br>
        <strong>Value:</strong><br>
        <asp:TextBox id="ckvalue" runat="server" size="10" /><br>
        <strong>Expires:</strong><br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox id="ckexpires" runat="server" size="2" />&nbsp;<small>Minuted</small><br>
      
       </div>
      
       <p align="center">
           <asp:button id="b1" runat="server" SubmitBehavior="True" Text="AddCookie" Onclick="Add_Cookie" />
           <asp:button id="b2" runat="server" SubmitBehavior="True" Text="ReadCookie" Onclick="Read_Cookie" />
           <strong>(Enter Cookie Name)</strong>
           

       </p>
       <p align="center">
           <asp:label id="lb" runat="server" BackColor="#dddddd" width="90%"/>
       </p>
       


   </form> 
</body>
</html>
<script runat="server" >
    Sub Add_Cookie(sender As Object, e As EventArgs)
            If(ckname.Text = "") Then
                lb.Text = "Blank Cookie"
            Else 
                Response.Cookies(ckname.Text).Value = ckvalue.Text
                Response.Cookies(ckname.Text).Expires = DateTime.Now.AddMinutes(ckexpires.Text)
                lb.Text = "Cookie Created"
            End If
    End Sub

    Sub Read_Cookie(sender As Object, e As EventArgs)
            If(ckname.Text = "") Then
                lb.Text = "No Cookie"
            Else If(Request.Cookies(ckname.Text) Is Nothing) Then
                lb.Text = "Enter Cookie first"
            Else
                lb.Text = "Cookies (''" & ckname.Text & "'') = " & _
                    Request.Cookies(ckname.Text).Value 
            End If
    End Sub

</script>