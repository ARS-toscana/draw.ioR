<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" omit-xml-declaration="yes"/>
    <xsl:template match="/">
      <xsl:copy-of select="mxfile"/>
    </xsl:template>
</xsl:stylesheet>