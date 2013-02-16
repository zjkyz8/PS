."..\src\ParseIni.ps1"
$currentPath = $MyInvocation.MyCommand.Path | Split-Path -parent

Function PrepareIniFile($fileName) {
	$fileContent='[default]
returnUrl="http://www.google.com?question={0}"'
	$sw = [System.IO.StreamWriter] ($currentPath + "\" + $fileName)
	$sw.WriteLine($fileContent)
	$sw.Close()

}

Function ShouldReturnKeyValuePair() {
	$fileName = "TestFile.ini"
	PrepareIniFile $fileName
	$config = ParseIni $fileName "default" 
	 $config['returnurl']
}

ShouldReturnKeyValuePair