#$here = Split-Path -Parent $MyInvocation.MyCommand.Path
#$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
#. "$here\$sut"
. "..\HelloScript\Get-HelloWorld.ps1"

Describe "Get-HelloWorld" {
	It "output 'Hello World!'" {
		Get-HelloWorld | Should Be "Hello World!"
	}
}