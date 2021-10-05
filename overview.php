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
            <a href="index.php">Home</a>
            <a href="overview.php" class="active">Header Overview</a>
            <a href="about.php">About</a>
        </div>
        <div class="header">
            <div id="logo">
                <h1>
                    <a href="index.php">Inspector</a>
                </h1>
            </div>  
            <h2>Overview of HTTP Headers</h2>
        </div>
        <div id='overview' class='main'>
            <table border="1" cellspacing="0" style="border-collapse:collapse;">
            <tr>
                <th>ID</th>
                <th>Fieldname</th>
                <th>Description</th>
            </tr>
        <?php
        require_once('db.php');

        foreach($allheaders as $h) {
        ?>
            <tr>
                <td><?= $h->header_id ?></td>
                <td><?= $h->header_fieldname ?></td>
                <td><?= $h->header_descr ?></td>
            </tr>
        <?php
        }
        ?>
            </table>
        </div>
    </body>
</html>
