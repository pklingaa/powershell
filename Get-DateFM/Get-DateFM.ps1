#################################
##                             ##
## Function Get-DateFM         ##
## Created by Panupong Klingaa ##
## https://github.com/pklingaa ##
## Date: 2017-03-30            ##
##                             ##
#################################

function Get-DateFM {
	<#
	.SYNOPSIS
		Datetime format in 'yyyyMMdd-HHmmss'.
	.DESCRIPTION
		Usefull for quick logging current datetime.
		Save this function in memory and execute function when needed.
	.EXAMPLE
		Write-Output "$(Get-DateFM) is the current datetime in yyyyMMdd-HHmmss."
		20170329-234121 is the current datetime in yyyyMMdd-HHmmss.
	.EXAMPLE
		Get-DateFM -Format yyMMdd
		170329
	.Notes
		Something usefull for writing logmessage without re-running the line <Get-Date -Format yyyyMMdd-HHmmss> every time.
	.LINK
		https://github.com/pklingaa/powershell/Get-DateFM
    #>
	[cmdletbinding()]
	param (
		 $Format=[string]$Format
	)
	if ($Format -eq "")
	{
		Write-Verbose "Format not set. Using default format"
		$Format = "yyyyMMdd-HHmmss"
	}
	else
	{
		Write-Verbose "Format set to [$Format]."
	}
	(Get-Date).ToString($Format)
}