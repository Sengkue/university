<html>
    <head>
        <title>
            CheckBoxList
        </title>
    </head>
    <body>
        <form runat="server">
            <h2>xouayang</h2>
            <h3>Please Choice</h3>
           <asp:CheckBoxList id="chklist" runat="server">
               <asp:ListItem Text="Java"/>
               <asp:listitem text="PHP" />
               <asp:listitem text="Node Js " />

           </asp:CheckBoxList>
           <br/>
            <asp:Button id="btnsubmit" text="Submit" onclick="Subcheck"  runat="server" />
            <hr>
            <asp:label id="lbl" runat="server"/>
        </form>
    </body>

</html>
<script language="c#" runat="server">
    private void Subcheck(Object s, EventArgs e){
        // ListItem itMusic;
        String PR="";
        foreach (ListItem programmimg in chklist.Items){
            if(programmimg.Selected==true){
                PR+=programmimg.Text+", ";
            }
        }
        lbl.Text=PR;
    }
    
</script>
