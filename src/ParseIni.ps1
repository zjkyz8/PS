Function ParseIni ($filePath, $sectionName) {
	$ini = @{}
	switch -regex -file $filePath {
    		"^\[(.+)\]$" {
      			$section = $matches[1].Trim()
      			$ini[$section] = @{}
		}
    		"^\s*([^#].+?)\s*=\s*(.*)" {
      			$name,$value = $matches[1..2]
      			$ini[$section][$name] = $value.Trim()
    		}
	} 	
	$ini[$sectionName]
}