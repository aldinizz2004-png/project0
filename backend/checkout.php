<?php
session_start();

// Database connection
$servername = "localhost";
$username = "username";
$password = "password";
$dbname = "mydatabase";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get form data
$fullname = $_POST['fullname'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$address = $_POST['address'];
$products = json_encode($_SESSION['cart']); 
$total_price = calculateTotalPrice($_SESSION['cart']); 
$payment_method = $_POST['paymentMethod'];

// Insert into database
$sql = "INSERT INTO orders (fullname, email, phone, address, products, total_price, payment_method)
        VALUES ('$fullname', '$email', '$phone', '$address', '$products', '$total_price', '$payment_method')";

if ($conn->query($sql) === TRUE) {
    sendConfirmationEmail($email, $fullname, $total_price);
    sendOrderNotificationEmail($fullname, $email, $phone, $address, $products, $total_price, $payment_method);

    unset($_SESSION['cart']);

    header("Location: order_confirmation.php");
    exit();
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
