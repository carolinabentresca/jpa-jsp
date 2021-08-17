# jpa-jsp

#TEMA :  "jpa-jsp"

#PROYECTO JAVA WEB  :  Web Application

#CARPETA "conf" :

   - ARCHIVO "persistence.xml" :  Genera el nombre de la unidad de persistencia "JpayJspPU",
      el nombre de la clase dominio "Model.Usuario", y la conexion a la base de datos "mybd".

#PAQUETE "Model" :  

  - CLASE "Usuario" :  Clase @Entity de la tabla "usuario" de la base de datos "mybd".
    
#PAQUETE "Controller" :    

  - CLASE "UsuarioJpaController" :  Persistiendo a la entidad "Usuario", 
       crea un EntityManager y realiza las operaciones("create","edit","destroy","List")
                
#CARPETA "Web" : 

  - "index.jsp" :  Genera una "Page Web", a partir de los parametros de la peticion 
       del "index.jsp",mediante instancia de los métodos 
       de la clase "UsuarioJpaController".
