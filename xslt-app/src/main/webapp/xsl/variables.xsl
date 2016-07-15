<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:variable name="cp" select="/blank/@contextPath" />
	
	<xsl:variable name="mode" select="//param[@name='mode']/@value" />
	<xsl:variable name="stamp"
		select="/blank/param[@name = 'stamp']/@value = 'true'" />
		
	<xsl:variable name="retrieve"
		select="/blank/param[@name = 'retrieve']/@value = 'true'" />

	<!-- resources reference -->
	<xsl:variable name="rc">
		<xsl:if test="$mode = 'mail'">
			<xsl:text>cid:rc-</xsl:text>
		</xsl:if>
		<xsl:if test="not($mode) or $mode != 'mail'">
			<xsl:value-of select="/blank/@contextPath" />
			<xsl:text>/rc/</xsl:text>
		</xsl:if>
	</xsl:variable>

</xsl:stylesheet>