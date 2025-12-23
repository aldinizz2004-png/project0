<?php
$meal = $_POST['meal'] ?? '';

if (empty($meal)) {
    header("Location: ../frontend/index.html");
    exit;
}
require_once __DIR__ . "/config.php";
$conn = new mysqli($DB_HOST, $DB_USER, $DB_PASS, $DB_NAME);


if ($conn->connect_error) {
    die("Database connection failed");
}

$stmt = $conn->prepare(
    "SELECT name FROM restaurants WHERE meal = ? ORDER BY rating DESC LIMIT 1"
);
$stmt->bind_param("s", $meal);
$stmt->execute();
$result = $stmt->get_result();

$restaurant = null;
if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $restaurant = $row['name'];
}

$stmt->close();
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Recommendation Result</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #0727b5ff, #3e0379ff);
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .card {
            background: white;
            width: 420px;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        h1 {
            color: #1c1c1cff;
            margin-bottom: 15px;
        }

        p {
            color: #4e4c4cff;
            font-size: 16px;
            margin-bottom: 25px;
        }

        .restaurant {
            font-size: 22px;
            font-weight: bold;
            color: #667eea;
            margin-bottom: 30px;
        }

        a {
            display: inline-block;
            text-decoration: none;
            padding: 12px 20px;
            background: #667eea;
            color: white;
            border-radius: 8px;
            font-weight: bold;
            transition: background 0.3s ease;
        }

        a:hover {
            background: #5a67d8;
        }
    </style>
</head>
<body>

<div class="card">
    <h1>🍽 Recommendation</h1>

    <?php if ($restaurant): ?>
        <p>Best restaurant for</p>
        <div class="restaurant"><?= htmlspecialchars($meal) ?></div>
        <p><?= htmlspecialchars($restaurant) ?></p>
    <?php else: ?>
        <p>I am so sorry my friend 😔</p>
        <p>No restaurant found for <b><?= htmlspecialchars($meal) ?></b></p>
    <?php endif; ?>

    <a href="../frontend/index.html">🔙 how about trying another meal</a>
</div>

</body>
</html>
