<?php
## TODO durch require once ersetzen, db.php schreiben
$db=new mysqli('localhost','root','root','secheader');
$allheaders=array();
$result=$db->query("select header_id,header_fieldname,header_descr from headertable");
while($headerentry=$result->fetch_object()) {
    $allheaders[]=$headerentry;
}
$result->free();

?>