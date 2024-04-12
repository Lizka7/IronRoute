<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Train</title>
    <script src="https://kit.fontawesome.com/047a896e47.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

<div class="icon-title-container">
    <a href="http://localhost:8082/">
        <i class="fa-solid fa-home fa-2xl" style="color: #ffffff;"></i>
    </a>
    <h1 class="hero-title">TRAINS</h1>
</div>


<div class="button-container">
    <button class="add-button" onclick="toggleFormAdd()">ADD</button>
    <button class="delete-button" onclick="toggleFormDel()">DELETE</button><br>
</div>

<!--
      - google font link
    -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;700&family=Forum&display=swap" rel="stylesheet">

<div class="form-container-add" style="display: none;">
    <form action="/train/add" method="POST">
        <table>
            <thead>
            <tr>
                <th>Train Number</th>
                <th>Type Train</th>
                <th>Capacity</th>
                <th>Passport</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td><input type="text" id="passport" name="passport"></td>
                <td><input type="text" id="last_name" name="last_name"></td>
                <td><input type="text" id="first_name" name="first_name"></td>
                <td><input type="text" id="phone" name="phone"></td>
            </tr>
            </tbody>
        </table>
        <div class="button-container">
            <button type="submit" class="button">Save</button><br><br>
        </div>
    </form>
</div>

<div class="form-container-del" style="display: none;">
    <form action="/train/delete" method="POST">
        <table>
            <thead>
            <tr>
                <th>Passport Number</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td><input type="text" id="train_number" name="train_number"></td>
            </tr>
            </tbody>
        </table>
        <div class="button-container">
            <button type="submit" class="button">Delete</button><br><br>
        </div>
    </form>
</div>

<table>
    <thead>
    <tr>
        <th>Train Number</th>
        <th>Type Train</th>
        <th>Capacity</th>
        <th>Passport</th>
    </tr>
    </thead>
    <tbody>
    <#list trains as train>
        <tr>
            <td>${train.train_number}</td>
            <td>${train.type_train}</td>
            <td>${train.capacity}</td>
            <td>${train.passport}</td>
        </tr>
    </#list>
    </tbody>
</table>

<script>
    function toggleFormAdd() {
        var form = document.querySelector('.form-container-add');
        form.style.display = form.style.display === 'none' ? 'block' : 'none';
    }
    function toggleFormDel() {
        var form = document.querySelector('.form-container-del');
        form.style.display = form.style.display === 'none' ? 'block' : 'none';
    }
</script>

</body>
</html>
