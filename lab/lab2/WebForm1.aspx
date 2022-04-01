<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="lab1.lab2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:Label ID="labelStart" runat="server" Text="Введите данные"></asp:Label>
        </p>

        <p>
            Имя:
        <asp:TextBox ID="name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="validName" ControlToValidate="name" runat="server"
                ErrorMessage="Строка с именем не должна быть пустой"></asp:RequiredFieldValidator>
        </p>

        <p>
            Пароль:
            <asp:TextBox ID="password" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="passwordValidator" runat="server"
                ValidationExpression="\d{8,16}" ControlToValidate="password"
                ErrorMessage="Минимальная длина пароля 8 символов, максимальная 16"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="passwordReauired" ControlToValidate="password" runat="server"
                ErrorMessage="Строка с паролем не заполнена"></asp:RequiredFieldValidator>
        </p>

        <p>
            Подтвердите пароль:
            <asp:TextBox ID="passwordConfirm" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="passwordConfirmValidator" runat="server" ControlToCompare="password"
                ControlToValidate="passwordConfirm" ErrorMessage="Пароли не совпадают"></asp:CompareValidator>
            <asp:RequiredFieldValidator ID="passwordConfirmReauired" ControlToValidate="passwordConfirm" runat="server"
                ErrorMessage="Подтвердите пароль"></asp:RequiredFieldValidator>
        </p>

        <p>
            Электронная почта:
        <asp:TextBox ID="email" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="emailValidator" runat="server"
                ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                ErrorMessage="Почта введена некорректно" ControlToValidate="email"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="emailRequired" ControlToValidate="email" runat="server"
                ErrorMessage="Введите почту"></asp:RequiredFieldValidator>
        </p>

        <p>
            Возраст:
        <asp:TextBox ID="age" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="ageValidator" runat="server" MinimumValue="18" MaximumValue="65" ControlToValidate="age"
                ErrorMessage="Возраст должен быть в диапазоне от 18 до 65"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="ageRequired" ControlToValidate="age" runat="server"
                ErrorMessage="Введите возраст"></asp:RequiredFieldValidator>
        </p>

        <p>
            <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click"/>
        </p>

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

    </form>
</body>
</html>
