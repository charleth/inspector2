<?php
if(isset($_POST['q'])){
    $url=trim($_POST['q']);
    $headers=get_headers($url);
}
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="Utf-8" />
        <meta name="description" contents="HTTP Security Header Inspection">
        <link rel="stylesheet" href="style.css" type="text/css">
        <title>HTTP Header Inspector</title>
    </head>
    <body>
        <div class="navbar">
            <a href="index.php" class="active">Home</a>
            <a href="overview.php">Header Overview</a>
            <a href="about.php">About</a>
        </div>    
        <div id="header" class="header"> 
            <div id="logo">
                <h1>
                    <a href="index.php">Inspector</a>
                </h1>
            </div>  

        <div id="banner">
            <header>
                <h2>Looking at HTTP Headers</h2>
                <br>
                <form id="checkForm" action="" method="post" name="check">
                <div>
                    <div>
                        <input id="q" type="text" name="q" placeholder="enter address here" autofocus="" autocorrect="off" autocapitalize="none" spellcheck="false" value="">
                        <input id="check" class="button big alt" value="Check" type="submit">
                    </div>
                </div>
                </form>
            </header>
        </div>
        </div>

        <div class='main'>
            <div class="reportSectionFirst">
                <h2>Results</h2>
                <p>You entered: <?php echo $_POST['q']; ?></p>
                <!--?php if(isset($headers))
                print_r($headers); ?-->
            </div>
            <div class="reportSection">
                <h3>Raw Headers</h3>
                <table border="1" cellspacing="0" style="border-collapse:collapse;">
                <tr>
                    <th>header</th>
                    <th>content</th>
                </tr>
                <?php
                # $pieces = explode(" ", $headers[1]);
                foreach($headers as $h) {
                    $pieces = explode(" ", $h)
                ?>
                <tr>
                    <td><?= $pieces[0]?></td>
                    <td><?= $pieces[1]?></td>
                </tr>
                <?php
                }
                ?>
                </table>
            </div>
            <div class="reportSection">
                <!-- part two:-->
            </div>
            <div class="reportSection">
                <!-- part three-->
            </div>
            <div class="reportSection">
                <!-- part four-->
            </div>
            <div class="reportSection">
                <!-- part five-->
            </div>        
            <div class="reportSection">
                <!-- part six-->        
            </div>        
        </div>      
    </body>
</html>