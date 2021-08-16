# jpa-jsp

#TEMA :  "jpa-jsp"

#PROYECTO Java Web  :   Web Application

#PAQUETE "Model" :  

    -  CLASE "Usuario" :   Clase entidad(@Entity) de la tabla "usuario" de la base de datos "mybd".
    
#PAQUETE "Controller" :    

    -   CLASE "UsuarioJpaController" :   Persistiendo a la entidad "Usuario", mediante los métodos "CRUD"
                ("create","edit","destroy","List").
                
#CARPETA "Web" : 

    -   "index.jsp" :   Genera una "Page Web", a partir de los parametros de la peticion del "index.jsp",
         mediante instancia de los métodos ("create","edit","destroy","List") de la clase "UsuarioJpaController".
