<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Layout/AdminMaster.Master" AutoEventWireup="true" CodeBehind="PageRaports.aspx.cs" Inherits="proba4.PageRaports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="tableGV tableGV-bordered" DataKeyNames="Id" DataSourceID="SqlDataSourceUserProducts">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
            <asp:BoundField DataField="ProductId" HeaderText="ProductId" SortExpression="ProductId" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
            <asp:BoundField DataField="Total_Calories" HeaderText="Total_Calories" SortExpression="Total_Calories" />
            <asp:BoundField DataField="Total_Sugar" HeaderText="Total_Sugar" SortExpression="Total_Sugar" />
            <asp:BoundField DataField="Total_Carbs" HeaderText="Total_Carbs" SortExpression="Total_Carbs" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSourceUserProducts" runat="server" ConnectionString="<%$ ConnectionStrings:MyDbConnectionString %>" SelectCommand="SELECT * FROM [UserProducts]"></asp:SqlDataSource>
    <br />
</asp:Content>
