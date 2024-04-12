<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Payment</title>
    <script src="https://kit.fontawesome.com/047a896e47.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

<div class="icon-title-container">
    <a href="http://localhost:8082/">
        <i class="fa-solid fa-home fa-2xl" style="color: #ffffff;"></i>
    </a>
    <h1 class="hero-title">PAYMENTS</h1>
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
    <form action="/payment/add" method="POST">
        <table>
            <thead>
            <tr>
                <th>Transaction ID</th>
                <th>Bank</th>
                <th>Card</th>
                <th>Total</th>
                <th>PNR</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td><input type="text" id="transactionId" name="transactionId"></td>
                <td><input type="text" id="bank" name="bank"></td>
                <td><input type="text" id="card" name="card"></td>
                <td><input type="text" id="total" name="total"></td>
                <td><input type="text" id="pnr" name="pnr"></td>
            </tr>
            </tbody>
        </table>
        <div class="button-container">
            <button type="submit" class="button">Save</button><br><br>
        </div>
    </form>
</div>

<div class="form-container-del" style="display: none;">
    <form action="/payment/delete" method="POST">
        <table>
            <thead>
            <tr>
                <th>Transaction Id</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td><input type="text" id="transactionId" name="transactionId"></td>
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
        <th>Transaction ID</th>
        <th>Bank</th>
        <th>Card</th>
        <th>Total</th>
        <th>PNR</th>
    </tr>
    </thead>
    <tbody>
    <#list payments as payment>
        <tr>
            <td>${payment.transactionId}</td>
            <td>${payment.bank}</td>
            <td>${payment.card}</td>
            <td>${payment.total}</td>
            <td>${payment.pnr}</td>
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
