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
	<xsl:template match='Zone'>
		<xsl:if test="position()=1">
			<section class="what-we-do-article">
				<xsl:apply-templates select="News" mode='ZoneNews1'>
				</xsl:apply-templates>
			</section>

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
		<div class="row">
			<div class="col-lg-4">
				<div class="article-title-about">
					<h2>
						<xsl:value-of select='Title'></xsl:value-of>
						<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
					</h2>
				</div>
				<article>
					<xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
				</article>
			</div>
			<div class="col-lg-7 offset-1">
				<article>
					<img>
					<xsl:attribute name='src'>
						<xsl:value-of select='ImageUrl'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='alt'>
						<xsl:value-of select='Title'></xsl:value-of>
					</xsl:attribute>
					</img>
				</article>
			</div>
		</div>
	</xsl:template>



	<xsl:template match='News' mode="ZoneNews2">
		<div class="swiper-slide">
			<div class="wrapper">
				<div class="swiper-image">
					<img>
					<xsl:attribute name='src'>
						<xsl:value-of select='ImageUrl'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='alt'>
						<xsl:value-of select='Title'></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<div class="swiper-caption">
					<h5>
						<xsl:value-of select='Title'></xsl:value-of>
						<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
					</h5>
					<p>
						<xsl:value-of select='Title'></xsl:value-of>
						<xsl:value-of select='BriefContent' disable-output-escaping='yes'></xsl:value-of>
					</p>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>