<%@ Page Title="Pagina Principală" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Sistem de Management al Angajaților</h1>
        <p class="lead">Această aplicație ASP.NET oferă următoarele funcționalități pentru gestionarea eficientă a angajaților:</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Actualizare Angajați</h2>
            <p>
                Actualizează cu ușurință informațiile despre angajați, cum ar fi numele, poziția și salariul.
            </p>
        </div>
        <div class="col-md-4">
            <h2>Adăugare Angajat Nou</h2>
            <p>
                Introdu noii angajați în sistem furnizând detaliile lor.
            </p>
        </div>
        <div class="col-md-4">
            <h2>Ștergere Angajați</h2>
            <p>
                Șterge angajații în funcție de nume și prenume.
            </p>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Calcul Automat al Salariilor</h2>
            <p>
                Salariile sunt calculate automat pe baza formularelor predefinite.
            </p>
        </div>
        <div class="col-md-4">
            <h2>Generare Rapoarte</h2>
            <p>
                Creează rapoarte detaliate, cum ar fi statele de plată și fluturașii de salariu.
            </p>
        </div>
        <div class="col-md-4">
            <h2>Modificare Dinamică și Automată a Procentelor</h2>
            <p>
                Ajustarea dinamică și automată a valorilor procentuale pentru componentele salariilor.
            </p>
        </div>
    </div>

</asp:Content>
