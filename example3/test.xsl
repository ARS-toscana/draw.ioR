<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:template match="/">
    <mxfile>
      <xsl:apply-templates/>
    </mxfile>
  </xsl:template>
  
  <xsl:template match="/">
    <xsl:variable name="copyString"><xsl:copy-of select="."/></xsl:variable>
    <html>
      <head>
        <meta charset="utf-8"/>
      </head>
      <body>
        <div class="mxgraph" style="max-width:100%;border:1px solid transparent;">
          <xsl:attribute name="data-mxgraph">
            <xsl:copy-of select="." disable-output-escaping="yes"/>
          </xsl:attribute>
          <xsl:copy-of select="." disable-output-escaping="yes"/>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>