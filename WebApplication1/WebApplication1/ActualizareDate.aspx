<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ActualizareDate.aspx.cs" Inherits="WebApplication1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:Label ID="Label3" runat="server" Text="Nume"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Cauta" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Toti" />
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource3" AutoGenerateColumns="False" DataKeyNames="NR_CRT" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowSorting="True" OnRowUpdated="GridView1_RowUpdated">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="NR_CRT" HeaderText="NR_CRT" ReadOnly="True" SortExpression="NR_CRT" />
            <asp:BoundField DataField="NUME" HeaderText="NUME" SortExpression="NUME" />
            <asp:BoundField DataField="PRENUME" HeaderText="PRENUME" SortExpression="PRENUME" />
            <asp:BoundField DataField="FUNCTIE" HeaderText="FUNCTIE" SortExpression="FUNCTIE" />
            <asp:BoundField DataField="SALAR_BAZA" HeaderText="SALAR_BAZA" SortExpression="SALAR_BAZA" />
            <asp:BoundField DataField="SPOR" HeaderText="SPOR" SortExpression="SPOR" />
            <asp:BoundField DataField="PREMII_BRUTE" HeaderText="PREMII_BRUTE" SortExpression="PREMII_BRUTE" />
            <asp:BoundField DataField="TOTAL_BRUT" HeaderText="TOTAL_BRUT" SortExpression="TOTAL_BRUT" ReadOnly="True" />
            <asp:BoundField DataField="BRUT_IMPOZ" HeaderText="BRUT_IMPOZ" SortExpression="BRUT_IMPOZ" ReadOnly="True" />
            <asp:BoundField DataField="IMPOZIT" HeaderText="IMPOZIT" SortExpression="IMPOZIT" ReadOnly="True" />
            <asp:BoundField DataField="CAS" HeaderText="CAS" SortExpression="CAS" ReadOnly="True" />
            <asp:BoundField DataField="CASS" HeaderText="CASS" SortExpression="CASS" ReadOnly="True" />
            <asp:BoundField DataField="RETINERI" HeaderText="RETINERI" SortExpression="RETINERI" />
            <asp:BoundField DataField="VIRAT_CARD" HeaderText="VIRAT_CARD" SortExpression="VIRAT_CARD" ReadOnly="True" />
        </Columns>
    </asp:GridView>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="NR_CRT" DataSourceID="SqlDataSource2" Visible="False" OnRowUpdated="GridView1_RowUpdated">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="NR_CRT" HeaderText="NR_CRT" ReadOnly="True" SortExpression="NR_CRT" />
            <asp:BoundField DataField="NUME" HeaderText="NUME" SortExpression="NUME" />
            <asp:BoundField DataField="PRENUME" HeaderText="PRENUME" SortExpression="PRENUME" />
            <asp:BoundField DataField="FUNCTIE" HeaderText="FUNCTIE" SortExpression="FUNCTIE" />
            <asp:BoundField DataField="SALAR_BAZA" HeaderText="SALAR_BAZA" SortExpression="SALAR_BAZA" />
            <asp:BoundField DataField="SPOR" HeaderText="SPOR" SortExpression="SPOR" />
            <asp:BoundField DataField="PREMII_BRUTE" HeaderText="PREMII_BRUTE" SortExpression="PREMII_BRUTE" />
            <asp:BoundField DataField="TOTAL_BRUT" HeaderText="TOTAL_BRUT" SortExpression="TOTAL_BRUT" ReadOnly="True" />
            <asp:BoundField DataField="BRUT_IMPOZ" HeaderText="BRUT_IMPOZ" SortExpression="BRUT_IMPOZ" ReadOnly="True" />
            <asp:BoundField DataField="IMPOZIT" HeaderText="IMPOZIT" SortExpression="IMPOZIT" ReadOnly="True" />
            <asp:BoundField DataField="CAS" HeaderText="CAS" SortExpression="CAS" ReadOnly="True" />
            <asp:BoundField DataField="CASS" HeaderText="CASS" SortExpression="CASS" ReadOnly="True" />
            <asp:BoundField DataField="RETINERI" HeaderText="RETINERI" SortExpression="RETINERI" />
            <asp:BoundField DataField="VIRAT_CARD" HeaderText="VIRAT_CARD" SortExpression="VIRAT_CARD" ReadOnly="True" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:Label ID="LabelMesaj" runat="server"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringSTUDENT %>" ProviderName="<%$ ConnectionStrings:ConnectionStringSTUDENT.ProviderName %>" SelectCommand="SELECT * FROM &quot;SALAR&quot; WHERE (&quot;NUME&quot; = :NUME)" OldValuesParameterFormatString="original_{0}" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM &quot;SALAR&quot; WHERE &quot;NR_CRT&quot; = :original_NR_CRT AND &quot;NUME&quot; = :original_NUME AND &quot;PRENUME&quot; = :original_PRENUME AND &quot;FUNCTIE&quot; = :original_FUNCTIE AND &quot;SALAR_BAZA&quot; = :original_SALAR_BAZA AND &quot;SPOR&quot; = :original_SPOR AND ((&quot;PREMII_BRUTE&quot; = :original_PREMII_BRUTE) OR (&quot;PREMII_BRUTE&quot; IS NULL AND :original_PREMII_BRUTE IS NULL)) AND ((&quot;TOTAL_BRUT&quot; = :original_TOTAL_BRUT) OR (&quot;TOTAL_BRUT&quot; IS NULL AND :original_TOTAL_BRUT IS NULL)) AND ((&quot;BRUT_IMPOZ&quot; = :original_BRUT_IMPOZ) OR (&quot;BRUT_IMPOZ&quot; IS NULL AND :original_BRUT_IMPOZ IS NULL)) AND ((&quot;IMPOZIT&quot; = :original_IMPOZIT) OR (&quot;IMPOZIT&quot; IS NULL AND :original_IMPOZIT IS NULL)) AND ((&quot;CAS&quot; = :original_CAS) OR (&quot;CAS&quot; IS NULL AND :original_CAS IS NULL)) AND ((&quot;CASS&quot; = :original_CASS) OR (&quot;CASS&quot; IS NULL AND :original_CASS IS NULL)) AND ((&quot;RETINERI&quot; = :original_RETINERI) OR (&quot;RETINERI&quot; IS NULL AND :original_RETINERI IS NULL)) AND ((&quot;VIRAT_CARD&quot; = :original_VIRAT_CARD) OR (&quot;VIRAT_CARD&quot; IS NULL AND :original_VIRAT_CARD IS NULL))" InsertCommand="INSERT INTO &quot;SALAR&quot; (&quot;NR_CRT&quot;, &quot;NUME&quot;, &quot;PRENUME&quot;, &quot;FUNCTIE&quot;, &quot;SALAR_BAZA&quot;, &quot;SPOR&quot;, &quot;PREMII_BRUTE&quot;, &quot;TOTAL_BRUT&quot;, &quot;BRUT_IMPOZ&quot;, &quot;IMPOZIT&quot;, &quot;CAS&quot;, &quot;CASS&quot;, &quot;RETINERI&quot;, &quot;VIRAT_CARD&quot;) VALUES (:NR_CRT, :NUME, :PRENUME, :FUNCTIE, :SALAR_BAZA, :SPOR, :PREMII_BRUTE, :TOTAL_BRUT, :BRUT_IMPOZ, :IMPOZIT, :CAS, :CASS, :RETINERI, :VIRAT_CARD)" UpdateCommand="UPDATE &quot;SALAR&quot; SET &quot;NUME&quot; = :NUME, &quot;PRENUME&quot; = :PRENUME, &quot;FUNCTIE&quot; = :FUNCTIE, &quot;SALAR_BAZA&quot; = :SALAR_BAZA, &quot;SPOR&quot; = :SPOR, &quot;PREMII_BRUTE&quot; = :PREMII_BRUTE, &quot;TOTAL_BRUT&quot; = :TOTAL_BRUT, &quot;BRUT_IMPOZ&quot; = :BRUT_IMPOZ, &quot;IMPOZIT&quot; = :IMPOZIT, &quot;CAS&quot; = :CAS, &quot;CASS&quot; = :CASS, &quot;RETINERI&quot; = :RETINERI, &quot;VIRAT_CARD&quot; = :VIRAT_CARD WHERE &quot;NR_CRT&quot; = :original_NR_CRT AND &quot;NUME&quot; = :original_NUME AND &quot;PRENUME&quot; = :original_PRENUME AND &quot;FUNCTIE&quot; = :original_FUNCTIE AND &quot;SALAR_BAZA&quot; = :original_SALAR_BAZA AND &quot;SPOR&quot; = :original_SPOR AND ((&quot;PREMII_BRUTE&quot; = :original_PREMII_BRUTE) OR (&quot;PREMII_BRUTE&quot; IS NULL AND :original_PREMII_BRUTE IS NULL)) AND ((&quot;TOTAL_BRUT&quot; = :original_TOTAL_BRUT) OR (&quot;TOTAL_BRUT&quot; IS NULL AND :original_TOTAL_BRUT IS NULL)) AND ((&quot;BRUT_IMPOZ&quot; = :original_BRUT_IMPOZ) OR (&quot;BRUT_IMPOZ&quot; IS NULL AND :original_BRUT_IMPOZ IS NULL)) AND ((&quot;IMPOZIT&quot; = :original_IMPOZIT) OR (&quot;IMPOZIT&quot; IS NULL AND :original_IMPOZIT IS NULL)) AND ((&quot;CAS&quot; = :original_CAS) OR (&quot;CAS&quot; IS NULL AND :original_CAS IS NULL)) AND ((&quot;CASS&quot; = :original_CASS) OR (&quot;CASS&quot; IS NULL AND :original_CASS IS NULL)) AND ((&quot;RETINERI&quot; = :original_RETINERI) OR (&quot;RETINERI&quot; IS NULL AND :original_RETINERI IS NULL)) AND ((&quot;VIRAT_CARD&quot; = :original_VIRAT_CARD) OR (&quot;VIRAT_CARD&quot; IS NULL AND :original_VIRAT_CARD IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_NR_CRT" Type="Decimal" />
            <asp:Parameter Name="original_NUME" Type="String" />
            <asp:Parameter Name="original_PRENUME" Type="String" />
            <asp:Parameter Name="original_FUNCTIE" Type="String" />
            <asp:Parameter Name="original_SALAR_BAZA" Type="Decimal" />
            <asp:Parameter Name="original_SPOR" Type="Decimal" />
            <asp:Parameter Name="original_PREMII_BRUTE" Type="Decimal" />
            <asp:Parameter Name="original_TOTAL_BRUT" Type="Decimal" />
            <asp:Parameter Name="original_BRUT_IMPOZ" Type="Decimal" />
            <asp:Parameter Name="original_IMPOZIT" Type="Decimal" />
            <asp:Parameter Name="original_CAS" Type="Decimal" />
            <asp:Parameter Name="original_CASS" Type="Decimal" />
            <asp:Parameter Name="original_RETINERI" Type="Decimal" />
            <asp:Parameter Name="original_VIRAT_CARD" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NR_CRT" Type="Decimal" />
            <asp:Parameter Name="NUME" Type="String" />
            <asp:Parameter Name="PRENUME" Type="String" />
            <asp:Parameter Name="FUNCTIE" Type="String" />
            <asp:Parameter Name="SALAR_BAZA" Type="Decimal" />
            <asp:Parameter Name="SPOR" Type="Decimal" />
            <asp:Parameter Name="PREMII_BRUTE" Type="Decimal" />
            <asp:Parameter Name="TOTAL_BRUT" Type="Decimal" />
            <asp:Parameter Name="BRUT_IMPOZ" Type="Decimal" />
            <asp:Parameter Name="IMPOZIT" Type="Decimal" />
            <asp:Parameter Name="CAS" Type="Decimal" />
            <asp:Parameter Name="CASS" Type="Decimal" />
            <asp:Parameter Name="RETINERI" Type="Decimal" />
            <asp:Parameter Name="VIRAT_CARD" Type="Decimal" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="NUME" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="NUME" Type="String" />
            <asp:Parameter Name="PRENUME" Type="String" />
            <asp:Parameter Name="FUNCTIE" Type="String" />
            <asp:Parameter Name="SALAR_BAZA" Type="Decimal" />
            <asp:Parameter Name="SPOR" Type="Decimal" />
            <asp:Parameter Name="PREMII_BRUTE" Type="Decimal" />
            <asp:Parameter Name="TOTAL_BRUT" Type="Decimal" />
            <asp:Parameter Name="BRUT_IMPOZ" Type="Decimal" />
            <asp:Parameter Name="IMPOZIT" Type="Decimal" />
            <asp:Parameter Name="CAS" Type="Decimal" />
            <asp:Parameter Name="CASS" Type="Decimal" />
            <asp:Parameter Name="RETINERI" Type="Decimal" />
            <asp:Parameter Name="VIRAT_CARD" Type="Decimal" />
            <asp:Parameter Name="original_NR_CRT" Type="Decimal" />
            <asp:Parameter Name="original_NUME" Type="String" />
            <asp:Parameter Name="original_PRENUME" Type="String" />
            <asp:Parameter Name="original_FUNCTIE" Type="String" />
            <asp:Parameter Name="original_SALAR_BAZA" Type="Decimal" />
            <asp:Parameter Name="original_SPOR" Type="Decimal" />
            <asp:Parameter Name="original_PREMII_BRUTE" Type="Decimal" />
            <asp:Parameter Name="original_TOTAL_BRUT" Type="Decimal" />
            <asp:Parameter Name="original_BRUT_IMPOZ" Type="Decimal" />
            <asp:Parameter Name="original_IMPOZIT" Type="Decimal" />
            <asp:Parameter Name="original_CAS" Type="Decimal" />
            <asp:Parameter Name="original_CASS" Type="Decimal" />
            <asp:Parameter Name="original_RETINERI" Type="Decimal" />
            <asp:Parameter Name="original_VIRAT_CARD" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionStringSTUDENT %>" DeleteCommand="DELETE FROM &quot;SALAR&quot; WHERE &quot;NR_CRT&quot; = :original_NR_CRT AND &quot;NUME&quot; = :original_NUME AND &quot;PRENUME&quot; = :original_PRENUME AND &quot;FUNCTIE&quot; = :original_FUNCTIE AND &quot;SALAR_BAZA&quot; = :original_SALAR_BAZA AND &quot;SPOR&quot; = :original_SPOR AND ((&quot;PREMII_BRUTE&quot; = :original_PREMII_BRUTE) OR (&quot;PREMII_BRUTE&quot; IS NULL AND :original_PREMII_BRUTE IS NULL)) AND ((&quot;TOTAL_BRUT&quot; = :original_TOTAL_BRUT) OR (&quot;TOTAL_BRUT&quot; IS NULL AND :original_TOTAL_BRUT IS NULL)) AND ((&quot;BRUT_IMPOZ&quot; = :original_BRUT_IMPOZ) OR (&quot;BRUT_IMPOZ&quot; IS NULL AND :original_BRUT_IMPOZ IS NULL)) AND ((&quot;IMPOZIT&quot; = :original_IMPOZIT) OR (&quot;IMPOZIT&quot; IS NULL AND :original_IMPOZIT IS NULL)) AND ((&quot;CAS&quot; = :original_CAS) OR (&quot;CAS&quot; IS NULL AND :original_CAS IS NULL)) AND ((&quot;CASS&quot; = :original_CASS) OR (&quot;CASS&quot; IS NULL AND :original_CASS IS NULL)) AND ((&quot;RETINERI&quot; = :original_RETINERI) OR (&quot;RETINERI&quot; IS NULL AND :original_RETINERI IS NULL)) AND ((&quot;VIRAT_CARD&quot; = :original_VIRAT_CARD) OR (&quot;VIRAT_CARD&quot; IS NULL AND :original_VIRAT_CARD IS NULL))" InsertCommand="INSERT INTO &quot;SALAR&quot; (&quot;NR_CRT&quot;, &quot;NUME&quot;, &quot;PRENUME&quot;, &quot;FUNCTIE&quot;, &quot;SALAR_BAZA&quot;, &quot;SPOR&quot;, &quot;PREMII_BRUTE&quot;, &quot;TOTAL_BRUT&quot;, &quot;BRUT_IMPOZ&quot;, &quot;IMPOZIT&quot;, &quot;CAS&quot;, &quot;CASS&quot;, &quot;RETINERI&quot;, &quot;VIRAT_CARD&quot;) VALUES (:NR_CRT, :NUME, :PRENUME, :FUNCTIE, :SALAR_BAZA, :SPOR, :PREMII_BRUTE, :TOTAL_BRUT, :BRUT_IMPOZ, :IMPOZIT, :CAS, :CASS, :RETINERI, :VIRAT_CARD)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionStringSTUDENT.ProviderName %>" SelectCommand="SELECT * FROM &quot;SALAR&quot;" UpdateCommand="UPDATE &quot;SALAR&quot; SET &quot;NUME&quot; = :NUME, &quot;PRENUME&quot; = :PRENUME, &quot;FUNCTIE&quot; = :FUNCTIE, &quot;SALAR_BAZA&quot; = :SALAR_BAZA, &quot;SPOR&quot; = :SPOR, &quot;PREMII_BRUTE&quot; = :PREMII_BRUTE, &quot;TOTAL_BRUT&quot; = :TOTAL_BRUT, &quot;BRUT_IMPOZ&quot; = :BRUT_IMPOZ, &quot;IMPOZIT&quot; = :IMPOZIT, &quot;CAS&quot; = :CAS, &quot;CASS&quot; = :CASS, &quot;RETINERI&quot; = :RETINERI, &quot;VIRAT_CARD&quot; = :VIRAT_CARD WHERE &quot;NR_CRT&quot; = :original_NR_CRT AND &quot;NUME&quot; = :original_NUME AND &quot;PRENUME&quot; = :original_PRENUME AND &quot;FUNCTIE&quot; = :original_FUNCTIE AND &quot;SALAR_BAZA&quot; = :original_SALAR_BAZA AND &quot;SPOR&quot; = :original_SPOR AND ((&quot;PREMII_BRUTE&quot; = :original_PREMII_BRUTE) OR (&quot;PREMII_BRUTE&quot; IS NULL AND :original_PREMII_BRUTE IS NULL)) AND ((&quot;TOTAL_BRUT&quot; = :original_TOTAL_BRUT) OR (&quot;TOTAL_BRUT&quot; IS NULL AND :original_TOTAL_BRUT IS NULL)) AND ((&quot;BRUT_IMPOZ&quot; = :original_BRUT_IMPOZ) OR (&quot;BRUT_IMPOZ&quot; IS NULL AND :original_BRUT_IMPOZ IS NULL)) AND ((&quot;IMPOZIT&quot; = :original_IMPOZIT) OR (&quot;IMPOZIT&quot; IS NULL AND :original_IMPOZIT IS NULL)) AND ((&quot;CAS&quot; = :original_CAS) OR (&quot;CAS&quot; IS NULL AND :original_CAS IS NULL)) AND ((&quot;CASS&quot; = :original_CASS) OR (&quot;CASS&quot; IS NULL AND :original_CASS IS NULL)) AND ((&quot;RETINERI&quot; = :original_RETINERI) OR (&quot;RETINERI&quot; IS NULL AND :original_RETINERI IS NULL)) AND ((&quot;VIRAT_CARD&quot; = :original_VIRAT_CARD) OR (&quot;VIRAT_CARD&quot; IS NULL AND :original_VIRAT_CARD IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_NR_CRT" Type="Decimal" />
            <asp:Parameter Name="original_NUME" Type="String" />
            <asp:Parameter Name="original_PRENUME" Type="String" />
            <asp:Parameter Name="original_FUNCTIE" Type="String" />
            <asp:Parameter Name="original_SALAR_BAZA" Type="Decimal" />
            <asp:Parameter Name="original_SPOR" Type="Decimal" />
            <asp:Parameter Name="original_PREMII_BRUTE" Type="Decimal" />
            <asp:Parameter Name="original_TOTAL_BRUT" Type="Decimal" />
            <asp:Parameter Name="original_BRUT_IMPOZ" Type="Decimal" />
            <asp:Parameter Name="original_IMPOZIT" Type="Decimal" />
            <asp:Parameter Name="original_CAS" Type="Decimal" />
            <asp:Parameter Name="original_CASS" Type="Decimal" />
            <asp:Parameter Name="original_RETINERI" Type="Decimal" />
            <asp:Parameter Name="original_VIRAT_CARD" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NR_CRT" Type="Decimal" />
            <asp:Parameter Name="NUME" Type="String" />
            <asp:Parameter Name="PRENUME" Type="String" />
            <asp:Parameter Name="FUNCTIE" Type="String" />
            <asp:Parameter Name="SALAR_BAZA" Type="Decimal" />
            <asp:Parameter Name="SPOR" Type="Decimal" />
            <asp:Parameter Name="PREMII_BRUTE" Type="Decimal" />
            <asp:Parameter Name="TOTAL_BRUT" Type="Decimal" />
            <asp:Parameter Name="BRUT_IMPOZ" Type="Decimal" />
            <asp:Parameter Name="IMPOZIT" Type="Decimal" />
            <asp:Parameter Name="CAS" Type="Decimal" />
            <asp:Parameter Name="CASS" Type="Decimal" />
            <asp:Parameter Name="RETINERI" Type="Decimal" />
            <asp:Parameter Name="VIRAT_CARD" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NUME" Type="String" />
            <asp:Parameter Name="PRENUME" Type="String" />
            <asp:Parameter Name="FUNCTIE" Type="String" />
            <asp:Parameter Name="SALAR_BAZA" Type="Decimal" />
            <asp:Parameter Name="SPOR" Type="Decimal" />
            <asp:Parameter Name="PREMII_BRUTE" Type="Decimal" />
            <asp:Parameter Name="TOTAL_BRUT" Type="Decimal" />
            <asp:Parameter Name="BRUT_IMPOZ" Type="Decimal" />
            <asp:Parameter Name="IMPOZIT" Type="Decimal" />
            <asp:Parameter Name="CAS" Type="Decimal" />
            <asp:Parameter Name="CASS" Type="Decimal" />
            <asp:Parameter Name="RETINERI" Type="Decimal" />
            <asp:Parameter Name="VIRAT_CARD" Type="Decimal" />
            <asp:Parameter Name="original_NR_CRT" Type="Decimal" />
            <asp:Parameter Name="original_NUME" Type="String" />
            <asp:Parameter Name="original_PRENUME" Type="String" />
            <asp:Parameter Name="original_FUNCTIE" Type="String" />
            <asp:Parameter Name="original_SALAR_BAZA" Type="Decimal" />
            <asp:Parameter Name="original_SPOR" Type="Decimal" />
            <asp:Parameter Name="original_PREMII_BRUTE" Type="Decimal" />
            <asp:Parameter Name="original_TOTAL_BRUT" Type="Decimal" />
            <asp:Parameter Name="original_BRUT_IMPOZ" Type="Decimal" />
            <asp:Parameter Name="original_IMPOZIT" Type="Decimal" />
            <asp:Parameter Name="original_CAS" Type="Decimal" />
            <asp:Parameter Name="original_CASS" Type="Decimal" />
            <asp:Parameter Name="original_RETINERI" Type="Decimal" />
            <asp:Parameter Name="original_VIRAT_CARD" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>
