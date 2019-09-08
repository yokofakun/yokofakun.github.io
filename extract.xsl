<?xml version='1.0'  encoding="UTF-8" ?>
<xsl:stylesheet 
	xmlns:xsl='http://www.w3.org/1999/XSL/Transform'
	xmlns:h='http://www.w3.org/1999/xhtml'
	version='1.0'>
<xsl:output method="text"/>


<xsl:template match="/">
<xsl:apply-templates select="//a[contains(@class,'author-name')]"/>
</xsl:template>

<xsl:template match="a">
<xsl:choose>
<xsl:when test="starts-with(.,'@')">
	<xsl:value-of select="substring(.,2)"/>
</xsl:when>
<xsl:otherwise>
	<xsl:value-of select="."/>
</xsl:otherwise>
</xsl:choose>
<xsl:text>
</xsl:text>
</xsl:template>

</xsl:stylesheet>
