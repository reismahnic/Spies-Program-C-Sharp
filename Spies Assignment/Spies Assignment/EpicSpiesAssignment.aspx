<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EpicSpiesAssignment.aspx.cs" Inherits="Spies_Assignment.EpicSpiesAssignment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" Height="190px" ImageUrl="~/App_Data/epic-spies-logo.jpg" />
            <br />
            <br />
            <h1 class="auto-style1">Spy New Assignment Form</h1>
            <br />
            Spy Code Name:
            <asp:TextBox ID="NameBox" runat="server"></asp:TextBox>
            <br />
            <br />
            New Assignment Name:
            <asp:TextBox ID="AssignNameBox" runat="server"></asp:TextBox>
            <br />
            <br />
            End Date of Previous Assignment:<asp:Calendar ID="EndPreviousCalen" runat="server"></asp:Calendar>
            <br />
            Start Date of New Assignment:<asp:Calendar ID="StartNewCalen" runat="server"></asp:Calendar>
            <br />
            Projected End Date of New Assignment:<asp:Calendar ID="EndNewCalen" runat="server"></asp:Calendar>
            <br />
            <br />
            <asp:Button ID="SubmitBtn" runat="server" OnClick="SubmitBtn_Click" Text="Assign Spy" />
            <br />
            <br />
            <br />
            <asp:Label ID="OutputLbl" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
