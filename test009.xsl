<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" extension-element-prefixes="yaslt"
                              xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                              xmlns:yaslt="http://www.mod-xslt2.com/ns/1.0">
  <xsl:output method="text" omit-xml-declaration="yes" indent="no" encoding="UTF8" />
  <xsl:strip-space elements="*" />
  <xsl:template match="tag">

      <!-- Use some extensions -->
    <yaslt:value-of select="name: $MODXSLT[name] - namespace: $MODXSLT[namespace] ">
      <xsl:fallback>
      Fallback employed
      </xsl:fallback>
    </yaslt:value-of>
    <yaslt:value-of select="libpcre: $MODXSLT[conf-libpcre] - libxmlthreads: $MODXSLT[conf-libxmlthreads] ID: ${GET[id]} HOST: $HEADER[Host]">
      <xsl:fallback>
      Fallback employed
      </xsl:fallback>
    </yaslt:value-of>

  Tag matched: <xsl:value-of select="." />
    <xsl:apply-templates/>
  </xsl:template>
  <xsl:template match="subtag">
  * Subtag matched: <xsl:value-of select="." /> <xsl:value-of select="attrib" />
    <xsl:apply-templates />
  </xsl:template>
</xsl:stylesheet>
