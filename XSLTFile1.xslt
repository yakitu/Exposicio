<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/exposicions">
		<exposicions>
			<xsl:apply-templates/>
		</exposicions>
	</xsl:template>
	<xsl:template match="exposicio">
		<exposicio>
			<xsl:attribute name="nom">
				<xsl:value-of select="nom"/>
			</xsl:attribute>
			<xsl:attribute name="entitat">
				<xsl:value-of select="entitat"/>
			</xsl:attribute>
			<xsl:attribute name="tarifa">
				<xsl:value-of select="tarifa"/>
			</xsl:attribute>
			<xsl:attribute name="any">
				<xsl:value-of select="any"/>
			</xsl:attribute>
			<xsl:attribute name="imatge">
				<xsl:value-of select="imatge"/>
			</xsl:attribute>
		</exposicio>
	</xsl:template>
</xsl:stylesheet>
