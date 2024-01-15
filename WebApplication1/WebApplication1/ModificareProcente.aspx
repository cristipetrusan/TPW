<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModificareProcente.aspx.cs" Inherits="WebApplication1.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Parola"></asp:Label>
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logare" />
    <br />
<asp:Label ID="Label2" runat="server"></asp:Label>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Visible="False" OnRowUpdated="GridView1_RowUpdated">
    <Columns>
        <asp:CommandField ShowEditButton="True" />
        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
        <asp:BoundField DataField="PAROLA" HeaderText="PAROLA" SortExpression="PAROLA" />
        <asp:BoundField DataField="IMPOZIT_P" HeaderText="IMPOZIT_P" SortExpression="IMPOZIT_P" />
        <asp:BoundField DataField="CAS_P" HeaderText="CAS_P" SortExpression="CAS_P" />
        <asp:BoundField DataField="CASS_P" HeaderText="CASS_P" SortExpression="CASS_P" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionStringSTUDENT %>" DeleteCommand="DELETE FROM &quot;VAL_PROCENTUALE&quot; WHERE &quot;ID&quot; = :original_ID AND ((&quot;PAROLA&quot; = :original_PAROLA) OR (&quot;PAROLA&quot; IS NULL AND :original_PAROLA IS NULL)) AND &quot;IMPOZIT_P&quot; = :original_IMPOZIT_P AND &quot;CAS_P&quot; = :original_CAS_P AND &quot;CASS_P&quot; = :original_CASS_P" InsertCommand="INSERT INTO &quot;VAL_PROCENTUALE&quot; (&quot;ID&quot;, &quot;PAROLA&quot;, &quot;IMPOZIT_P&quot;, &quot;CAS_P&quot;, &quot;CASS_P&quot;) VALUES (:ID, :PAROLA, :IMPOZIT_P, :CAS_P, :CASS_P)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionStringSTUDENT.ProviderName %>" SelectCommand="SELECT * FROM &quot;VAL_PROCENTUALE&quot;" UpdateCommand="UPDATE &quot;VAL_PROCENTUALE&quot; SET &quot;PAROLA&quot; = :PAROLA, &quot;IMPOZIT_P&quot; = :IMPOZIT_P, &quot;CAS_P&quot; = :CAS_P, &quot;CASS_P&quot; = :CASS_P WHERE &quot;ID&quot; = :original_ID AND ((&quot;PAROLA&quot; = :original_PAROLA) OR (&quot;PAROLA&quot; IS NULL AND :original_PAROLA IS NULL)) AND &quot;IMPOZIT_P&quot; = :original_IMPOZIT_P AND &quot;CAS_P&quot; = :original_CAS_P AND &quot;CASS_P&quot; = :original_CASS_P">
    <DeleteParameters>
        <asp:Parameter Name="original_ID" Type="Decimal" />
        <asp:Parameter Name="original_PAROLA" Type="String" />
        <asp:Parameter Name="original_IMPOZIT_P" Type="Decimal" />
        <asp:Parameter Name="original_CAS_P" Type="Decimal" />
        <asp:Parameter Name="original_CASS_P" Type="Decimal" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ID" Type="Decimal" />
        <asp:Parameter Name="PAROLA" Type="String" />
        <asp:Parameter Name="IMPOZIT_P" Type="Decimal" />
        <asp:Parameter Name="CAS_P" Type="Decimal" />
        <asp:Parameter Name="CASS_P" Type="Decimal" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="PAROLA" Type="String" />
        <asp:Parameter Name="IMPOZIT_P" Type="Decimal" />
        <asp:Parameter Name="CAS_P" Type="Decimal" />
        <asp:Parameter Name="CASS_P" Type="Decimal" />
        <asp:Parameter Name="original_ID" Type="Decimal" />
        <asp:Parameter Name="original_PAROLA" Type="String" />
        <asp:Parameter Name="original_IMPOZIT_P" Type="Decimal" />
        <asp:Parameter Name="original_CAS_P" Type="Decimal" />
        <asp:Parameter Name="original_CASS_P" Type="Decimal" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
