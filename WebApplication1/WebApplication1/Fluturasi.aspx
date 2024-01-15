<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Fluturasi.aspx.cs" Inherits="WebApplication1.WebForm6" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Cauta dupa nume" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Selecteaza toti" />
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="True" DisplayToolbar="False" GroupTreeImagesFolderUrl="" Height="1170px" ReportSourceID="CrystalReportSource2" ToolbarImagesFolderUrl="" ToolPanelWidth="200px" Width="1104px" />
    <CR:CrystalReportSource ID="CrystalReportSource2" runat="server">
        <Report FileName="CrystalReport2.rpt">
        </Report>
</CR:CrystalReportSource>
    <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
        <Report FileName="FluturasReprot.rpt">
        </Report>
    </CR:CrystalReportSource>
</asp:Content>
