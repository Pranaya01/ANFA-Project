    <?php
    include('config.php');

    if(isset($_POST['newsAdd']))
    {
        $news_title = $_POST['news_title'];
        $news_description = $_POST['news_description'];
        $news_type = $_POST['news_type'];
        $image_name = $_FILES['newsImage']['name'];
        //temp_image_name is store on temporary on tmp_newsImage
        $temp_newsImage = $_FILES['newsImage']['tmp_name'];
        $newsImage_type = $_FILES['newsImage']['newsImage_type'];
        $newsImage_size = $_FILES['newsImage']['newsImage_size'];
        $path  = "images/News Images";
        if(strtolower ($newsImage_type) == "newsImage/jpg" ||
            strtolower($newsImage_type) == "newsImage/png"  ||
            strtolower($newsImage_type) == "newsImage/jpeg")
        {
            if($newsImage_size <= 1000000)
            {
                $path = $path . $image_name;
                $query = "INSERT INTO news (news_title, news_description, news_type, news_image)
                          VALUES('$news_title', '$news_description', '$news_type', '$path')";
                $outcome = mysqli_query($conn_db, $query);
                if($outcome)
                {
                    echo "<script>alert('Image of News inserted Successfully')
                    </script>";
                    //method move_uploaded_file store image in folder
                    move_uploaded_file($temp_newsImage, $path);
                }
                else{
                    echo "<script>alert('Sorry, Data cannot be inserted')
                    </script>";
                }
            }
            else {
                echo "<script>alert('Please upload image size less than 1 MB.')
                window.location.href = 'news_feed.php';
                </script>";
            }
        }
        else 
        {
            echo "<script>alert('Sorry, Image Format Not Supported')
                window.location.href = 'news_feed.php';
                </script>";
        }

    }

    ?>
