<?xml version="1.0" encoding="utf-8" ?>

<!--
This is an XSL stylesheet which converts mscript XML files into XSLT.
Use the XSLT command to perform the conversion.

Ned Gulley and Matthew Simoneau, September 2003
Copyright 1984-2007 The MathWorks, Inc.
$Revision: 1.1.6.7 $  $Date: 2008/02/29 12:45:30 $

Modified by Hrothgar to create a to-MarkDown custom .xsl.
-->

<!DOCTYPE xsl:stylesheet [ <!ENTITY nbsp "&#160;"> ]>
<xsl:stylesheet
    version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"
    indent="no"/>
<!-- <xsl:strip-space elements="code"/> -->
<xsl:template match="mscript">
<xsl:variable name="exTitle" select="cell[1]/steptitle"/>
<xsl:variable name="exAuthordate" select="cell[1]/text"/>
<xsl:variable name="exMeta" select="cell[2]/text"/>---
title: "<xsl:value-of select="normalize-space($exTitle)" disable-output-escaping="yes"/>"
layout: example
authordate: "<xsl:value-of select="normalize-space($exAuthordate)" disable-output-escaping="yes"/>"
meta: "<xsl:value-of select="normalize-space($exMeta)" disable-output-escaping="yes"/>"
---

<xsl:variable name="body-cells" select="cell[position()>1]"/>

<!-- Include contents if there are titles for any subsections. -->
<xsl:if test="count(cell/steptitle[not(@style = 'document')])">
<xsl:call-template name="contents">
<xsl:with-param name="body-cells" select="$body-cells"/>
</xsl:call-template>
</xsl:if>

<!-- Loop over each cell -->
<xsl:for-each select="$body-cells">
<!-- Title of cell -->
<xsl:if test="steptitle">
<xsl:variable name="headinglevel">
<xsl:choose>
<xsl:when test="steptitle[@style = 'document']">

## </xsl:when>
<xsl:otherwise>

## </xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:value-of select="$headinglevel"/>
<xsl:apply-templates select="steptitle"/>
<xsl:text>&#xA;&#xA;</xsl:text><!-- line break! -->

</xsl:if>

<!-- Contents of each cell -->
<xsl:if test="position()>1">
    <xsl:apply-templates select="text"/>
</xsl:if>
<xsl:apply-templates select="mcode"/>
<xsl:apply-templates select="mcodeoutput"/>
<xsl:apply-templates select="img"/>

</xsl:for-each>


<xsl:if test="copyright">
----
*<xsl:apply-templates select="copyright"/>*
</xsl:if>

</xsl:template>


<xsl:template name="meta"><xsl:value-of select="normalize-space()"/></xsl:template>


<xsl:template name="contents">
</xsl:template>


<!-- HTML Tags in text sections -->

<xsl:template match="html">
<xsl:value-of select="@text" disable-output-escaping="yes"/>
</xsl:template>

<xsl:template match="p">

<xsl:apply-templates/>

<xsl:text>

</xsl:text>
</xsl:template>

<xsl:template match="ul">

<xsl:apply-templates/>
</xsl:template>
<xsl:template match="ol">

<xsl:apply-templates/>
</xsl:template>
<xsl:template match="li">

- <xsl:apply-templates/><xsl:text>
</xsl:text></xsl:template>

<xsl:template match="pre">
<xsl:choose>
<xsl:when test="@class='error'">

</xsl:when>
<xsl:otherwise>

<pre class='mcode'>
<xsl:value-of select="."/>
</pre>

</xsl:otherwise>
</xsl:choose>
</xsl:template>
<xsl:template match="b">*<xsl:apply-templates/>*</xsl:template>
<xsl:template match="tt">`<xsl:apply-templates/>`</xsl:template>
<xsl:template match="i">_<xsl:apply-templates/>_</xsl:template>
<xsl:template match="a"><xsl:text disable-output-escaping="yes">&lt;</xsl:text><xsl:apply-templates/><xsl:text disable-output-escaping="yes">&gt;</xsl:text></xsl:template>

<!-- Code input and output -->

<xsl:template match="mcode">

<pre class='mcode-input'>
<xsl:value-of select="."/>
</pre>

</xsl:template>


<xsl:template match="mcodeoutput">
<xsl:choose>
<xsl:when test="substring(.,0,8)='&lt;latex&gt;'">
<xsl:value-of select="substring(.,8,string-length(.)-16)" disable-output-escaping="yes"/>
</xsl:when>
<xsl:otherwise>

<pre class='mcode-output'>
<xsl:value-of select="."/>
</pre>

</xsl:otherwise>
</xsl:choose>
</xsl:template>


<!-- Figure and model snapshots -->

<!-- Nick Hale -->
<xsl:template match="img[@class='equation']">
<xsl:value-of select="@alt"/>
</xsl:template>
<!-- End Nick Hale -->

<xsl:template match="img">

<img>
<xsl:attribute name="src">img/<xsl:value-of select="@src"/></xsl:attribute>
<xsl:attribute name="class">figure</xsl:attribute>
<xsl:attribute name="alt"><xsl:value-of select="@alt"/></xsl:attribute>
<xsl:text>

</xsl:text>
</img>
</xsl:template>

<!-- <xsl:template match="text()" /> -->

</xsl:stylesheet>
