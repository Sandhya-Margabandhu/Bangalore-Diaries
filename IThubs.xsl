<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <xsl:apply-templates/>
</xsl:template>

<xsl:template match="starter">
<h2>Food Menu card</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
<th style="text-align:left">S.no</th>
      <th style="text-align:left">Name</th>
      <th style="text-align:left">Rating</th>
<th style="text-align:left">Price</th>

    </tr>
    <xsl:for-each select="food">
    <tr>
      <td><b><xsl:value-of select="position()"/></b></td>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="Rating"/></td>
      <td><xsl:value-of select="price"/></td>
    </tr>
    </xsl:for-each>
  </table>

<p>Updated Food menu card</p>
  <table border="1"  style="background-color:#cccc00">
    <tr>
      <th>Node Position</th>
      <th>Name</th>
      <th>Rating</th>
      <th>Price</th>
      <th>Serving</th>
<th> 10% discount</th>
    </tr>
    <xsl:for-each select="food[(@type = 'non-veg') or (@type = 'mocktail')]">
      <tr>
        <td><b><xsl:value-of select="position()"/></b></td>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="price"/></td>
        <td><xsl:value-of select="Rating"/></td>
        <td><xsl:value-of select="serving"/></td>
<td><xsl:value-of select="round(price)-(0.1*price)"/></td>
        
      </tr>
    </xsl:for-each>
  </table>

<b>Changing the name of food items</b>
<table border="1" style="background-color:#cccc00">
    <tr>
      <th>Food Item</th>
      <th>String Length</th>
    </tr>
    <xsl:for-each select="food[name='Bagna cauda']">  
    <tr>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="translate(name,'Bagna','Pagna')"/></td>
      </tr>
    </xsl:for-each>
  </table>
</xsl:template>

</xsl:stylesheet>