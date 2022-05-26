<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<h2>Products</h2>
<table border="1"> 
    <tr bgcolor="#9acd32"> 
        <th>SKU</th> 
        <th>Created At</th> 
        <th>Shippable</th> 
        <th>Product Name</th>
        <th>Manufacturer</th>  
        <th>Manufacturer ID</th> 
        <th>Description</th> 
        <th>USD Price</th> 
        <th>Canada Price</th> 
        <th>Euro Price</th> 
        <th>Product Items</th> 
    </tr>
    <xsl:for-each select="products/product"> 
    <tr>     
        <td><xsl:value-of select="@sku"/></td> 
        <td><xsl:value-of select="@createdAt"/></td> 
        <td><xsl:value-of select="@shippable"/></td>     
        <td><xsl:value-of select="productName"/></td> 
        <td><xsl:value-of select="manufacturer"/></td> 
        <xsl:for-each select="manufacturer"> 
        <td><xsl:value-of select="@id"/></td>  
        </xsl:for-each> 
        <td><xsl:value-of select="description"/></td> 
        <xsl:for-each select="prices"> 
        <td><xsl:value-of select="price[1]"/></td> 
        <td><xsl:value-of select="price[2]"/></td> 
        <td><xsl:value-of select="price[3]"/></td>  
        </xsl:for-each>     
        <td><xsl:value-of select="productItems"/></td>   
	</tr>
    </xsl:for-each> 
</table> 

<h2>Table 1</h2>
<table border="1"> 
    <tr bgcolor="#9acd32"> 
        <th>Product Name</th>
        <th>Manufacturer ID</th> 
        <th>Description</th> 
        <th>USD Price</th> 
    </tr>
    <xsl:for-each select="products/product"> 
    <xsl:if test="@shippable='true'">
    <tr>     
        <td><xsl:value-of select="productName"/></td> 
        <xsl:for-each select="manufacturer"> 
        <td><xsl:value-of select="@id"/></td>  
        </xsl:for-each> 
        <td><xsl:value-of select="description"/></td> 
        <xsl:for-each select="prices"> 
        <td><xsl:value-of select="price[1]"/></td> 
        </xsl:for-each>     
	</tr>
    </xsl:if>
    </xsl:for-each> 
</table> 

<h2>Table 2</h2>
<table border="1"> 
    <tr bgcolor="#9acd32"> 
        <th>Product Name</th>
        <th>Description</th> 
        <th>USD Price</th> 
        <th>Euro Price</th> 
    </tr>
    <xsl:for-each select="products/product"> 
    <xsl:if test="(manufacturer/@id)='acme'">
    <tr>     
        <td><xsl:value-of select="productName"/></td> 
        <td><xsl:value-of select="description"/></td> 
        <xsl:for-each select="prices"> 
        <td><xsl:value-of select="price[1]"/></td> 
        <td><xsl:value-of select="price[3]"/></td>  
        </xsl:for-each>        
	</tr>
     </xsl:if> 
    </xsl:for-each> 
</table> 

</body>
</html>
</xsl:template>
</xsl:stylesheet>
