<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:npo="http://xmlns.sven.to/npo"
    xmlns:func="http://exslt.org/functions"
    xmlns:set="http://exslt.org/sets"
    extension-element-prefixes="func npo set">
<npo:comment>
        Get hostnames.
</npo:comment>
<npo:category>extract</npo:category>
<npo:post-processor>sort | uniq</npo:post-processor>

    <xsl:output method="text" />
    <xsl:strip-space elements="*" />

    <xsl:template match="/nmaprun/host/hostnames/hostname">
        <xsl:value-of select="@name"/>
        <xsl:text> </xsl:text>
        <xsl:value-of select="../../address/@addr"/>
            <xsl:text>
</xsl:text>
    </xsl:template>

    <xsl:template match="text()" />
</xsl:stylesheet>
