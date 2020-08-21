<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0"
   xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">  

   <xsl:template match = "/">
      <html>
         <body>

            <style>

table, th, td {
  border: 2px solid black;
  border-collapse: collapse;

}
th
{
  font-size: 25px;
  background-color: #d15485;
  box-shadow: 0 0 15px 0;   
}
td{
    padding: 5px;
    font-size: 14.5px;
      border-radius: 50px;
      background: #d6efc7;
      box-shadow: 0 0 10px 0; 
}
h3 {
      font-size:20px;
      font-weight: normal;
      color: #75A54B;
      border-bottom: 2px solid #EFF0F1;
    }
</style> 


            <h3>USER DETAILS</h2>
            <table border = "1">
               <tr bgcolor = "#9acd32">
                  <th>User ID</th>
                  <th>First Name</th>
                  <th>Last Name</th>
                  <th>Occupation</th>
                  <th>City</th>
               </tr>
               <xsl:for-each select = "user/details">
                  <tr>
                     <td> <xsl:value-of select = "@id"/></td>
                     <td><xsl:value-of select = "firstname"/></td>
                     <td><xsl:value-of select = "lastname"/></td>
                     <td><xsl:value-of select = "occupation"/></td>
                     <td><xsl:value-of select = "city"/></td>
                  </tr>
               </xsl:for-each>
            </table>
<h3>Accessing nodes by specifying the Predicates</h2>
            <table border = "1">
               <tr bgcolor = "#9acd32">
                  <th>First Data</th>
                  <th>Last Data</th>
                  <th>User ID = 003</th>
            
               </tr>
               <xsl:for-each select = "user/details">
                  <tr>
                     <td><xsl:value-of select = "/user/details[1]"/></td>
                     <td><xsl:value-of select = "/user/details[last()]"/></td>
                     <td><xsl:value-of select = "/user/details[@id = 003] "/></td>
              
                     
                  </tr>

               </xsl:for-each>
            </table> 


            <h3>Number Functions</h2>
            <table border = "1">
               <tr bgcolor = "#9acd32">
                  <th>User ID</th>
                  <th>First Name</th>
                  <th>Last Name</th>
                  <th>Occupation</th>
                  <th>City</th>
                  <th>Population</th>
                     <th>Distance</th>
               </tr>
               <xsl:for-each select = "user/details">
                  <tr>
                     <td> <xsl:value-of select = "@id"/></td>
                     <td><xsl:value-of select = "firstname"/></td>
                     <td><xsl:value-of select = "lastname"/></td>
                     <td><xsl:value-of select = "occupation"/></td>
                     <td><xsl:value-of select = "city"/></td>
                      <td><xsl:value-of select = "population"/></td>

                        <td>  
                        <xsl:choose>  
                           <xsl:when test = "population > 5000">  
                              Far from Current Location
                           </xsl:when>                              
                           <xsl:when test = "population > 2000">  
                              Close Distance 
                           </xsl:when>                              
                           <xsl:otherwise>  
                              Near By
                           </xsl:otherwise>  
                        </xsl:choose>  
                     </td>  

                  </tr>
               </xsl:for-each>
            </table>

            <h2>String Functions</h2>
            <table border = "1">
               <tr bgcolor = "#9acd32">
                 
                  <th>Full Name</th>
                  <th>Length of the Name</th>
               </tr>
               <xsl:for-each select = "user/details">
                  <tr>
                
      
                   

                     <td><xsl:value-of select = "concat(firstname,' ',lastname)"/></td>  
                     <td><xsl:value-of select = "string-length(concat(firstname,' ',lastname))"/></td>  
                   
                        

                  </tr>
               </xsl:for-each>
            </table>


 <h2>Boolean Functions</h2>
            
            <table border = "1">
               <tr bgcolor = "#9acd32">
                  <th>User ID</th>
                  <th>First Name</th>
                  <th>Last Name</th>
                  <th>Occupation</th>
                  <th>City</th>
                  <th>Population</th>
                   
               </tr>
               <xsl:for-each select = "user/details[(@id = 001) or ((@id  =  003))]">   
                  <tr>
                     <td> <xsl:value-of select = "@id"/></td>
                     <td><xsl:value-of select = "firstname"/></td>
                     <td><xsl:value-of select = "lastname"/></td>
                     <td><xsl:value-of select = "occupation"/></td>
                     <td><xsl:value-of select = "city"/></td>
                      <td><xsl:value-of select = "population"/></td>

                  </tr>
               </xsl:for-each>
            </table>


             <h2>Node Set Functions</h2>
            
            <table border = "1">
               <tr bgcolor = "#9acd32">
                  <th>Serial No.</th>
                  <th>User ID</th>
                  <th>First Name</th>
                  <th>Last<svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0" y="0" viewBox="0 0 558.14 558.14" xml:space="preserve" enable-background="new 0 0 558.144 558.144">
                  <path d="M509.8 358.63c5.31 2.86 9.49 6.94 12.55 12.24 3.06 5.3 4.59 11.42 4.59 18.36v135.86c0 9.38-2.65 17.24-7.96 23.56 -5.31 6.32-12.03 9.49-20.19 9.49H59.36c-8.16 0-14.89-3.16-20.2-9.49s-7.96-14.18-7.96-23.56V389.23c0-6.94 1.53-13.16 4.59-18.67s7.45-9.49 13.16-11.94l171.97-80.17c-20.81-12.24-37.43-29.89-49.88-52.94s-18.67-49.06-18.67-78.03c0-20.4 3.26-39.58 9.79-57.53 6.53-17.95 15.5-33.56 26.93-46.82 11.42-13.26 24.89-23.77 40.39-31.52C245 3.88 261.53 0 279.07 0c17.54 0 34.07 3.88 49.57 11.63s28.97 18.26 40.39 31.52c11.42 13.26 20.4 28.87 26.93 46.82 6.53 17.95 9.79 37.13 9.79 57.53 0 28.15-6.12 53.75-18.36 76.81s-28.35 40.9-48.35 53.55L509.8 358.63 509.8 358.63z" fill="#010002"/>
                  </svg> Name</th>
                  <th>Occupation</th>
                  <th>City</th>
                  <th>Population</th>
                   
               </tr>
               <xsl:for-each select = "user/details">   
                  <tr>
                    <td> <xsl:value-of select = "position()"/></td>
                     <td> <xsl:value-of select = "@id"/></td>
                     <td><xsl:value-of select = "firstname"/></td>
                     <td><xsl:value-of select = "lastname"/></td>
                     <td><xsl:value-of select = "occupation"/></td>
                     <td><xsl:value-of select = "city"/></td>
                      <td><xsl:value-of select = "population"/></td>

                  </tr>
               </xsl:for-each>
            </table>
         </body>
      </html>
   </xsl:template>

</xsl:stylesheet>