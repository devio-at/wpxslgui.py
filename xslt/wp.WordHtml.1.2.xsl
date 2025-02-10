<?xml version="1.0" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
			xmlns:o="urn:schemas-microsoft-com:office:office"
			xmlns:content="http://purl.org/rss/1.0/modules/content/"
			xmlns:wp="http://wordpress.org/export/1.2/">
	<xsl:output method="html" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/tr/xhtml1/DTD/xhtml1-transitional.dtd" 
		omit-xml-declaration="yes" media-type="text/html" />
	<xsl:template match="/rss/channel">
		<html xmlns:v="urn:schemas-microsoft-com:vml" 
			xmlns:o="urn:schemas-microsoft-com:office:office" 
			xmlns:w="urn:schemas-microsoft-com:office:word">
			<head>
				<meta http-equiv="Content-Type" content="text/html" />
				<meta name="ProgId" content="Word.Document" />
				<meta name="Generator" content="wpxslgui" />
				<meta name="Originator" content="wpxslgui" />
				<title>
					<xsl:value-of select="title"/> -
					<xsl:value-of select="description"/>
				</title>
				<xsl:text disable-output-escaping="yes">
				<![CDATA[
<!--[if gte mso 9]><xml>
 <o:DocumentProperties>
  <o:Author>wpxslgui</o:Author>
  <o:Revision>1</o:Revision>
  <o:Created>2010-01-10T00:00:00Z</o:Created>
 </o:DocumentProperties>
</xml>
<![endif]-->
				]]>
</xsl:text>
				<style type="text/css">
					<xsl:text disable-output-escaping="yes">
<![CDATA[
					<!--
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{mso-style-parent:"";
	margin:0cm;
	margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:10.0pt;
	mso-bidi-font-size:12.0pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:"Times New Roman";}
h1
	{mso-style-next:Standard;
	margin-top:12.0pt;
	margin-right:0cm;
	margin-bottom:3.0pt;
	margin-left:0cm;
	text-indent:0cm;
	page-break-before:always;
	mso-pagination:widow-orphan;
	page-break-after:avoid;
	mso-outline-level:1;
	mso-list:l1 level1 lfo2;
	font-size:16.0pt;
	font-family:Arial;
	mso-fareast-font-family:"Times New Roman";
	mso-font-kerning:16.0pt;
	font-weight:bold;}
h2
	{mso-style-next:Standard;
	margin-top:12.0pt;
	margin-right:0cm;
	margin-bottom:3.0pt;
	margin-left:28.9pt;
	text-indent:-28.9pt;
	mso-pagination:widow-orphan;
	page-break-after:avoid;
	mso-outline-level:2;
	mso-list:l1 level2 lfo2;
	font-size:14.0pt;
	font-family:Arial;
	mso-fareast-font-family:"Times New Roman";
	font-weight:bold;
	font-style:italic;}
h3
	{mso-style-next:Standard;
	margin-top:12.0pt;
	margin-right:0cm;
	margin-bottom:3.0pt;
	margin-left:0cm;
	mso-pagination:widow-orphan;
	page-break-after:avoid;
	mso-outline-level:3;
	font-size:13.0pt;
	font-family:Arial;
	mso-fareast-font-family:"Times New Roman";
	font-weight:bold;}
p.MsoToc1, li.MsoToc1, div.MsoToc1
	{mso-style-update:auto;
	mso-style-next:Standard;
	margin-top:6.0pt;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:0cm;
	margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	tab-stops:right dotted 453.1pt;
	font-size:10.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:"Times New Roman";
	font-weight:bold;
	font-style:italic;}
p.MsoToc2, li.MsoToc2, div.MsoToc2
	{mso-style-update:auto;
	mso-style-next:Standard;
	margin-top:6.0pt;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:10.0pt;
	margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:10.0pt;
	mso-bidi-font-size:13.0pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:"Times New Roman";
	font-weight:bold;}
p.MsoToc3, li.MsoToc3, div.MsoToc3
	{mso-style-update:auto;
	mso-style-next:Standard;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:20.0pt;
	margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:10.0pt;
	mso-bidi-font-size:12.0pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:"Times New Roman";}
a:link, span.MsoHyperlink
	{color:blue;
	text-decoration:underline;
	text-underline:single;}
a:visited, span.MsoHyperlinkFollowed
	{color:purple;
	text-decoration:underline;
	text-underline:single;}
p.Code, li.Code, div.Code, pre.Code
	{mso-style-name:Code;
	margin:0cm;
	margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:10.0pt;
	mso-bidi-font-size:12.0pt;
	font-family:"Courier New";
	mso-spacerun: yes;
	mso-fareast-font-family:"Times New Roman";}
p.TOC, li.TOC, div.TOC
	{mso-style-name:TOC;
	mso-style-parent:"Heading 1";
	margin-top:12.0pt;
	margin-right:0cm;
	margin-bottom:3.0pt;
	margin-left:0cm;
	page-break-before:always;
	mso-pagination:widow-orphan;
	page-break-after:avoid;
	font-size:16.0pt;
	font-family:Arial;
	mso-fareast-font-family:"Times New Roman";
	mso-font-kerning:16.0pt;
	font-weight:bold;}
@page Section1
	{size:595.3pt 841.9pt;
	margin:70.9pt 70.9pt 2.0cm 70.9pt;
	mso-header-margin:35.45pt;
	mso-footer-margin:35.45pt;
	mso-vertical-page-align:middle;
	mso-paper-source:0;}
div.Section1
	{page:Section1;}
@page Section2
	{size:595.3pt 841.9pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;
	mso-header-margin:35.4pt;
	mso-footer-margin:35.4pt;
	mso-paper-source:0;}
div.Section2
	{page:Section2;}
 /* List Definitions */
@list l0
	{mso-list-id:59259480;
	mso-list-template-ids:-341388676;}
@list l0:level1
	{mso-level-tab-stop:36.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level2
	{mso-level-text:"%1\.%2\.";
	mso-level-tab-stop:57.6pt;
	mso-level-number-position:left;
	margin-left:57.6pt;
	text-indent:-21.6pt;}
@list l0:level3
	{mso-level-text:"%1\.%2\.%3\.";
	mso-level-tab-stop:90.0pt;
	mso-level-number-position:left;
	margin-left:79.2pt;
	text-indent:-25.2pt;}
@list l1
	{mso-list-id:973025741;
	mso-list-template-ids:-1702306464;}
@list l1:level1
	{mso-level-style-link:"berschrift 1";
	mso-level-text:%1;
	mso-level-tab-stop:39.6pt;
	mso-level-number-position:left;
	margin-left:39.6pt;
	text-indent:-21.6pt;}
@list l1:level2
	{mso-level-style-link:"�berschrift 2";
	mso-level-text:"%1\.%2";
	mso-level-tab-stop:46.8pt;
	mso-level-number-position:left;
	margin-left:46.8pt;
	text-indent:-28.8pt;}
@list l1:level3
	{mso-level-text:"%1\.%2\.%3";
	mso-level-tab-stop:54.0pt;
	mso-level-number-position:left;
	margin-left:54.0pt;
	text-indent:-36.0pt;}
@list l2
	{mso-list-id:1726946305;
	mso-list-template-ids:-1323562880;}
@list l2:level1
	{mso-level-tab-stop:18.0pt;
	mso-level-number-position:left;
	margin-left:18.0pt;
	text-indent:-18.0pt;}
@list l2:level2
	{mso-level-text:"%1\.%2\.";
	mso-level-tab-stop:39.6pt;
	mso-level-number-position:left;
	margin-left:39.6pt;
	text-indent:-21.6pt;}
@list l2:level3
	{mso-level-text:"%1\.%2\.%3\.";
	mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	margin-left:61.2pt;
	text-indent:-25.2pt;}
	-->
	]]>
					</xsl:text>
				</style>
			</head>
			<body link="blue" vlink="purple" style='tab-interval:35.4pt'>
				<div class='Section1'>
					<p class='MsoNormal' align='center' style='text-align:center'>
						<b>
							<span style='font-size:20.0pt;mso-bidi-font-size:12.0pt;font-family:Arial'>
								<xsl:value-of select="title"/>
								<o:p></o:p>
							</span>
						</b>
					</p>

					<p class='MsoNormal' align='center' style='text-align:center'>
						<b>
							<span style='font-size:20.0pt;mso-bidi-font-size:12.0pt;font-family:Arial'>
								<xsl:text disable-output-escaping="yes">
								<![CDATA[
<![if !supportEmptyParas]>&nbsp;<![endif]>
								]]>
								</xsl:text>
								<o:p></o:p>
							</span>
						</b>
					</p>

					<p class='MsoNormal' align='center' style='text-align:center'>
						<xsl:text disable-output-escaping="yes">
						<![CDATA[
<![if !supportEmptyParas]>&nbsp;<![endif]>
						]]>
						</xsl:text>
						<o:p></o:p>
					</p>

					<table border='1' cellspacing='0' cellpadding='0' style='margin-left:85pt; margin-right:85pt; border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt; mso-padding-alt:0cm 3.5pt 0cm 3.5pt'>
						<tr>
							<td width='384' colspan='1' valign='top' style='width:288.0pt;border:solid windowtext .5pt; border-top:none;mso-border-top-alt:solid windowtext .5pt;padding:0cm 3.5pt 0cm 3.5pt; '>
								<p class='MsoNormal' align='center' style='text-align:center'>
									<xsl:value-of select="description"/>
								</p>
							</td>
						</tr>
						<tr>
							<td width='384' colspan='1' valign='top' style='width:288.0pt;border:solid windowtext .5pt; border-top:none;mso-border-top-alt:solid windowtext .5pt;padding:0cm 3.5pt 0cm 3.5pt; '>
								<p class='MsoNormal' align='center' style='text-align:center'>
									generated by <a href="https://www.devio.at/en/projects/wpxslgui/" target="_blank">devio wpxslgui</a>
								</p>
							</td>
						</tr>
					</table>

					<p class='MsoNormal' align='center' style='text-align:center'>
						<xsl:text disable-output-escaping="yes">
						<![CDATA[
						<![if !supportEmptyParas]>&nbsp;<![endif]><o:p></o:p>
						]]>
						</xsl:text>
					</p>

					<p class='MsoNormal' align='center' style='text-align:center'>
						<span style='mso-tab-count:1'></span>
					</p>

				</div>

				<span style='font-size:16.0pt;font-family:Arial;mso-fareast-font-family:"Times New Roman";mso-font-kerning:16.0pt;mso-ansi-language:DE-AT;mso-fareast-language:DE;mso-bidi-language:AR-SA'>
					<br clear='all' style='page-break-before:always;mso-break-type:section-break' />
				</span>

				<div class='Section2'>
					<p class='TOC'>Table of Contents</p>

					<p class='MsoNormal' >
						<xsl:text disable-output-escaping="yes">
						<![CDATA[
<![if !supportEmptyParas]>&nbsp;<![endif]>
						]]>
						</xsl:text>
						<o:p></o:p>
					</p>

					<h1 style='margin-left:0cm;text-indent:0cm'>
						<xsl:text disable-output-escaping="yes"><![CDATA[<![if !supportLists]>]]></xsl:text>1
						<span style='font-size:7.0pt; font-family:"Times New Roman"'>
							<xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;]]></xsl:text>
						</span>
						<xsl:text disable-output-escaping="yes"><![CDATA[<![endif]><!--[if supportFields]>]]></xsl:text>
						<i>
							<span style='mso-element:field-end'></span>
						</i>
						<xsl:text disable-output-escaping="yes"><![CDATA[<![endif]-->]]></xsl:text>
						<a name="_TocTables">Posts</a>
					</h1>

					<xsl:apply-templates select="item[wp:post_type = 'post' and wp:status = 'publish']" ></xsl:apply-templates>
				</div>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="item" >
		<h2>
			<a >
				<xsl:attribute name="name">
					_Toc<xsl:value-of select="wp:post_id"/>
				</xsl:attribute>
			</a>
			<xsl:text disable-output-escaping="yes">
<![CDATA[
				<![if !supportLists]>
]]>
			</xsl:text>
			1.<xsl:value-of select="position()"/>
			<span style='font:7.0pt "Times New Roman"'>
				<xsl:text disable-output-escaping="yes">
<![CDATA[
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
]]>
					</xsl:text>
			</span>
			<xsl:text disable-output-escaping="yes">
<![CDATA[
<![endif]>
]]>
				</xsl:text>
			<xsl:value-of select="title"/>
		</h2>

		<!--div class="content"-->
			<xsl:call-template name="break">
				<xsl:with-param name="text" select="content:encoded"></xsl:with-param>
			</xsl:call-template>

			<!--xsl:value-of select="content:encoded" disable-output-escaping="yes"></xsl:value-of-->
		<!--/div-->

		<p class='MsoNormal' >
			<xsl:text disable-output-escaping="yes">
						<![CDATA[
<![if !supportEmptyParas]>&nbsp;<![endif]>
						]]>
						</xsl:text>
			<o:p></o:p>
		</p>

		<!--div-->
			<xsl:value-of select="wp:post_date"></xsl:value-of>
			<xsl:text> </xsl:text>
			<a target="_blank">
				<xsl:attribute name="href">
					<xsl:value-of select="link"/>
				</xsl:attribute>Link</a>
			<xsl:apply-templates select="category"></xsl:apply-templates>
		<!--/div>
		<br /-->

		<p class="MsoNormal">
			<span >
				<xsl:text disable-output-escaping="yes">
<![CDATA[
				<![if !supportEmptyParas]>&nbsp;<![endif]>
]]>
				</xsl:text>
				<o:p></o:p>
			</span>
		</p>

	</xsl:template>

	<xsl:template name="category" match="category">
		<xsl:if test="@nicename!=''">
			<xsl:text> </xsl:text>
			<xsl:value-of select="." />
		</xsl:if>
	</xsl:template>

	<xsl:template name="break">
		<xsl:param name="text" select="content:encoded"/>
		<xsl:choose>
			<xsl:when test="contains($text, '&#xa;')">
				<xsl:value-of select="substring-before($text, '&#xa;')"  disable-output-escaping="yes"/>
				<br/>
				<xsl:call-template name="break">
					<xsl:with-param name="text" select="substring-after($text, '&#xa;')"/>
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$text"  disable-output-escaping="yes"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>


</xsl:stylesheet>