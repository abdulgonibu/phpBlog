<?php

$categoryName = $obj->display_category();


if(isset($_POST['add_post'])){
   $msg = $obj->add_post($_POST);
}
?>

<h2>Add Post Page</h2>
<?php if(isset($msg)){echo $msg;} ?>
<form action="" method="POST" enctype="multipart/form-data">
    <div class="form-group">
        <label class="small mb-1" for="inputEmailAddress">Post Title</label>
        <input class="form-control py-4" id="inputEmailAddress" type="text" name="post_title" placeholder="Enter Post Title" />
    </div>
    <div class="form-group">
        <label class="small mb-1 " for="post_content">Post Content</label>
        <textarea name="post_content" class="form-control" id="post_content" cols="30" rows="10"></textarea>
    </div>

    <div class="form-group">
        <label class="small mb-1" for="inputEmailAddress">Post Thumbnail</label>
        <input class="form-control py-4" id="inputEmailAddress" type="file" name="post_img" placeholder="Enter Post Title" />
    </div>

    <div class="form-group">
        <label class="small mb-1" for="inputEmailAddress">Select Category</label>
        <select name="post_cat" id="" class="form-control">
            <?php
            while ($category = mysqli_fetch_assoc($categoryName)) { ?>
                <option value="<?php echo $category['cat_id']; ?>"> <?php echo $category['cat_name']; ?>

                </option>
            <?php } ?>

        </select>
    </div>

    <div class="form-group">
        <label class="small mb-1" for="inputEmailAddress">Post Summary</label>
        <input class="form-control py-4" id="inputEmailAddress" type="text" name="post_summery" placeholder="Enter Post Title" />
    </div>

    <div class="form-group">
        <label class="small mb-1" for="inputEmailAddress">Post Tag</label>
        <input class="form-control py-4" id="inputEmailAddress" type="text" name="post_tag" placeholder="Enter Post Title" />
    </div>

    <div class="form-group">
        <label class="small mb-1" for="inputEmailAddress">Post status</label>
        <select class="form-control" name="post_status" id="">
            <option value="1">Publish</option>
            <option value="0">UnPublish</option>
        </select>
    </div>

    <input type="submit" value="Add Post" name="add_post" class="form-control btn btn-block btn-primary">
</form>