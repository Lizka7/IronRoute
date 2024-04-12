<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ticket</title>
    <script src="https://kit.fontawesome.com/047a896e47.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

<div class="icon-title-container">
    <a href="http://localhost:8082/">
        <i class="fa-solid fa-home fa-2xl" style="color: #ffffff;"></i>
    </a>
    <h1 class="hero-title">TICKETS</h1>
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
    <form action="/ticket/add" method="POST">
        <table>
            <thead>
            <th>PNR</th>
            <th>Railway Carriage</th>
            <th>Seat</th>
            <th>Date and time</th>
            </thead>
            <tbody>
            <tr>
                <td><input type="text" id="pnr" name="pnr"></td>
                <td><input type="text" id="railway_carriage" name="railway_carriage"></td>
                <td><input type="text" id="seat" name="seat"></td>
                <td><input type="date" id="date_time" name="date_time"></td>
            </tr>
            </tbody>
        </table>
        <div class="button-container">
            <button type="submit" class="button">Save</button><br><br>
        </div>
    </form>
</div>

<div class="form-container-del" style="display: none;">
    <form action="/ticket/delete" method="POST">
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
        <th>PNR</th>
        <th>Railway Carriage</th>
        <th>Seat</th>
        <th>Date and time</th>
    </tr>
    </thead>
    <tbody>
    <#list tickets as ticket>
        <tr>
                <td>${ticket.pnr}</td>
                <td>${ticket.railwayCarriage}</td>
                <td>${ticket.seat}</td>
                <td>${ticket.dateTime}</td>
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
