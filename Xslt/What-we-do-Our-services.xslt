<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
		<xsl:value-of select="NewsList"></xsl:value-of>
	</xsl:template>

	<xsl:template match="News/Title">

		<xsl:if test="position()=1">
			<section class="about-us-sevices">
				<xsl:apply-templates select="News" mode='ZoneNews1'>
				</xsl:apply-templates>
			</section>

		</xsl:if>
		<xsl:if test="position()=2">
			<section class="about-us-sevices-quote">
				<xsl:apply-templates select="News" mode='ZoneNews2'>
				</xsl:apply-templates>
			</section>

		</xsl:if>
		<xsl:if test="position()=3">
			<section class="we-do-swiper">

				<div class="rotate-title">
					<p>
						<xsl:value-of select='SubTitle'></xsl:value-of>
						<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
					</p>
				</div>
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="News" mode='ZoneNews3'>
						</xsl:apply-templates>
					</div>
				</div>
				<div class="we-do-navigation">
					<div class="we-do-prev"><em class="lnr lnr-chevron-left"></em></div>
					<div class="we-do-next"><em class="lnr lnr-chevron-right"></em></div>
				</div>

				<xsl:apply-templates select="News" mode='ZoneNews3'>
				</xsl:apply-templates>
			</section>
		</xsl:if>
	</xsl:template>


	<xsl:template match='News' mode="ZoneNews1">
		<div class="rotate-title">
			<p>
				<xsl:value-of select='SubTitle'></xsl:value-of>
				<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
			</p>
		</div>
		<div class="row">
			<div class="col-12 col-lg-4 offset-1">
				<article>
					<h2>
						<xsl:value-of select='Title'></xsl:value-of>
						<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
					</h2>
					<xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>

				</article>
			</div>
			<div class="col-12 col-lg-4 offset-2">
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
		<div class="service-quote-wrapper">
			<div class="service-quote">
				<h2>We are honored to provide the best products to our customers</h2>
				<p>- Manager -</p>
			</div>
		</div>
	</xsl:template>
	<xsl:template match='News' mode="ZoneNews3">
		<div class="swiper-slide">
			<div class="wrapper row">
				<div class="swiper-image col-lg-8">
					<img>
					<xsl:attribute name='src'>
						<xsl:value-of select='ImageUrl'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='alt'>
						<xsl:value-of select='Title'></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<div class="swiper-caption col-lg-4">
					<h2>
						<xsl:value-of select='Title'></xsl:value-of>
						<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
					</h2>
					<xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
				</div>
			</div>
		</div>

	</xsl:template>
</xsl:stylesheet>