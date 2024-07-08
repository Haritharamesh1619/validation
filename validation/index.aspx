<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="validation.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
        
    <style type="text/css">
        .auto-style1 {
            width: 95%;
            margin-left: 33px;
        }
        .auto-style5 {
            width: 182px;
            height: 33px;
            text-align: center;
        }
        .auto-style10 {
            height: 31px;
        }
        .auto-style13 {
            height: 33px;
            text-align: left;
            width: 368px;
        }
        .auto-style15 {
            width: 368px;
            text-align: left;
        }
        .auto-style16 {
            width: 182px;
            text-align: center;
        }
        .auto-style17 {
            width: 154px;
            text-align: left;
        }
        .auto-style18 {
            height: 33px;
            text-align: left;
            width: 154px;
        }
        .auto-style19 {
            text-align: center;
        }
    </style>
    
        
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center> <h1> CUSTOMER DETAIL</h1></center>


            

            <table class="auto-style1">
                <tr>
                    <td class="auto-style16">First Name</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style15">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfname" ErrorMessage="Plz  enter the First Name  " ForeColor="#FF0066"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">Last name</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style15">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlname" ErrorMessage="Plz  enter the Last Name  " ForeColor="#FF0066"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">Email-Id</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style15">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail" ErrorMessage="Plz  enter proper Email id" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage=" Invalid Email Id" ForeColor="#FF33CC" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Password</td>
                    <td class="auto-style18">
                        <asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpwd" ErrorMessage="Plz  enter  correct Password " ForeColor="#FF0066"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">Confrim Password</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="txtcpwd" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style15">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtcpwd" ErrorMessage="Plz  enter confrim password" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpwd" ControlToValidate="txtcpwd" ErrorMessage="Password incorrect " ForeColor="#FF33CC"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">Age</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style15">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtage" ErrorMessage="Plz  enter your age" ForeColor="#FF0066"></asp:RequiredFieldValidator>
&nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtage" ErrorMessage="Age should be above 18 and below30" ForeColor="#FF33CC" MaximumValue="30" MinimumValue="18" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Mobile no</td>
                    <td class="auto-style18">
                        <asp:TextBox ID="txtmob" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtmob" ErrorMessage="Plz  enter your mobile no" ForeColor="#FF0066"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtmob" ErrorMessage=" Invalid Mobile no" ForeColor="#FF33CC" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">User id</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style15">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtid" ErrorMessage="Plz  enter your id" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtid" ErrorMessage="User id should be &gt;3 character" ForeColor="#FF33CC" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10" colspan="3"></td>
                    </tr>
                <tr>
                    <td class="auto-style19" colspan="3">
                        <asp:Button ID="btn" runat="server" OnClick="btn_Click" Text="submit" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19" colspan="3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19" colspan="3">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#9933FF" />
                    </td>
                </tr>
            </table>


            

        </div>
    </form>
    
</body>
</html>
