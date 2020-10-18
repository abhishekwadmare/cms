<!-- header -->
<?php include "includes/admin_header.php"; ?>

<?php 

    if(isset($_SESSION['username'])){
        
        $username = $_SESSION['username'];

        $query = "SELECT * FROM users WHERE username = '{$username}' ";
        $select_user_profile_query = mysqli_query($connection, $query);

        while($row = mysqli_fetch_array($select_user_profile_query)){
            $user_id      = $row['user_id'];    
            $username    = $row['username'];
            $user_password  = $row['user_password'];
            $user_firstname = $row['user_firstname'];
            $user_lastname   = $row['user_lastname'];
            $user_email  = $row['user_email'];
            $user_image    = $row['user_image'];
            $user_role    = $row['user_role'];
        }

    }

?>

    <div id="wrapper">

        <!-- Navigation -->
        <?php include "includes/admin_navigation.php"; ?>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Welcome to Admin
                            <small>Author</small>
                        </h1>
                        
                        <form action="" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                                <label for="first_name">Firstname </label>
                                <input value="<?php echo $user_firstname; ?>" type="text" class="form-control" name="user_firstname">
                            </div>

                            <div class="form-group">
                                <label for="last_name">Lastname</label>
                                <input value="<?php echo $user_lastname; ?>" type="text" class="form-control" name="user_lastname">
                            </div>

                            <div class="form-group">
                                <select name="user_role" id="">
                                <option value="<?php echo $user_role; ?>" ><?php echo $user_role; ?></option>
                                    <?php
                                        if($user_role == 'admin'){
                                            echo "<option value='subscriber'>subscriber</option>";
                                        } else {
                                            echo"<option value='admin'>admin</option>";
                                        }
                                    
                                    ?>

                                    
                                
                                </select>

                            </div>
                            

                        <!-- 
                            <div class="form-group">
                                <label for="image">Post Image</label>
                                <input type="file" name="image">
                            </div> -->

                            <div class="form-group">
                                <label for="username">Username</label>
                                <input value="<?php echo $username; ?>" type="text" class="form-control" name="username">
                            </div>

                            <div class="form-group">
                                <label for="user_email">Email</label>
                                <input value="<?php echo $user_email; ?>" type="email" class="form-control" name="user_email">
                            </div>

                            <div class="form-group">
                                <label for="user_password">Password</label>
                                <input value="<?php echo $user_password; ?>" type="password" class="form-control" name="user_password">
                            </div>

                            <div class="form-group">
                                <input class="btn btn-primary" type="submit" class="form-control" name="edit_user" value="Update Profile">
                            </div>

                        </form>




                        
                       
                    </div>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

        <!-- Footer -->
        <?php include "includes/admin_footer.php"; ?>