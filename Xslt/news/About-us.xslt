<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="container-fluid">
			<div class="container">
				<xsl:apply-templates select='/ZoneList/Zone'></xsl:apply-templates>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="Zone">
		<xsl:if test="position()=1">
			<xsl:apply-templates select="News" mode='ZoneNews1'>
				<section class="afm-about-us">
					<xsl:apply-templates select="News" mode='ZoneNews1'>
					</xsl:apply-templates>
				</section>
			</xsl:apply-templates>
		</xsl:if>
		<xsl:if test="position()=2">
			<secttion class="about-our-team">
				<div class="article-title-about">
					<h2>
						<xsl:value-of select='Title'></xsl:value-of>
						<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
					</h2>
				</div>
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="News" mode='ZoneNews2'>
						</xsl:apply-templates>
					</div>
				</div>
			</secttion>
		</xsl:if>
	</xsl:template>

	<xsl:template match='News' mode="ZoneNews1">
		<article class="row">
			<div class="col-12 col-lg-5">
				<img src="./img/people/1.jpg" alt="">
			</div>

			<div class="col-12 col-lg-5 offset-2">
				<h2>
					<xsl:value-of select='Title'></xsl:value-of>
					<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
				</h2>
				<xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
				<article><img src="./img/people/1.jpg" alt=""></article>
			</div>
		</article>
	</xsl:template>
</xsl:stylesheet>