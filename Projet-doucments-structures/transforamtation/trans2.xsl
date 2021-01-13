<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="#all"
    version="2.0">
    <xsl:mode on-no-match="shallow-copy"/>
    
    <xsl:template match="div/h1">
        <h1 aligh="center">
            <xsl:apply-templates/>
        </h1>
    </xsl:template>
    
</xsl:stylesheet>