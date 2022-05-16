<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ວຽກບ້ານ asp.net</title>
    <style>
        *{
            font-family: phetsarath OT;
            font-size: 18;
            font-weight: bold;
        }
    
    </style>
</head>
<body>
    
<h1>ເຊື່ອຕໍ່ກັບຖານຂໍ້ມູນ MS ACCESS</h1><br>
    <div >
        <form runat="server">

            <table border="2">
                <tr>
                    <td class="d1">ID</td>
                    <td><asp:texTBox class="input" id="txtID" runat="server"/>
                        <asp:RequiredFieldValidator ControlToValidate="txtID" Errormessage="ລະຫັດບໍ່ໃຫ້ເປັນຄາຫວ່າງ" runat="server"/><br></td>
                </tr>
                <tr>
                    <td class="d1">ຊື່:</td>
                    <td><asp:texTBox class="input" id="txtName" runat="server"/></td>
                </tr>
                <tr>
                    <td class="d1">ນາມສະກຸນ:</td>
                    <td><asp:texTBox class="input" id="dfldsk" runat="server"/></td>
                </tr>
                <tr>
                    <td class="d1">ເພດ:</td>
                    <td><asp:texTBox class="input" type="radio" id="sexf" runat="server"/>ຍິງ<asp:texTBox type="radio" id="sexm" runat="server"/>ຊາຍ</td>
                </tr>
                <tr>
                    <td class="d1">ອີແມວ :</td>
                    <td> <asp:texTBox class="input" id="txtEmail" runat="server"/>
                        <asp:RegularExpressionValidator ControlToValidate="txtEmail" Text=" ອີເມວຕ້ອງມີ @." ValidationExpression=".*@.*\..*" Display="Dynamic" runat="server"/> 
                    </td>
                </tr>
                <tr>
                    <td class="d1">ລັດຫັດປະເທດ:</td>
                    <td> <asp:texTBox class="input" id="txtAge" type="number" runat="server"/>
                    
                        <asp:RequiredFieldValidator ControlToValidate="txtAge" MinimumValue="1" MaximumValue="3" Type="INteger" EnableClientScript="false" Errormessage=" ລະຫັດປະເທຕ້ອງມີ 3ຕົວ!" runat="server"/> <br>
                        ສາຂາຮຽນ : <asp:DropdownList id="MajorID" Selected="true" runat="server"> 
                            <asp:ListItem Text="ວິທະຍາສາດຄອຍພີວເພີ"/>
                            <asp:ListItem Text="ການພັດທະນາໂປເເກຣມ"/>
                            <asp:ListItem Text="ການພັດທະນາເວັບໄຊ"/>
                            </asp:DropdownList>
                        <!-- ສາຂາຮຽນ:<asp:DropDownList
                           id="DropdownName"
                           Runat="Server">
                           <asp:ListItem Text="ວິທະຍາສາດຄອຍພີວເພີ" />
                           <asp:ListItem Text="ການພັດທະນາໂປເເກຣມ" /> <asp:ListItem
                           Text="ການພັດທະນາເວັບໄຊ" />
                           <asp:ListItem Text="ເລືອກສາຂາທີ່ຕ້ອງການ" selected="true" />
                       </asp:DropDownList> -->
                    
                    
                    </td>
                </tr>
                <tr>
                    <td class="d1"> ພາສາໂປຣເເກມທີ່ມັກທີ່ສຸດ </td>
                    <td> <asp:CheckBoxList
                        id="chkFavouriteMusic"
                        Runat="Server">
                        <asp:ListItem Text="Java" />
                        <asp:ListItem Text="PHP" /> 
                        <asp:ListItem Text=" VB " />
                    </asp:CheckBoxList>
                    <asp:Button id ="btOk" text="ບັນທຶກ" OnClick="MyMethode" runat="server"/></td>
                </tr>
          
            <br>
            </table>
            <!-- <asp:Button id="btCancel" text="Cancel" runat="server"/> <br> -->
            <hr>
            <asp:label id="lbMessage" runat="server"/>
            
        </form>
    </div>
 
    
</body>
</html>

<script language="c#" runat="server">
    private void MyMethode(Object s, EventArgs e)
    {
        lbMessage.Text = "ລະຫັດ:"+ txtID.Text + "<br>";
        lbMessage.Text += "ຊື່:"+ txtName.Text + "<br>";
        
    }
</script>