<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/rss/channel">
    <xsl:for-each select="/rss/channel/item">
        <div style="padding-bottom:10px; padding-top:10px;"><a>
            <xsl:attribute name="title"><xsl:value-of select="title"/></xsl:attribute>
            <xsl:attribute name="href"><xsl:value-of select="link"/></xsl:attribute>
            <xsl:value-of select="title"/>
        </a></div>
        <div><xsl:value-of disable-output-escaping="yes" select="description"/></div>
    </xsl:for-each>
</xsl:template>

</xsl:stylesheet>