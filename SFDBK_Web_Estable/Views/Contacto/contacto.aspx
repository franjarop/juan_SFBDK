<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contacto.aspx.cs" Inherits="SFDBK_Web_Estable.Views.Contacto.contacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <link href="../../Content/estiloContacto.css" rel="stylesheet" />
    <link href="../../Content/font-awesome.css" rel="stylesheet" />
    <section class="business-talking"><!--business-talking-start-->
	<div class="container">
        <h2>Tienes alguna duda.... Contactanos y en breve nos comunicaremos contigo</h2>
    </div>
</section>

    <div class="container">
    <section class="main-section contact" id="contact">
        <div class="row">
        	<div class="col-lg-6 col-sm-7 wow fadeInLeft">
            	<div class="contact-info-box address clearfix">
                	<h3><i class=" icon-map-marker"></i>Direccion:</h3>
                	<span>Eje Central Lázaro Cárdenas 18<br>Obrera 06800 Ciudad de México, CDMX</span>
                </div>
                <div class="contact-info-box phone clearfix">
                	<h3><i class="fa-phone"></i>Telefono.</h3>
                	<span>01 55 200000</span>
                </div>
                <div class="contact-info-box email clearfix">
                	<h3><i class="fa-pencil"></i>Email:</h3>
                	<span>SFBDK@gmail.com</span>
                </div>
            	<div class="contact-info-box hours clearfix">
                	<h3><i class="fa-clock-o"></i>Horarios:</h3>
                	<span><strong>Lunes - Viernes:</strong> 9:30am - 6:30pm<br><strong>Sabados:</strong> 9:30am - 4:00pm<br><strong>Domingo:</strong> Mejor no preguntar.</span>
                </div>
            </div>
        	<div class="col-lg-6 col-sm-5 wow fadeInUp delay-05s">
            	<div class="form">
                	
                    <div id="sendmessage">Su mensaje ha sido enviado. ¡Gracias!</div>
                    <div id="errormessage"></div>
                    <form action="" method="post" role="form" class="contactForm">
                        <div class="form-group">
                            <input type="text" name="name" class="form-control input-text" id="name" placeholder="Como gustas que te llamemos." data-rule="minlen:4" data-msg="Introduzca al menos 4 caracteres" />
                            <div class="validation"></div>
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control input-text" name="email" id="email" placeholder="Comparte tu Email" data-rule="email" data-msg="Ingresa un correo electrónico válido" />
                            <div class="validation"></div>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control input-text" name="subject" id="subject" placeholder="Motivo de tu consulta" data-rule="minlen:4" data-msg="Por favor ingrese al menos 8 caracteres del tema" />
                            <div class="validation"></div>
                        </div>
                        <div class="form-group">
                            <textarea class="form-control input-text text-area" name="message" rows="5" data-rule="required" data-msg="Por favor escribe todas tus dudas" placeholder="Mensaje..."></textarea>
                            <div class="validation"></div>
                        </div>
                        
                        <div class="text-center"><button type="submit" class="input-btn">Enviar mensaje</button></div>
                    </form>
                </div>	
            </div>
        </div>
</section>
</div>

<div class="container" style="top:-100px; position:relative;">
        <h2>Ubicanos en Google Maps</h2>
</div>

<div id="map" style="width:100%;height:500px; top:-100px;"></div>
        <script>
        function myMap() {
            var myCenter = new google.maps.LatLng(19.421205,-99.143022);

          //!2d-!3d19.42121004607881
            var mapCanvas = document.getElementById("map");
            var mapOptions = {center: myCenter, zoom: 18};
            var map = new google.maps.Map(mapCanvas, mapOptions);
            var marker = new google.maps.Marker({position:myCenter});
             marker.setMap(map);
        }
</script>


    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRcyWmXJaMs-iXGjvAeHzE-l14XcXXJ-I&callback=myMap"></script>
</asp:Content>
