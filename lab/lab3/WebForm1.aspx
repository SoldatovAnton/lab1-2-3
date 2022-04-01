<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TradeCompany1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="№" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Имя" SortExpression="Name" />
                    <asp:BoundField DataField="Surname" HeaderText="Фамилия" SortExpression="Surname" />
                    <asp:BoundField DataField="YearOfBirth" HeaderText="Год рождения" SortExpression="YearOfBirth" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:lab3DataBaseConnectionString %>" DeleteCommand="Delete from Customers where Id=@Id" InsertCommand="insert into Customers (Name,Surname,YearOfBirth)  values(@Name,@Surname,@YearOfBirth)" SelectCommand="SELECT * FROM [Customers]" UpdateCommand="UPDATE Customers SET Name=@Name, Surname=@Surname, YearOfBirth=@YearOfBirth  WHERE (Id = @Id)">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="nameCustomer" Name="Name" PropertyName="Text" />
                    <asp:ControlParameter ControlID="surnameCustomer" Name="Surname" PropertyName="Text" />
                    <asp:ControlParameter ControlID="yearOfBirthCustomer" Name="YearOfBirth" PropertyName="Text" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="Name" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="GridView1" Name="Surname" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="GridView1" Name="YearOfBirdth" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" Height="32px" OnClick="Button1_Click" Text="Добавить заказчика" Width="162px" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Height="29px" OnClick="Button2_Click" Text="Обновить данные" Width="183px" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Height="25px" OnClick="Button3_Click" Text="Удалить заказчика" Width="194px" />
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server" Visible="False">
                Имя:<asp:TextBox ID="nameCustomer" runat="server"></asp:TextBox>
                <br />
                Фамилия:<asp:TextBox ID="surnameCustomer" runat="server"></asp:TextBox>
                <br />
                Год рождения<asp:TextBox ID="yearOfBirthCustomer" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Добавить" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Отмена" />
            </asp:Panel>
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" Width="354px">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="№" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Title" HeaderText="Название" SortExpression="Title" />
                    <asp:BoundField DataField="IdCust" HeaderText="Покупатель" ReadOnly="True" SortExpression="IdCust" />
                    <asp:BoundField DataField="Price" HeaderText="Цена" SortExpression="Price" />
                    <asp:BoundField DataField="Quant" HeaderText="Кол-во" SortExpression="Quant" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:lab3DataBaseConnectionString %>" DeleteCommand="Delete from Orders where Id=@Id" InsertCommand="insert into Orders (Title,IdCust,Price,Quant) values (@Title,@IdCust,@Price,@Quant)" SelectCommand="SELECT * FROM [Orders] WHERE ([IdCust] = @IdCust)" UpdateCommand="UPDATE Orders SET Title = @Title, IdCust = @IdCust, Price = @Price, Quant = @Quant WHERE (Id = @Id)">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="GridView2" Name="Id" PropertyName="SelectedValue" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="titleOrder" Name="Title" PropertyName="Text" />
                    <asp:ControlParameter ControlID="GridView1" Name="IdCust" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="priceOrder" Name="Price" PropertyName="Text" />
                    <asp:ControlParameter ControlID="quantOrder" Name="Quant" PropertyName="Text" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="IdCust" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="GridView2" Name="Title" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="GridView1" Name="IdCust" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="GridView2" Name="Price" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="GridView2" Name="Quant" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="GridView2" Name="Id" PropertyName="SelectedValue" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Добавить" Visible="False" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Обновить" Visible="False" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Удалить" Visible="False" />
            <br />
            <br />
            <asp:Panel ID="Panel2" runat="server" Visible="False">
                Название:
                <asp:TextBox ID="titleOrder" runat="server"></asp:TextBox>
                <br />
                Цена:<asp:TextBox ID="priceOrder" runat="server"></asp:TextBox>
                <br />
                Кол-во:<asp:TextBox ID="quantOrder" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="Добавить" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="Отмена" />
                <br />
            </asp:Panel>
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
