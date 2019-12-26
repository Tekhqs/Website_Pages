<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Website._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <ul class="nav navbar-nav">
                        <li><a runat="server" href="~/Forms/RecurringForm.aspx" target="_blank">Recurring Form</a></li>
                        <li><a runat="server" href="~/Forms/ManageRecurringForm.aspx" target="_blank">Manage Recurring Form</a></li>
                    </ul>

</asp:Content>
