<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master Page/Frontend.Master" CodeBehind="CSDL.aspx.vb" Inherits="Site.CSDL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IDname" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="IDname" HeaderText="IDname" ReadOnly="True" SortExpression="IDname" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [Danh Sach Thanh Vien] WHERE [IDname] = @IDname" InsertCommand="INSERT INTO [Danh Sach Thanh Vien] ([IDname], [Username]) VALUES (@IDname, @Username)" ProviderName="<%$ ConnectionStrings:DatabaseConnectionString1.ProviderName %>" SelectCommand="SELECT [IDname], [Username] FROM [Danh Sach Thanh Vien]" UpdateCommand="UPDATE [Danh Sach Thanh Vien] SET [Username] = @Username WHERE [IDname] = @IDname">
        <DeleteParameters>
            <asp:Parameter Name="IDname" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="IDname" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="IDname" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>






    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="IDname" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="IDname" HeaderText="IDname" ReadOnly="True" SortExpression="IDname" />
            <asp:BoundField DataField="QueQuan" HeaderText="QueQuan" SortExpression="QueQuan" />
            <asp:BoundField DataField="NamSinh" HeaderText="NamSinh" SortExpression="NamSinh" />
            <asp:BoundField DataField="GioiTinh" HeaderText="GioiTinh" SortExpression="GioiTinh" />
            <asp:BoundField DataField="SoThich" HeaderText="SoThich" SortExpression="SoThich" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [Thong Tin Thanh Vien] WHERE [IDname] = @IDname" InsertCommand="INSERT INTO [Thong Tin Thanh Vien] ([IDname], [QueQuan], [NamSinh], [GioiTinh], [SoThich]) VALUES (@IDname, @QueQuan, @NamSinh, @GioiTinh, @SoThich)" ProviderName="<%$ ConnectionStrings:DatabaseConnectionString1.ProviderName %>" SelectCommand="SELECT [IDname], [QueQuan], [NamSinh], [GioiTinh], [SoThich] FROM [Thong Tin Thanh Vien]" UpdateCommand="UPDATE [Thong Tin Thanh Vien] SET [QueQuan] = @QueQuan, [NamSinh] = @NamSinh, [GioiTinh] = @GioiTinh, [SoThich] = @SoThich WHERE [IDname] = @IDname">
        <DeleteParameters>
            <asp:Parameter Name="IDname" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="IDname" Type="String" />
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
            <asp:Parameter Name="IDname" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>








</asp:Content>