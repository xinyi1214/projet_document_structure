<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0"
    xmlns:d="http://www.lotus.com/dxl"
    xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0"
    exclude-result-prefixes="#all"
    version="2.0">
    <xsl:output method="xml" encoding="utf-8" version="1.0" media-type="application/xml" indent="yes"/>
    
    <xsl:template match="office:document-content/office:body/office:text">
        <text>
        <body>
            <xsl:if test='text:p[@text:style-name="Title"]'>
            <head>               
                <xsl:value-of select='text:p[@text:style-name="Title"]'/>             
            </head>
            </xsl:if>
                <xsl:choose>
                    <xsl:when test='text:h[@text:style-name="Heading_20_1"]'>             
                    <xsl:for-each select='text:h[@text:style-name="Heading_20_1"]'>
                        <div n="1">
                        <head><xsl:value-of select='.'/></head>
                        <quote><xsl:apply-templates select='following-sibling::text:p[@text:style-name="citation"]'/></quote>

                            <xsl:for-each select='following-sibling::text:h[@text:style-name="Heading_20_2"]'>
                                <div n="2">
                                <head><xsl:value-of select="."/></head>
                                <p>
                                    <xsl:apply-templates select='following-sibling::text:p[@text:style-name="Text_20_body"]'/>
                                </p>
                                </div>
                            </xsl:for-each> 
                        </div>
                    </xsl:for-each>                
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:for-each select='text:h[@text:style-name="Heading_20_2"]'>
                            <div n="2">
                            <head><xsl:value-of select="."/></head>
                            <p>
                                <xsl:apply-templates select='following-sibling::text:p[@text:style-name="Text_20_body"]'/>
                            </p>
                            </div>
                        </xsl:for-each>
                        
                    </xsl:otherwise>
                </xsl:choose>

                                                   
        </body>
        </text>
    </xsl:template>
    <xsl:template match='text:p/text:span[@text:style-name="gras"]'>
        <hi rend="bold"><xsl:value-of select="."/></hi>
    </xsl:template>
    <xsl:template match='text:p/text:span[@text:style-name="italique"]'>
        <hi rend="italic"><xsl:value-of select="."/></hi>
    </xsl:template>


</xsl:stylesheet>