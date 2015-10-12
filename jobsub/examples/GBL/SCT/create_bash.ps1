function create_bashrunlist ($name,$outputName){

if(!$outputName){
Write-Host "no output name specified" 
$outputName = ([io.fileinfo]"$name").basename 
$outputName="$outputName.sh"
}
write-host "$name ==> $outputName"
$fileList=Get-Content  "$name"


foreach($f in $fileList){

$num =$f.Substring(3,6);

"sh ./runFile.sh $num &"|Out-File $outputName -Encoding ascii -Append

}

}
