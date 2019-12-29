<!DOCTYPE html>
<html lang="en">
<head>
    <title>News Feed</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
    <center><h1>News Feed</h1></center>
     <form action="actionNewsFeed.php" method="POST" enctype="multiple/form-data">
        <label>News Title:</label>
        <input type="text" required name="news_title" class="form-control" placeholder="Enter News Title" required>
        <br>
        <label>News Description:</label>
        <input type="text" required name="news_description" class="form-control" placeholder="Enter News Description" required>
        <br>
        <label>News Type:</label>
        <select name="news_type" required class="form control">
            <option value="">---Select News Type</option>
            <option value="102">Competition</option>
            <option value="103">ANFA</option>
            <option value="104">Development</option>
            <option value="105">Mens Football</option>
            <option value="106">Women's Football</option>
        </select>
        <br><br>
        <input type="file" name="newsImage" required class="form-control">
        <br><br>
        <input type="submit" name="newsAdd" value="Add News" class="btn btn-success">


    </form>
</body>
</html>