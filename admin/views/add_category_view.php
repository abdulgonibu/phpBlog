<?php
$obj = new adminBlog();
if (isset($_POST['add_cat'])) {
    $return_msg = $obj->add_category($_POST);
}
?>

<h2>Add Category Page</h2>
<?php if (isset($return_msg)) {echo $return_msg;}?>
<form action="" method="POST">
    <div class="form-group">
    <label class="small mb-1" for="inputEmailAddress">Category Name</label>
    <input class="form-control py-4" id="inputEmailAddress" type="text"    name="cat_name" placeholder="Enter Categroy Name" />
    </div>
    <div class="form-group">
    <label class="small mb-1" for="cat_des">Category Description</label>
    <textarea name="cat_des" id="cat_des" style="width: 100%;" cols="30" rows="10"></textarea>
    </div>

    <input type="submit" value="Add Category" name="add_cat" class="form-control btn btn-block btn-primary">
</form>
