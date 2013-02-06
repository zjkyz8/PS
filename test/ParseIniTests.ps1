Function PrepareIniFile() {
	$fileName = "TestFile.ini"
	if(Test-Path $fileName) {
		Remove-Item $fileName
	}
	New-Item $fileName -type File
	$sw = [System.IO.StreamWriter] $fileName
	#$sw.
	$sw.Close()

}

PrepareIniFile