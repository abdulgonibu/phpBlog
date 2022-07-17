<?php
include "admin/class/function.php";
$obj = new adminBlog();
$getcat = $obj->display_category();
?>

<?php include_once 'includes/header.php';?>
    <!-- Page Content -->
    <!-- Banner Starts Here -->
    <?php include_once 'includes/banner.php';?>
    <!-- Banner Ends Here -->

    <?php include_once 'includes/cta.php';?>


    <section class="blog-posts">
      <div class="container">
        <div class="row">
        <?php include_once 'includes/blogpost.php';?>
        <?php include_once 'includes/sidebar.php';?>
        </div>
      </div>
    </section>


    <?php include_once 'includes/footer.php';?>
