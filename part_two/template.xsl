<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!-- Variables -->
  <xsl:param name="currentPage" select="1" />
  <xsl:param name="pageSize" select="20" />

  <xsl:template match="/">
    <html>
      <body>
        <h1>
          <xsl:value-of select="root/name" />
        </h1>
        <h2>
          Address:
          <xsl:value-of select="root/address" />
          <br />
          Ownner:
          <xsl:value-of select="root/owner" />
          <br />
          Phone:
          <xsl:value-of select="root/phone" />
        </h2>
        <xsl:for-each select="root/moviesByWeek/element">
          <h3>
            <xsl:value-of select="./week" />
          </h3>
          <xsl:for-each select="./moviesByScreen/element">
            <p><xsl:value-of select="./name"/> - Usher: <xsl:value-of select="./usher"/></p>
            <table style="border-collapse: collapse">
              <thead>
                <tr>
                  <th style="border: 1px solid #ddd; padding: 8px;">Day</th>
                  <th style="border: 1px solid #ddd; padding: 8px;">Showtime</th>
                  <th style="border: 1px solid #ddd; padding: 8px;">Movie</th>
                  <th style="border: 1px solid #ddd; padding: 8px;">Theme</th>
                </tr>
              </thead>
              <xsl:for-each select="./moviesByDay/element">
                <tr>
                  <td style="border: 1px solid #ddd; padding: 8px;">
                    <xsl:value-of select="./day"/>
                  </td>
                  <td style="border: 1px solid #ddd; padding: 8px;">
                    <xsl:for-each select="./movies/element">
                      <xsl:if test="position() > 1">
                        <xsl:text>, </xsl:text>
                      </xsl:if>
                      <xsl:value-of select="." separator=", "/>
                    </xsl:for-each>
                  </td>
                  <td style="border: 1px solid #ddd; padding: 8px;">
                    <xsl:for-each select="./showTimes/element">
                      <xsl:if test="position() > 1">
                        <xsl:text>, </xsl:text>
                      </xsl:if>
                      <xsl:value-of select="." separator=", "/>
                    </xsl:for-each>
                  </td>
                  <td style="border: 1px solid #ddd; padding: 8px;">
                    <xsl:value-of select="./theme"/>
                  </td>
                </tr>
              </xsl:for-each>
            </table>
          </xsl:for-each>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
