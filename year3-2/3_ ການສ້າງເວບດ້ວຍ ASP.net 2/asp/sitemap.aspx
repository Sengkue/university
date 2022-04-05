<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Site map </title>
</head>
<body>
    <form id="form1" runat="server" >
        <div>
            <asp:TreeView id="mntree1" runat="server" ShowLines="True">
                <Nodes>
                   
                    <asp:TreeNode text="ຄອມພິວເຕີໂປຣແກຣມມິງ" value="computerprogramming">
                        <asp:TreeNode NavigateUrl="#" target="_Blank" text="ຈາວາ 1" value="java1" ></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="#" Target="_Blank" Text="ຈາວາ 2" Value="java2" ></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="#" target="_Blank" text="C# 1" value="C#1" ></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="#" Target="_Blank" Text="C# 2" Value="C#2" ></asp:TreeNode>
                    </asp:TreeNode>
                   
                </Nodes>
            </asp:TreeView>
        </div>
        <div>
            <asp:TreeView id="mntree2" runat="server" ShowLines="True">
                <Nodes>
                    <asp:TreeNode text="ເວບໂປຣແກຣມມິງ" value="Webprogramming">
                        <asp:TreeNode NavigateUrl="#" target="_Blank" text="ເຈເອສພີ JSP" value="jsp" ></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="#" target="_Blank" text="ພີເອາພີ PHP" value="php" ></asp:TreeNode>  
                        <asp:TreeNode NavigateUrl="#" target="_Blank" text="JavaScript" value="js" ></asp:TreeNode>    
                    </asp:TreeNode>
                </Nodes>
            </asp:TreeView>
        </div>
    </form>
</body>
</html>