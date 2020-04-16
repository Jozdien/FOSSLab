<?php
$server = "localhost";
$suname = "user";
$spassword = "Monroe@42";
$database = "FOSSLamp";
$email = $_POST["email"];
$password = $_POST["password"];
$connect = new mysqli($server, $suname, $spassword, $database);
if ($connect->connect_error) 
{
    die("Connection Error: " . $connect->connect_error);
} 
else 
{
    $sql = "INSERT INTO user(email,password) VALUES('$email','$password')";
    if ($connect->query($sql) === true) 
    {
        echo "It worked.";
        header("Location:/signin.html");
    } 
    else 
    {
        echo "You're a failure";
    }
}
$connect->close();
?>