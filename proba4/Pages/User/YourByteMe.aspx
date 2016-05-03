<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Layout/AdminMaster.Master" AutoEventWireup="true" CodeBehind="YourByteMe.aspx.cs" Inherits="proba4.YourByteMe" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;
   
    </p>
    <p>
        &nbsp;
   
    </p>
    <p>
        <br />
    </p>
    <p>
    </p>
    <div class="asideLeft">
        <asp:Label ID="Label3" runat="server" Text="Pick the day"></asp:Label>
        <asp:TextBox ID="TextBoxDate" runat="server" Style="font-weight: bold; border-radius: 5px 5px 5px 5px; opacity: 1; box-shadow: 3px 2px 12px 3px #acadad; width: 100px; height: 26px; padding: 10px; margin: 2px;" ></asp:TextBox><asp:ImageButton ID="ImageButtonCalendar" runat="server" Style="height: 55px; width: 78px;" ImageUrl="~/img/calendar1.png" OnClick="ImageButtonCalendar_Click" />
        <br />
        <asp:Calendar ID="CalendarDailyProducts" runat="server" OnSelectionChanged="CalendarDailyProducts_SelectionChanged" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
            <NextPrevStyle VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#808080" />
            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
            <SelectorStyle BackColor="#CCCCCC" />
            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
            <WeekendDayStyle BackColor="#FFFFCC" />
        </asp:Calendar>
        &nbsp;    
       
        <hr />
        <asp:Label ID="LabelSearch" runat="server" Text="Search product"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="LabelNote" runat="server" CssClass="note" Text="Please note that 100g = 1"></asp:Label>
        <br />
        <br />
        <div>
            <asp:DropDownList ID="DropDownListCategory" CssClass="dropdownPC" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Category" DataValueField="Id" OnTextChanged="CategorySelectBoxChange">
            </asp:DropDownList>
            &nbsp;
       
            <asp:DropDownList ID="DropDownListProduct" CssClass="dropdownPC" runat="server" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Id" AutoPostBack="True" OnTextChanged="ProductSelectBoxChange">
            </asp:DropDownList>

            &nbsp;<asp:DropDownList ID="DropDownListAmount" CssClass="dropdownPC" runat="server">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
            </asp:DropDownList>
            &nbsp;<asp:Button ID="AddProductBtn" class="buttonSubmit" runat="server" Text="add" OnClick="AddProductBtnClick" />
        </div>
        <br />
        <br />

        <br />
        &nbsp;<asp:Label ID="LabelProductName" CssClass="labelProduct" runat="server" Text=""></asp:Label>
        <br />
        <br />
        &nbsp;<asp:Label ID="LabelProductCalories" runat="server" Text=""></asp:Label>
    </div>

    <div class="asideRight">
        <asp:GridView ID="ProductTableGV" ShowHeaderWhenEmpty="true" CssClass="tableGV tableGV-bordered" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                <asp:BoundField DataField="TotalCalories" HeaderText="TotalCalories" SortExpression="TotalCalories" />
                <asp:BoundField DataField="TotalSugar" HeaderText="TotalSugar" SortExpression="TotalSugar" />
                <asp:BoundField DataField="TotalCarbs" HeaderText="TotalCarbs" SortExpression="TotalCarbs" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:Button ID="ButtonSave" runat="server" Text="save" class="buttonSubmit" OnClick="ButtonSave_Click" />
    </div>
    <br />
    &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDbConnectionString %>" SelectCommand="SELECT * FROM [Category] ORDER BY Category"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyDbConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>

</asp:Content>

