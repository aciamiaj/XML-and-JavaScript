<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<h2>Catalog</h2>
        <ul>
        <xsl:for-each select="catalog/product"> 
            <li>
                <article>
                <h3><xsl:value-of select="@product_id"/></h3>
                <p><xsl:value-of select="@description"/></p>
                  <xsl:value-of select="@product_image"/>
                  <h3>Catalog Items</h3>
                    <table border="1">
                      <tr> 
                        <th>Item Number</th> 
                        <th>Price</th> 
                        <th>Gender</th> 
                        <th>Small</th> 
                        <th>Medium</th> 
                        <th>Large</th> 
                        <th>Extra Large</th> 
                      </tr>  
                      <xsl:for-each select="catalog_item"> 
                      <tr>
                        <td><xsl:value-of select="item_number"/></td>
                        <td><xsl:value-of select="price"/></td>
                        <td><xsl:value-of select="translate(@gender,'omen','')"/></td> 
                        <td>
                        <xsl:for-each select="size"> 
                             <xsl:if test="@description='Small'">
                               <xsl:value-of select="@description"/>
                               <table> 
                                 <td><xsl:value-of select="color_swatch"/><xsl:value-of select="@image"/></td>
                              </table>  
                             </xsl:if>      
                         </xsl:for-each>
                        </td>
                        <td>
                          <xsl:for-each select="size"> 
                            <xsl:if test="@description='Medium'">
                              <xsl:value-of select="@description"/>
                            <table> 
                              <td><xsl:value-of select="color_swatch"/><xsl:value-of select="@image"/></td>
                            </table> 
                            </xsl:if>                    
                          </xsl:for-each>
                        </td>
                        <td>
                          <xsl:for-each select="size"> 
                            <xsl:if test="@description='Large'">
                              <xsl:value-of select="@description"/>
                            <table> 
                                <td><xsl:value-of select="color_swatch"/><xsl:value-of select="@image"/></td>
                            </table> 
                            </xsl:if>                    
                          </xsl:for-each>
                        </td>
                        <td>
                          <xsl:for-each select="size"> 
                            <xsl:if test="@description='Extra Large'">
                              <xsl:value-of select="@description"/>
                            <table> 
                              <td><xsl:value-of select="color_swatch"/><xsl:value-of select="@image"/></td>
                            </table>   
                            </xsl:if>                  
                          </xsl:for-each>
                        </td>   
                      </tr>  
                      </xsl:for-each> 
                    </table>
                </article>
            </li>
        </xsl:for-each>
        </ul>
</body>
</html>
</xsl:template>
</xsl:stylesheet>