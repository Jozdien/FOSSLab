<?php
$server = "localhost";
$suname = "user";
$spassword = "Monroe@42";
$database = "FOSSLamp";
$username = $_POST["email"];
$password = $_POST["password"];
$connect = new mysqli($server, $suname, $spassword, $database);
$head = "You're a failure.";
if ($connect->connect_error) 
{
    echo "Connection error";
} 
else 
{
    $sql = "SELECT email,password FROM user u WHERE u.email='$username'";
    $output = $connect->query($sql);
    if ($output === false) 
    {
        echo "SQL had an error";
    } 
    else 
    {
        while ($row = $output->fetch_assoc()) 
        {
            if ($password === $row["password"]) 
            {
                $head = "It worked.";
                break;
            }
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>LAMP</title>
        <link rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/bootstrap/
        4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3
        Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous"/>
        </head>
    <body>
        <h1><?php echo $head ?></h1>
        <?php 
        if ($head === "It worked.") 
        { echo "<h2>Welcome $username!</h2>"; }
        ?>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4
        YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/
        1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJt
        y5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/
        bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ
        6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>