<!DOCTYPE html>
<html lang="en">
  <head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Menus</title>
  </head>
  <body>
    <form id="form1" runat="server">
      <div>
        <asp:Menu id="menus1" runat="server">
          <items>
            <asp:MenuItem
              text="ຄອມພິວເຕີໂປຣເເກຣມມິງ"
              value="computer programming"
            >
              <asp:MenuItem
                NavigateUrl="#"
                text="ຈາວາ 1 "
                Value="Java 1 "
                Target="_Blank"
                runat="server"
              />
              <asp:MenuItem
                NavigateUrl="#"
                text="ຈາວາ 2"
                Value="Java 1"
                Target="_Blank"
                runat="server"
              />
              <asp:MenuItem
                NavigateUrl="#"
                text="C# 1"
                Value="C# 1"
                Target="_Blank"
                runat="server"
              />
              <asp:MenuItem
                NavigateUrl="#"
                text="C# 2"
                Value="C# 2"
                Target="_Blank"
                runat="server"
              />
            </asp:MenuItem>
          </items>

          <items>
            <asp:MenuItem text="ເວບໂປຣເເກຣມມິງ" value="computer programming">
              <asp:MenuItem
                NavigateUrl="#"
                text="ເຈເອສພີ JSP "
                Value="JSP "
                Target="_Blank"
                runat="server"
              />
              <asp:MenuItem
                NavigateUrl="#"
                text="ພີເອສພີ"
                Value="PHP"
                Target="_Blank"
                runat="server"
              />
            </asp:MenuItem>
          </items>
        </asp:Menu>
      </div>
    </form>
  </body>
</html>
