<?php

require 'config.php';

$dsn = "mysql:host=$host;dbname=$db;charset=UTF8";
$options = [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION];

try {
    $pdo = new PDO($dsn, $user, $password, $options);

    if ($pdo) {
        // echo "connected to the $db database success";
        if ($_SERVER['REQUEST_METHOD'] === "POST") {
            $username = $_POST['username'];
            $password = $_POST['password'];

            $query = "SELECT * FROM `users` WHERE username = :username";
            $statement = $pdo->prepare($query);
            $statement->execute([':username' => $username]);

            $user = $statement->fetch(PDO::FETCH_ASSOC);

            if ($user) {
                if ('123' === $password) {
                    $_SESSION['user_id'] = $user['id'];
                    $_SESSION['name'] = $user['name'];
                    $_SESSION['username'] = $user['username'];

                    header("Location: posts.php");
                    exit;
                } else {
                    echo "Invalid password!";
                }
            } else {
                echo "User not found!";
            }
        }
    }
} catch (PDOException $e) {
    echo $e->getMessage();
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
</head>
<body>

<!-- <div class="video-container">
        <video autoplay muted loop class="video-background">
            <source src="medium.mp4" type="video/mp4">
        </video> -->
</div>
    <section class="signup">
        <h1>Sign In</h1>
    
        <form id="loginPage" method="POST" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>"> 
            <label>Username</label>
            <input type="text" id="username" placeholder="" name="username" required>
            <label>Password</label>
            <input type="password" id="password" placeholder="" name="password" required>
            <button id="signin">Log In</button>
        </form>
    </section>
</body>
<!-- <script>
    // Login Page
    document.getElementById("loginPage").addEventListener("submit", function(event) {
        event.preventDefault();

        const username = document.getElementById("username").value;
        const password = document.getElementById("password").value;

       fetch("https://jsonplaceholder.typicode.com/users")
            .then(response => response.json())
            .then(users => {
                const user = users.find(user => user.username === username);

                if (user){
                    // alert("Login Success");
                    if (password === "123") {
                        window.location.href = "posts.php";
                        // alert("Login Success");
                    } else {
                        alert("Incorrect Password");
                    }
                } else {
                    // alert("Incorrect credentials");
                    alert("User not Found");
                }
                // alert(user);
            })
            .catch(error => alert("Error fetching users:", error));
    });
</script> -->
</html>
</html>