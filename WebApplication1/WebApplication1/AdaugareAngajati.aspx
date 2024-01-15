<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdaugareAngajati.aspx.cs" Inherits="WebApplication1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView2" runat="server" CellPadding="4" DataKeyNames="NR_CRT" DataSourceID="SqlDataSource1" ForeColor="#333333" Width="662px">
        <EditItemTemplate>
            NR_CRT:
            <asp:Label ID="NR_CRTLabel1" runat="server" Text='<%# Eval("NR_CRT") %>' />
            <br />
            NUME:
            <asp:TextBox ID="NUMETextBox" runat="server" Text='<%# Bind("NUME") %>' />
            
            <br />
            PRENUME:
            <asp:TextBox ID="PRENUMETextBox" runat="server" Text='<%# Bind("PRENUME") %>' />
            <br />
            FUNCTIE:
            <asp:TextBox ID="FUNCTIETextBox" runat="server" Text='<%# Bind("FUNCTIE") %>' />

            <br />
            SALAR_BAZA:
            <asp:TextBox ID="SALAR_BAZATextBox" runat="server" Text='<%# Bind("SALAR_BAZA") %>' />

            <br />
            SPOR:
            <asp:TextBox ID="SPORTextBox" runat="server" Text='<%# Bind("SPOR") %>' />
            <br />
            PREMII_BRUTE:
            <asp:TextBox ID="PREMII_BRUTETextBox" runat="server" Text='<%# Bind("PREMII_BRUTE") %>' />
            <br />
            TOTAL_BRUT:
            <asp:TextBox ID="TOTAL_BRUTTextBox" runat="server" Text='<%# Bind("TOTAL_BRUT") %>' />
            <br />
            BRUT_IMPOZ:
            <asp:TextBox ID="BRUT_IMPOZTextBox" runat="server" Text='<%# Bind("BRUT_IMPOZ") %>' />
            <br />
            IMPOZIT:
            <asp:TextBox ID="IMPOZITTextBox" runat="server" Text='<%# Bind("IMPOZIT") %>' />
            <br />
            CAS:
            <asp:TextBox ID="CASTextBox" runat="server" Text='<%# Bind("CAS") %>' />
            <br />
            CASS:
            <asp:TextBox ID="CASSTextBox" runat="server" Text='<%# Bind("CASS") %>' />
            <br />
            RETINERI:
            <asp:TextBox ID="RETINERITextBox" runat="server" Text='<%# Bind("RETINERI") %>' />
            <br />
            VIRAT_CARD:
            <asp:TextBox ID="VIRAT_CARDTextBox" runat="server" Text='<%# Bind("VIRAT_CARD") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            NUME:
            <asp:TextBox ID="NUMETextBox" runat="server" Text='<%# Bind("NUME") %>' />
            <asp:RequiredFieldValidator ID="NumeRequiredValidator" runat="server"
                ControlToValidate="NUMETextBox"
                ErrorMessage="Acest camp este obligatoriu"
                Display="Dynamic" />
            <br />
            PRENUME:
            <asp:TextBox ID="PRENUMETextBox" runat="server" Text='<%# Bind("PRENUME") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ControlToValidate="PRENUMETextBox"
                ErrorMessage="Acest camp este obligatoriu"
                Display="Dynamic" />

            <br />
            FUNCTIE:
            <asp:TextBox ID="FUNCTIETextBox" runat="server" Text='<%# Bind("FUNCTIE") %>' />
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                ControlToValidate="FUNCTIETextBox"
                ErrorMessage="Acest camp este obligatoriu"
                Display="Dynamic" />

            <br />
            SALAR_BAZA:
            <asp:TextBox ID="SALAR_BAZATextBox" runat="server" Text='<%# Bind("SALAR_BAZA") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                ControlToValidate="SALAR_BAZATextBox"
                ErrorMessage="Acest camp este obligatoriu"
                Display="Dynamic" />

            <br />
            SPOR:
            <asp:TextBox ID="SPORTextBox" runat="server" Text='<%# Bind("SPOR") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                ControlToValidate="SPORTextBox"
                ErrorMessage="Acest camp este obligatoriu"
                Display="Dynamic" />
            <br />
            PREMII_BRUTE:
            <asp:TextBox ID="PREMII_BRUTETextBox" runat="server" Text='<%# Bind("PREMII_BRUTE") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                ControlToValidate="PREMII_BRUTETextBox"
                ErrorMessage="Acest camp este obligatoriu"
                Display="Dynamic" />
            <br />
            RETINERI:
            <asp:TextBox ID="RETINERITextBox" runat="server" Text='<%# Bind("RETINERI") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                ControlToValidate="RETINERITextBox"
                ErrorMessage="Acest camp este obligatoriu"
                Display="Dynamic" />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
<%--            NUME:
            <asp:Label ID="NUMELabel" runat="server" Text='<%# Bind("NUME") %>' />
            <br />
            PRENUME:
            <asp:Label ID="PRENUMELabel" runat="server" Text='<%# Bind("PRENUME") %>' />
            <br />
            FUNCTIE:
            <asp:Label ID="FUNCTIELabel" runat="server" Text='<%# Bind("FUNCTIE") %>' />
            <br />
            SALAR_BAZA:
            <asp:Label ID="SALAR_BAZALabel" runat="server" Text='<%# Bind("SALAR_BAZA") %>' />
            <br />
            SPOR:
            <asp:Label ID="SPORLabel" runat="server" Text='<%# Bind("SPOR") %>' />
            <br />
            PREMII_BRUTE:
            <asp:Label ID="PREMII_BRUTELabel" runat="server" Text='<%# Bind("PREMII_BRUTE") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />--%>
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Adauga angajat" />
        </ItemTemplate>
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringSQL2 %>" DeleteCommand="DELETE FROM &quot;SALAR&quot; WHERE &quot;NR_CRT&quot; = :NR_CRT" InsertCommand="INSERT INTO &quot;SALAR&quot; (&quot;NR_CRT&quot;, &quot;NUME&quot;, &quot;PRENUME&quot;, &quot;FUNCTIE&quot;, &quot;SALAR_BAZA&quot;, &quot;SPOR&quot;, &quot;PREMII_BRUTE&quot;, &quot;TOTAL_BRUT&quot;, &quot;BRUT_IMPOZ&quot;, &quot;IMPOZIT&quot;, &quot;CAS&quot;, &quot;CASS&quot;, &quot;RETINERI&quot;, &quot;VIRAT_CARD&quot;) VALUES (:NR_CRT, :NUME, :PRENUME, :FUNCTIE, :SALAR_BAZA, :SPOR, :PREMII_BRUTE, :TOTAL_BRUT, :BRUT_IMPOZ, :IMPOZIT, :CAS, :CASS, :RETINERI, :VIRAT_CARD)" ProviderName="<%$ ConnectionStrings:ConnectionStringSQL2.ProviderName %>" SelectCommand="SELECT * FROM &quot;SALAR&quot;" UpdateCommand="UPDATE &quot;SALAR&quot; SET &quot;NUME&quot; = :NUME, &quot;PRENUME&quot; = :PRENUME, &quot;FUNCTIE&quot; = :FUNCTIE, &quot;SALAR_BAZA&quot; = :SALAR_BAZA, &quot;SPOR&quot; = :SPOR, &quot;PREMII_BRUTE&quot; = :PREMII_BRUTE, &quot;TOTAL_BRUT&quot; = :TOTAL_BRUT, &quot;BRUT_IMPOZ&quot; = :BRUT_IMPOZ, &quot;IMPOZIT&quot; = :IMPOZIT, &quot;CAS&quot; = :CAS, &quot;CASS&quot; = :CASS, &quot;RETINERI&quot; = :RETINERI, &quot;VIRAT_CARD&quot; = :VIRAT_CARD WHERE &quot;NR_CRT&quot; = :NR_CRT">
        <DeleteParameters>
            <asp:Parameter Name="NR_CRT" Type="Decimal" />
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
            <asp:Parameter Name="NR_CRT" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>
