<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="#all" version="3.0">
    <xsl:output method="html" version="4.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="DOC">
        <xsl:result-document href="index.html" method="html">
            <div xmlns="http://www.w3.org/1999/xhtml" data-template="templates:surround" data-template-with="templates/page.html" data-template-at="content">
                <xsl:apply-templates/>
            </div>
        </xsl:result-document>
    </xsl:template>
    <xsl:template match="div/info">
        <div class="header">
            <h1 align="center">
                <xsl:value-of select="h1"/>
            </h1>
            <h3>
                <xsl:value-of select="author"/>
            </h3>
            <h3>
                <xsl:value-of select="formation"/>
            </h3>
            <p>
                <xsl:value-of select="p"/>
            </p>
        </div>
    </xsl:template>

    <xsl:template match="nav/lien">
        <nav>
            <a href="{./@url}">
                <xsl:value-of select="."/>
            </a>
        </nav>
    </xsl:template>
    <xsl:template match="div/main">
        <xsl:for-each select="head">
            <h2>
                <xsl:value-of select="."/>
            </h2>
        </xsl:for-each>
        <xsl:for-each select="p">
            <p>
                <xsl:value-of select="."/>
            </p>
        </xsl:for-each>
                
    </xsl:template>
    
    
</xsl:stylesheet>