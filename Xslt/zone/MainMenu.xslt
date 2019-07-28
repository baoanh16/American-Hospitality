<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:if test="count(/ZoneList/Zone) > 0">
			<ul class="main-nav">
				<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
			</ul>
		</xsl:if>
	</xsl:template>

	<xsl:template match="Zone">
		<li>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>

			<xsl:if test="count(Zone) > 0">
				<xsl:attribute name="class">
					<xsl:text>has-sub</xsl:text>
				</xsl:attribute>

			</xsl:if>
			<xsl:if test="count(Zone) > 0 and IsActive='true' ">
				<xsl:attribute name="class">
					<xsl:text>has-sub active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
			<xsl:if test="count(Zone) > 0">

				<ul class="nav-sub">
					<xsl:apply-templates select="Zone" mode="sub"></xsl:apply-templates>
				</ul>
			</xsl:if>
		</li>
	</xsl:template>
	<xsl:template match="Zone" mode="sub">
		<li>
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
</xsl:stylesheet>