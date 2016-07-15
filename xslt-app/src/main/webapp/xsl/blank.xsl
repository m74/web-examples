<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">
    <xsl:output method="html" encoding="windows-1251" indent="yes"/>

    <xsl:include href="variables.xsl"/>

    <xsl:template match="b|ol|li|p">
        <xsl:element name="{name()}">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="style">
        <style type="text/css" media="all">
            <xsl:apply-templates/>
        </style>
    </xsl:template>

    <xsl:template match="style[@uri]">
        <link href="{$cp}{@uri}" type="text/css" rel="stylesheet"/>
    </xsl:template>


    <xsl:template match="error">
        <pre style="color: red;">
            <xsl:apply-templates/>
        </pre>
    </xsl:template>


    <xsl:template match="/">
        <xsl:apply-templates select="blank/style"/>

        <div id="blank">
            <xsl:attribute name="class">
                <xsl:value-of select="blank/@layout"/>
                <xsl:if test="/blank/param[@name = 'bold']">bold</xsl:if>
            </xsl:attribute>
            <div class="body">
                <xsl:apply-templates select="blank|document"/>

                <!--<xsl:apply-templates />-->

                <xsl:if test="//param[@name='message']">
                    <div style="font-style: italic;">
                        <xsl:value-of select="//param[@name='message']/@value"/>
                    </div>
                </xsl:if>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
