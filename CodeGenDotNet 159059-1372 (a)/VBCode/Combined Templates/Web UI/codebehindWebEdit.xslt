<?xml version="1.0" encoding="UTF-8" ?>
<!--
  ====================================================================
   Copyright ©2004, Kathleen Dollard, All Rights Reserved.
  ====================================================================
   I'm distributing this code so you'll be able to use it to see code
   generation in action and I hope it will be useful and you'll enjoy 
   using it. This code is provided "AS IS" without warranty, either 
   expressed or implied, including implied warranties of merchantability 
   and/or fitness for a particular purpose. 
  ====================================================================
  Summary: Generates the code behind for edting -->

<xsl:stylesheet version="1.0" 
			xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
			xmlns:xs="http://www.w3.org/2001/XMLSchema"
			xmlns:dbs="http://kadgen/DatabaseStructure" 
			xmlns:orm="http://kadgen.com/KADORM.xsd" 
			xmlns:ui="http://kadgen.com/UserInterface.xsd" 
			xmlns:msxsl="urn:schemas-microsoft-com:xslt" 
			xmlns:net="http://kadgen.com/StandardNETSupport.xsd" >
<xsl:import href="webSupport.xslt"/>
<xsl:import href="../../Chapter 8/BusinessObjects/CSLASupport.xslt"/>
<xsl:output method="text" encoding="UTF-8" indent="yes"/>
<xsl:preserve-space elements="*" />

<xsl:param name="Name"/>
<xsl:param name="filename"/>
<xsl:param name="database"/>
<xsl:param name="gendatetime"/>
<xsl:param name="BusinessObject"/>

<xsl:variable name="formname" select="$objectname"/>
<xsl:variable name="objectname" select="$BusinessObject"/>

<xsl:template match="/">
	<xsl:apply-templates select="//orm:Object[@Name=$objectname]" 
								mode="Object"/>
</xsl:template>

<xsl:template match="orm:Object" mode="Object">
' This file is autogenerated and changes are not expected. 
' Handcrafted changes should be made to the file  
' [ project dir ]/Editable/WebEdit/<xsl:value-of select="@Name"/>Edit.vb
Option Explicit On
Option Strict On

Imports System
Imports cslaMiddleTierTest

Public Class codebehind<xsl:value-of select="@Name"/>Edit
	Inherits <xsl:value-of select="@Name"/>Edit

#Region "Autogenerated code - DO NOT EDIT"
   <xsl:call-template name="FormControls" />
   
   <xsl:call-template name="AssignFormControls" />
#End Region

End Class
</xsl:template> 

</xsl:stylesheet>

  