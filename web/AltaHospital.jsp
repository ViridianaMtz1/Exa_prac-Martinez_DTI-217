<%-- 
    Document   : AltaHospital
    Created on : 21/07/2021, 08:47:01 AM
    Author     : HOME
--%>

</head>
<body style="">
<center>
<h1>Alta pacientes</h1>
</center>
<hr>

<%@page import = "java.sql.*"%>
<%@page import = "conexionbd.ConexionJSP"%>


<%ConexionJSP conexion=new ConexionJSP("jdbc:mysql://localhost/bddtimtz","root", ""); 

     String curp = request.getParameter("curp");
     String dias = request.getParameter("dias");
    
     String costo = request.getParameter("costo");

String altaQuery="INSERT INTO hospital VALUES ('"+curp+"','"+dias+"','"+costo+"')";

int c = conexion.ejecutaSentencia(altaQuery);
if (c==1){// 

%>
<div class="container">
        <div class="jumbotron" >
            <center>
                <h2>Confirma alta de registro alumno</h2>
                <img src="imagenes/listo.jpg" class="img img-responsive" alt="list"/>
                <hr>
                <div class="thumbnail" >
                    
                    <h2>Ser agrego de forma exitosa un nuevo alumno</h2>
                    <hr>
                    
                    <h3>CURP : <%=curp%></h3>
                    <h3>Dias de hozpitalizacion: <%=dias%></h3>
                    <h3>Cargo : <%=costo%></h3>
                    
                </div>
                  <hr>
                       <h3>Fecha y hora del sistema: <%= new java.util.Date()%> </h3>
                       <a href="index.html"><h4>Regresar a Menu Principal</h4></a>
            </center>
        <%
            }
        %>
        </div>
        </div>
