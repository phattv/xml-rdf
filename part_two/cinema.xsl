<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!-- Variables -->
  <xsl:param name="currentPage" select="1" />
  <xsl:param name="pageSize" select="20" />

  <xsl:template match="/">
    <html>
      <head>
        <style>
          tables td, tables th { border: 1px solid #ddd; padding: 8px; } tables
          tr:nth-child(even){background-color: #f2f2f2;} tables tr:hover
          {background-color: #ddd;} tables th { padding-top: 12px;
          padding-bottom: 12px; text-align: left; background-color: #4CAF50;
          color: white; }
        </style>
      </head>
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
        <xsl:for-each select="root/movies/element">
          <h3>
            <xsl:value-of select="./week" />
          </h3>
          <xsl:for-each select="./movies/element">
            <p><xsl:value-of select="./day"/></p>
            <table style="border-collapse: collapse">
              <thead>
                <tr>
                  <th style="border: 1px solid #ddd; padding: 8px;"
                    >Showtime</th
                  >
                  <th style="border: 1px solid #ddd; padding: 8px;">Movie</th>
                  <th style="border: 1px solid #ddd; padding: 8px;">Screen</th>
                  <th style="border: 1px solid #ddd; padding: 8px;">Usher</th>
                  <xsl:if test="./day = 'Sunday'">
                    <th style="border: 1px solid #ddd; padding: 8px;">Theme</th>
                  </xsl:if>
                </tr>
              </thead>
              <xsl:for-each select="./movies/element">
                <tr>
                  <td style="border: 1px solid #ddd; padding: 8px;"
                    ><xsl:value-of select="./showtime"
                  /></td>
                  <td style="border: 1px solid #ddd; padding: 8px;"
                    ><xsl:value-of select="./screen/movie"
                  /></td>
                  <td style="border: 1px solid #ddd; padding: 8px;"
                    ><xsl:value-of select="./screen/number"
                  /></td>
                  <td style="border: 1px solid #ddd; padding: 8px;"
                    ><xsl:value-of select="./screen/usher"
                  /></td>
                  <xsl:if test="./screen/theme != ''">
                    <td style="border: 1px solid #ddd; padding: 8px;"
                      ><xsl:value-of select="./screen/theme"
                    /></td>
                  </xsl:if>
                </tr>
              </xsl:for-each>
            </table>
          </xsl:for-each>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

<!-- TODO: Search: <xsl:for-each select="root/movies/element[screen/name='screen 1']"> -->
<!-- TODO: Sort: <xsl:sort select="showday/value"/> -->
<!-- TODO: Pagination -->
<!-- TODO: parameters <xsl:param name="Page" select="0" /> -->
