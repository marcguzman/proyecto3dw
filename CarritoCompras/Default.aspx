<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CarritoCompras._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Tus Compras UMG</h1>
        <p class="lead">Una tienda Virtual ,&nbsp; Anuncio Clasificado de artículos bajo esta forma de anuncio, en el que se exponen las características del artículo en cuestión y su precio.</p>
        <p><a href="About.aspx" class="btn btn-primary btn-lg">Leer Más &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Laptops</h2>
            <p>
                Las Ultimas Laptops y Notebooks a buenos precios, de primera calidad. Comprar Ahora
            </p>
            <p>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/lenovo.jpg" />
            </p>
            <p>
                <a class="btn btn-default" href="Carrito_Compra.aspx">Leer Más &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Hogar</h2>
            <p>
                <span id="result_box" class="" lang="es"><span class="">Cuando se trata de mejoras para el hogar, no busque más allá de las páginas de casa y jardín de Tus compras UMG.</span></span></p>
            <p>
                <asp:Image ID="Image2" runat="server" Height="206px" ImageUrl="~/Imagenes/MICROONDAS.jpg" Width="246px" />
            </p>
            <p>
                <a class="btn btn-default" href="Carrito_Compra.aspx">Leer Más &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="Carrito_Compra.aspx">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
