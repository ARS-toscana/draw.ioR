<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <xsl:variable name="copyString" select="diagram[1]"></xsl:variable>
    <html>
      <head>
        <meta charset="utf-8"/>
      </head>
      <body>
        <div class="mxgraph" style="max-width:100%;border:1px solid transparent;" data-mxgraph = "{$copyString}">
          <xsl:copy-of select="mxfile"/>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>