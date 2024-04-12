<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Route</title>
    <script src="https://kit.fontawesome.com/047a896e47.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

<div class="icon-title-container">
    <a href="http://localhost:8082/">
        <i class="fa-solid fa-home fa-2xl" style="color: #ffffff;"></i>
    </a>
    <h1 class="hero-title">ROUTE</h1>
</div>


<div class="button-container">
    <button class="add-button" onclick="toggleFormAdd()">ADD</button>
    <button class="delete-button" onclick="toggleFormDel()">DELETE</button>
    <a href="http://localhost:8082/payment"><button class="payment-button">PAYMENTS</button></a><br>
</div>


<!--
      - google font link
    -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;700&family=Forum&display=swap" rel="stylesheet">

<div class="form-container-add" style="display: none;">
    <form action="/route/add" method="POST">
        <table>
            <thead>
            <th>Route Number</th>
            <th>Start Point</th>
            <th>End Point</th>
            </thead>
            <tbody>
            <tr>
                <td><input type="text" id="route_number" name="route_number"></td>
                <td><input type="text" id="start_point" name="start_point"></td>
                <td><input type="text" id="end_point" name="end_point"></td>
            </tr>
            </tbody>
        </table>
        <div class="button-container">
            <button type="submit" class="button">Save</button><br><br>
        </div>
    </form>
</div>

<div class="form-container-del" style="display: none;">
    <form action="/route/delete" method="POST">
        <table>
            <thead>
            <tr>
                <th>PNR</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td><input type="text" id="pnr" name="pnr"></td>
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

        <th>Route Number</th>
        <th>Start Point</th>
        <th>End Point</th>
    </tr>
    </thead>
    <tbody>
    <#list routes as route>
    <tr>
        <td>${route.route_number}</td>
        <td>${route.start_point}</td>
        <td>${route.end_point}</td>
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
