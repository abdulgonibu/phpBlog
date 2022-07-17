<?php
include "class/function.php";
$obj = new adminBlog();
session_start();
$id = $_SESSION['adminID'];
if ($id == null) {
    header("location: index.php");
}
if (isset($_GET['adminlogout'])) {
    if ($_GET['adminlogout'] == 'logout') {
        $obj->adminLogout();
    }
}
?>

<?php include_once 'includes/header.php'?>
    <body class="sb-nav-fixed">
     <?php include_once 'includes/topnav.php'?>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
              <?php include_once 'includes/sidenav.php'?>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                    <?php
if (isset($view)) {
    if ($view == "dashboard") {
        include "views/dashboard_view.php";
    } elseif ($view == "add_cat") {
        include "views/add_category_view.php";
    } elseif ($view == "manage_cat") {
        include "views/manage_category_view.php";
    } elseif ($view == "add_post") {
        include "views/add_post_view.php";

    } elseif ($view == "manage_post") {
        include "views/manage_post_view.php";
    }
}
?>
                    </div>
                </main>
               <?php include_once 'includes/t_footer.php'?>
    </body>
</html>
