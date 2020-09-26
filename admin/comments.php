<!-- header -->
<?php include "includes/admin_header.php"; ?>

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
                        <?php

                            if(isset($_GET['sourse'])){
                                $sourse = $_GET['sourse'];
                            } else {
                                $sourse='';
                            }
                            switch($sourse){
                                case 'add_post':
                                    include "includes/add_post.php"; 
                                break;

                                case 'edit_post':
                                    include "includes/edit_post.php";
                                break;

                                case 3:
                                    echo "hello 3";
                                break;

                                case 4:
                                    echo "hello 4";
                                break;

                                default:
                                include "includes/view_all_comments.php"; 

                            }





                        ?>




                        
                       
                    </div>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

        <!-- Footer -->
        <?php include "includes/admin_footer.php"; ?>