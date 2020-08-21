<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
  <head>
    <title>Price Report</title>
    <style type="text/css">
    body{
      font-family:'Arial',verdana,sans-serif;
      font-size:14px;
    }
    table, th, td {
  border: 1px solid grey;
  border-collapse: collapse;

}
th
{
  font-size: 15px;
  background-color: #d15485;
  box-shadow: 0 0 15px 0;  
   border-radius: 50px; 
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
      color: black;
      border-bottom: 2px solid #EFF0F1;
    }

    person {
          display: block;
          margin: 20px 10px;
          padding: 10px;
          width: 250px;
          float: left;
          border: 1px solid #999999;
          border-radius: 7px;
          box-shadow: 5px 3px 3px rgba(0, 0, 0, .3)
        }

        line {
          display: block;
          height: 30px;
          margin: 5px;
        }

        .line svg, .line img {
          vertical-align: middle;
          height: 20px;
          width: 20px;
        }


        data {
          display: inline-block;
          margin-left: 20px;
        }

        footer {
          clear: both;
        }
    </style>
  </head>
  <body>
    <h3><center>Details of User and Payment (Implementing XSL) <br></br><svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0" y="0" viewBox="0 0 558.14 558.14" xml:space="preserve" enable-background="new 0 0 558.144 558.144" height= "30px"
          width= "30px">
          <a xlink:href="index.html#001">

            <path d="M509.8 358.63c5.31 2.86 9.49 6.94 12.55 12.24 3.06 5.3 4.59 11.42 4.59 18.36v135.86c0 9.38-2.65 17.24-7.96 23.56 -5.31 6.32-12.03 9.49-20.19 9.49H59.36c-8.16 0-14.89-3.16-20.2-9.49s-7.96-14.18-7.96-23.56V389.23c0-6.94 1.53-13.16 4.59-18.67s7.45-9.49 13.16-11.94l171.97-80.17c-20.81-12.24-37.43-29.89-49.88-52.94s-18.67-49.06-18.67-78.03c0-20.4 3.26-39.58 9.79-57.53 6.53-17.95 15.5-33.56 26.93-46.82 11.42-13.26 24.89-23.77 40.39-31.52C245 3.88 261.53 0 279.07 0c17.54 0 34.07 3.88 49.57 11.63s28.97 18.26 40.39 31.52c11.42 13.26 20.4 28.87 26.93 46.82 6.53 17.95 9.79 37.13 9.79 57.53 0 28.15-6.12 53.75-18.36 76.81s-28.35 40.9-48.35 53.55L509.8 358.63 509.8 358.63z" fill="#010002"/>
            </a></svg></center></h3>
    


    <table width="100%">
      <tr>
        <th>Serial No.</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Occupation</th>
        <th>City</th>
        <th>Price</th>
             
      </tr> 
      <xsl:for-each select="pricereport/report">
        <tr>
          <td><xsl:value-of select="position()"/></td>
          <td><xsl:value-of select="firstname"/></td>
          <td><xsl:value-of select="lastname"/></td>
          <td><xsl:value-of select="occupation"/></td>
          <td><xsl:value-of select="city"/></td>
          <td><xsl:value-of select="price"/></td>
        </tr>
        </xsl:for-each> 
    </table>
    <p><strong>======Number Functions========</strong></p>
     <p>Total Requests : <xsl:value-of select="count(//report)"/> </p>
    <p>Total Given Money for Blogging task : <xsl:value-of select="sum(//report/price)"/> Rupees</p>
    <p>Average Income for Me : <xsl:value-of select="sum(//report/price) div count(//report)"/> Rupees</p>
  <br></br>
    <p><strong>====Nodes Accesiing through Predicates====</strong></p> 
    <p>1. First Details :   <xsl:value-of select = "/pricereport/report[1]"/></p>
    <p>2. Last  Details  :    <xsl:value-of select = "/pricereport/report[last()]"/></p>
          <br></br>                    


    <p><strong>=========String Functions=========</strong></p> 
    <p>1. concat() Function : <xsl:value-of select="concat('Bangalore','Diaries.')"/></p>
    <p>2. string-length() Function  : <xsl:value-of select="string-length('Bangalore Diaries.')"/> </p>
    <p>3. substring-after() Function  : <xsl:value-of select="substring-after('August 20, 2020', ',')"/> </p>
    <p>4. substring-before() Function : <xsl:value-of select="substring-before('August 20, 2020', ',')"/> </p>
  <br></br>
    <p><strong>=========Boolean Functions=========</strong></p> 
    <table width="100%">
      <tr>
       
        <th>First Name</th>
        <th>Last Name</th>
        <th>Occupation</th>
        <th>City</th>
        <th>Price</th>
             
      </tr> 
     <xsl:for-each select = "pricereport/report[(@id = 005) or ((@id  =  002))]">
        <tr>
          
          <td><xsl:value-of select="firstname"/></td>
          <td><xsl:value-of select="lastname"/></td>
          <td><xsl:value-of select="occupation"/></td>
          <td><xsl:value-of select="city"/></td>
          <td><xsl:value-of select="price"/></td>
        </tr>
        </xsl:for-each> 
    </table>

  </body>
</html>
</xsl:template>
</xsl:stylesheet>