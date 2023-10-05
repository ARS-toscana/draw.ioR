<?xml version="1.0" encoding="UTF-8"?>
  <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
      
      <xsl:template match="/">
        <html>
        <head>
        <title>XML to HTML Transformation</title>
        </head>
        <body>
        <h1>XML to HTML Transformation</h1>
        <!-- Access XML elements using XPath -->
        <xsl:for-each select="root/element">
          <p>
          <!-- Output XML values to HTML -->
          <xsl:value-of select="."/>
            </p>
            </xsl:for-each>
            </body>
            </html>
            </xsl:template>
            </xsl:stylesheet>