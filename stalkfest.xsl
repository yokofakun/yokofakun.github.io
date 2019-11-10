<?xml version='1.0'  encoding="UTF-8" ?>
<xsl:stylesheet 
	xmlns:xsl='http://www.w3.org/1999/XSL/Transform'
	xmlns:h='http://www.w3.org/1999/xhtml'
	version='1.0'>
<xsl:output method="text"/>


<xsl:template match="/">
<xsl:apply-templates select="//div[p[contains(.,'List of all other')]]//a[contains(@class,'some-item-user')]"/>
</xsl:template>

<xsl:template match="a">
<xsl:variable name="s" select="normalize-space(.)"/>
<xsl:choose>
<xsl:when test="starts-with($s,'@')">
	<xsl:value-of select="substring($s,2)"/>
</xsl:when>
<xsl:otherwise>
	<xsl:value-of select="$s"/>
</xsl:otherwise>
</xsl:choose>
<xsl:text>
</xsl:text>
</xsl:template>

</xsl:stylesheet>
