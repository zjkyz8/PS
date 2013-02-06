Function ParseIni ($filePath, $sectionName) {
	switch -regex -file $file {
    		"^\[(.+)\]$" {
      		$section = $matches[1].Trim()
      		$ini[$section] = @{}
    	}
    	"^\s*([^#].+?)\s*=\s*(.*)" {
      		$name,$value = $matches[1..2]
      		$ini[$section][$name] = $value.Trim()
    	}  	
	$ini[$sectionName]
}