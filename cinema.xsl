<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!-- Variables -->
  <xsl:param name="currentPage" select="1" />
  <xsl:param name="pageSize" select="20" />

  <xsl:template match="/">
    <html>
      <body>
        <h1>
          <xsl:value-of select="root/name"/>
        </h1>
        <h2>
          <xsl:value-of select="root/address"/>
          <br/>
          <xsl:value-of select="root/owner"/>
          <br/>
          <xsl:value-of select="root/phone"/>
        </h2>
        <xsl:for-each select="root/movies/element">
          <xsl:sort select="showday/value"/>
          <ul>
            <li>
              Movie name: <b><xsl:value-of select="screen/movie"/></b>
            </li>
            <li>
              Screen: <b><xsl:value-of select="screen/number"/></b>
            </li>
            <li>
              Usher: <b><xsl:value-of select="screen/usher"/></b>
            </li>
            <li>
              Showday: <b><xsl:value-of select="showday/text"/></b>
            </li>
            <li>
              Showtime: <b><xsl:value-of select="showtime"/></b>
            </li>
          </ul>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

<!-- TODO: Search: <xsl:for-each select="root/movies/element[screen/name='screen 1']"> -->
<!-- TODO: Sort: <xsl:sort select="showday/value"/> -->
<!-- TODO: Pagination -->
<!-- TODO: parameters <xsl:param name="Page" select="0" /> -->