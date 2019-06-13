<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master Page/Management.master" CodeBehind="Genres.aspx.vb" Inherits="Site.Genres" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IDName" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="IDName" HeaderText="IDName" ReadOnly="True" SortExpression="IDName" />
        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
    </Columns>
</asp:GridView>
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IDName" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." Height="160px" Width="495px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="IDName" HeaderText="IDName" ReadOnly="True" SortExpression="IDName" />
            <asp:BoundField DataField="QueQuan" HeaderText="QueQuan" SortExpression="QueQuan" />
            <asp:BoundField DataField="NamSinh" HeaderText="NamSinh" SortExpression="NamSinh" />
            <asp:BoundField DataField="GioiTinh" HeaderText="GioiTinh" SortExpression="GioiTinh" />
            <asp:BoundField DataField="SoThich" HeaderText="SoThich" SortExpression="SoThich" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:minhtri1511ConnectionString1 %>" DeleteCommand="DELETE FROM [Thong Tin Thanh Vien] WHERE [IDName] = @IDName" InsertCommand="INSERT INTO [Thong Tin Thanh Vien] ([IDName], [QueQuan], [NamSinh], [GioiTinh], [SoThich]) VALUES (@IDName, @QueQuan, @NamSinh, @GioiTinh, @SoThich)" ProviderName="<%$ ConnectionStrings:minhtri1511ConnectionString1.ProviderName %>" SelectCommand="SELECT [IDName], [QueQuan], [NamSinh], [GioiTinh], [SoThich] FROM [Thong Tin Thanh Vien]" UpdateCommand="UPDATE [Thong Tin Thanh Vien] SET [QueQuan] = @QueQuan, [NamSinh] = @NamSinh, [GioiTinh] = @GioiTinh, [SoThich] = @SoThich WHERE [IDName] = @IDName">
        <DeleteParameters>
            <asp:Parameter Name="IDName" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="IDName" Type="String" />
            <asp:Parameter Name="QueQuan" Type="String" />
            <asp:Parameter Name="NamSinh" Type="String" />
            <asp:Parameter Name="GioiTinh" Type="String" />
            <asp:Parameter Name="SoThich" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="QueQuan" Type="String" />
            <asp:Parameter Name="NamSinh" Type="String" />
            <asp:Parameter Name="GioiTinh" Type="String" />
            <asp:Parameter Name="SoThich" Type="String" />
            <asp:Parameter Name="IDName" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:minhtri1511ConnectionString1 %>" DeleteCommand="DELETE FROM [Danh Sach Thanh Vien] WHERE [IDName] = @IDName" InsertCommand="INSERT INTO [Danh Sach Thanh Vien] ([IDName], [UserName]) VALUES (@IDName, @UserName)" ProviderName="<%$ ConnectionStrings:minhtri1511ConnectionString1.ProviderName %>" SelectCommand="SELECT [IDName], [UserName] FROM [Danh Sach Thanh Vien]" UpdateCommand="UPDATE [Danh Sach Thanh Vien] SET [UserName] = @UserName WHERE [IDName] = @IDName">
    <DeleteParameters>
        <asp:Parameter Name="IDName" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="IDName" Type="String" />
        <asp:Parameter Name="UserName" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="UserName" Type="String" />
        <asp:Parameter Name="IDName" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
