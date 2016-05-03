<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Layout/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Administrator.aspx.cs" Inherits="proba4.Administrator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <br />
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="5" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="140px" Width="848px" CellSpacing="3">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" HorizontalAlign="Justify" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" HeaderStyle-HorizontalAlign="Justify" HeaderStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Justify" ItemStyle-VerticalAlign="Middle" >
<HeaderStyle HorizontalAlign="Justify" VerticalAlign="Middle"></HeaderStyle>

<ItemStyle HorizontalAlign="Justify" VerticalAlign="Middle"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:CommandField ButtonType="Button" ControlStyle-CssClass="buttonSubmit" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" >
<ControlStyle CssClass="buttonSubmit"></ControlStyle>
                </asp:CommandField>
            </Columns>
            <EditRowStyle BackColor="#999999" HorizontalAlign="Center" VerticalAlign="Middle" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDbConnectionString %>" SelectCommand="SELECT * FROM [Persons]" DeleteCommand="DELETE FROM Persons WHERE (Id = @Id)" UpdateCommand="UPDATE Persons SET Name = @Name, Surname = @Surname, Email = @Email, Password = @Password, Country = @Country WHERE (Id = @Id)">
            <DeleteParameters>
                <asp:ControlParameter ControlID="GridView1" Name="Persons" PropertyName="SelectedValue" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" />
                <asp:Parameter Name="Surname" />
                <asp:Parameter Name="Email" />
                <asp:Parameter Name="Password" />
                <asp:Parameter Name="Country" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
