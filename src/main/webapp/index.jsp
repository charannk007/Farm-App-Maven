<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to My Page..!</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #c3d3a3, #bcc6d6);
            color: #140c1d;
            font-family: Arial, sans-serif;
        }
        .navbar {
            background-color: #25be41;
        }
        .navbar a {
            color: #b20caf !important;
            font-weight: bold;
        }
        .navbar a:hover {
            background-color: #add1bc;
        }
        .sidebar {
            background-color: #0b87b8;
            padding: 15px;
            position: fixed;
            top: 56px;
            bottom: 0;
            width: 200px;
        }
        .sidebar a {
            color: #aaed25;
            display: block;
            padding: 10px;
            text-decoration: none;
        }
        .sidebar a:hover {
            background-color: #600707;
        }
        .content {
            margin-left: 220px;
            padding: 20px;
        }
        footer {
            background-color: #2f9615;
            color: #161312;
            text-align: center;
            padding: 10px 0;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">My Website</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Services</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Sidebar -->
    <div class="sidebar">
        <h4>Follow Us</h4>
        <a href="https://www.facebook.com" target="_blank">Facebook</a>
        <a href="https://www.twitter.com" target="_blank">Twitter</a>
        <a href="https://www.instagram.com" target="_blank">Instagram</a>
        <a href="https://www.linkedin.com/in/charan-nk-95289416a/" target="_blank">LinkedIn</a>
    </div>

    <!-- Main Content -->
    <div class="content">
        <h1>About Me: Charan NK</h1>
        <p>Junior Devops Engineer</p>
        <p>Training @ Star-Agile</p>
        <p>From India</p>
biodupated 
    </div>
<br>
   <div class="content">
        <h1>About Me: Charan NK</h1>
        <p>Junior Devops Engineer</p>
        <p>Training @ Star-Agile</p>
        <p>From India</p>
<h1> biodupated </h1> 
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Charan-NK</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
