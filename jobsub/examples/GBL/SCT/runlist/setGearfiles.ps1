Function setGearfiles {
param ($Collection, $GearFile)
$ind=$GearFile.LastIndexOf("\")+1;
$GearFile1=$GearFile.Substring($ind);
$pre = $GearFile1.Substring(0,24);
$suf= $GearFile1.Substring(30);



Get-Content $Collection|foreach{

$runnum=$_.ToString().Substring(3,6);
 $newGearName=".\$pre$runnum$suf"
 Write-Host $newGearName

 Copy-Item -Path  $GearFile $newGearName
}



}
