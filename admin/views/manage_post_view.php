<?php

$posts = $obj->display_post();
?>

<h2>Manage Post Page</h2>

<div class="table-responsive">
    <table class="table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Content</th>
                <th>Thumbnail</th>
                <th>Author</th>
                <th>Date</th>
                <th>Category</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <?php while ($postsdata = mysqli_fetch_assoc($posts)) { ?>
                <tr>
                    <td><?php echo $postsdata['post_id']; ?></td>
                    <td><?php echo $postsdata['post_title']; ?></td>
                    <td><?php echo $postsdata['post_content']; ?></td>
                    <td><img style="height: 50px;" src="../upload/<?php echo $postsdata['post_img']; ?>" alt="" srcset=""></td>
                    <td><?php echo $postsdata['post_author']; ?></td>
                    <td><?php echo $postsdata['post_date']; ?></td>
                    <td><?php echo $postsdata['cat_name']; ?></td>
                    <td><?php  if($postsdata['post_status']==1){
                        echo "Published";
                    }else{
                        echo "Unpublished";
                    }?></td>
                    <td>
                        <a class="btn btn-primary" href="#">Edit</a>
                        <a class="btn btn-danger" href="#">Delete</a>
                    </td>
                </tr>
            <?php } ?>
        </tbody>

    </table>

</div>