<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />
  <xsl:template match="/">
    <html>
      <body>
        <table border="1">
          <xsl:for-each-group select="orarend/ora" group-by="idopont/nap">
            <tr>
              <td>
                <xsl:value-of select="current-grouping-key()" />
              </td>
              <xsl:for-each select="current-group()">
                <xsl:sort select="idopont/tol" data-type="number" order="ascending" />
                <td>
                  <xsl:value-of select="targy" />
                  <br />
                  <xsl:value-of select="helyszin" />
                   / 
                  <xsl:value-of select="@tipus" />
                  <br />
                  <xsl:value-of select="idopont/tol" />:00
                   - 
                  <xsl:value-of select="idopont/ig" />:00
                </td>
              </xsl:for-each>
            </tr>
          </xsl:for-each-group>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>