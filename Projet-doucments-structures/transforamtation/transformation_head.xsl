<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:dc="http://example.com/dc"
    xmlns:meta="urn:oasis:names:tc:opendocument:xmlns:meta:1.0"
    xmlns:grddl="http://www.w3.org/2003/g/data-view#"
    xmlns:ooo="http://openoffice.org/2004/office"
    xmlns:xlink="http://www.w3.org/1999/xlink"
 
    exclude-result-prefixes="#all"
    version="2.0">
    <xsl:template match="/"> 
        <TEI xmlns="http://www.tei-c.org/ns/1.0">
            <teiHeader>
                <fileDesc>
                    <titleStmt>
                        <title><xsl:value-of select='office:document-meta/office:meta/meta:user-defined[@meta:name="Titre"]'/></title>                       
                            <author><xsl:value-of select='office:document-meta/office:meta/meta:user-defined[@meta:name="Auteur"]'/></author>                      
                    </titleStmt>
                    <publicationStmt>
                        <publisher/>
                            <date><xsl:value-of select='office:document-meta/office:meta/meta:user-defined[@meta:name="Date de publication"]'/></date>                       
                        <availability>
                            <licence><xsl:value-of select='office:document-meta/office:meta/meta:user-defined[@meta:name="Licence"]'/></licence>                          
                        </availability>
                    </publicationStmt>
                    <sourceDesc>
                        <bibl type="digitalSource">
                            <date><xsl:value-of select='office:document-meta/office:meta/meta:user-defined[@meta:name="Date de la source"]'/></date>
                            <ref><xsl:value-of select='office:document-meta/office:meta/meta:user-defined[@meta:name="Source"]'/></ref>
                        </bibl>
                    </sourceDesc>
                </fileDesc>
                <encodingDesc>
                    <projectDesc>
                        <p><xsl:value-of select='office:document-meta/office:meta/meta:user-defined[@meta:name="Source"]'/></p>                       
                    </projectDesc>
                </encodingDesc>
            </teiHeader>
        </TEI>
                    
    </xsl:template>
</xsl:stylesheet>