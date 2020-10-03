<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashBoard.aspx.cs" Inherits="MovieBooking.Account.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <table>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label1" runat="server" Text=" Movie Name" Font-Bold="True"></asp:Label></td>
                <td style="width: 137px">
                    <asp:DropDownList ID="movname" runat="server" AppendDataBoundItems="True" AutoPostBack="True" Font-Bold="True">
                        <asp:ListItem>Select Movie</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="movname"
                        ErrorMessage="*" InitialValue="Select Movie"></asp:RequiredFieldValidator></td>
                <td style="width: 100px">
                    </td>
                <td style="width: 100px">
                    <asp:Button ID="Button2" runat="server" Text="Delete" Font-Bold="True" OnClick="Button2_Click" /></td>
                <td style="width: 100px">
                    </td>
                <td style="width: 100px">
                </td>
            </tr>
        </table>
        </div>
    <br />
    <br />
      <asp:GridView ID="GrdMovies" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Image ID="ImgMovieURL" runat="server" ImageUrl='<%# Eval("movieimage", "~/Admin/images/{0}") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="lblMovieID" runat="server" Text='<%# Eval("MovieID") %>'></asp:Label>
                        <asp:Label ID="lblMovieName" runat="server" Text='<%# Eval("MovieName") %>'></asp:Label>
                        <asp:Label ID="lblMovieSummary" runat="server" Text='<%# Eval("MovieSummary") %>'></asp:Label>
                        <asp:Label ID="lblMovieActors" runat="server" Text='<%# Eval("MovieActors") %>'></asp:Label>
                        <asp:Label ID="lblRating" runat="server" Text='<%# Eval("MovieRating") %>'></asp:Label>
                        <asp:Label ID="lblMovieDirector" runat="server" Text='<%# Eval("MovieDirector") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
