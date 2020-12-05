<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Karu</title>
    </head>
    <body>
        <a href="index.php">На главную</a>
        <div>
            <?php
                if (isset($content)) {
                    echo $content;
                }
                ?>						
        </div> <!-- /.inner-content -->
    </body>
</html>