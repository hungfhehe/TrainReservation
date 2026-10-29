
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách tàu</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<div class="navbar">
    <div class="logo">🚆 Train Reservation</div>
    <div>
        <a href="index.jsp">Trang chủ</a>
        <a href="train-list.jsp">Danh sách tàu</a>
        <a href="booking.jsp">Đặt vé</a>
    </div>
</div>

<div class="container page">

    <h1>Danh sách chuyến tàu</h1>
    <p>Thông tin các chuyến tàu hiện có</p>

    <table>
        <tr>
            <th>Mã tàu</th>
            <th>Tên tàu</th>
            <th>Điểm đi</th>
            <th>Điểm đến</th>
            <th>Giá vé</th>
            <th>Số ghế</th>
        </tr>

        <tr>
            <td>101</td>
            <td>Cecilia Ayala</td>
            <td>Hà Nội</td>
            <td>Hải Phòng</td>
            <td>250.000 VNĐ</td>
            <td>36</td>
        </tr>

        <tr>
            <td>202</td>
            <td>Rajdhani Express</td>
            <td>Hà Nội</td>
            <td>Đà Nẵng</td>
            <td>500.000 VNĐ</td>
            <td>40</td>
        </tr>

        <tr>
            <td>303</td>
            <td>Thống Nhất</td>
            <td>Hà Nội</td>
            <td>TP. Hồ Chí Minh</td>
            <td>800.000 VNĐ</td>
            <td>50</td>
        </tr>

    </table>

    <br>

    <a class="btn" href="booking.jsp">Đặt vé</a>

</div>

<footer>
    Train Reservation System © 2026
</footer>

</body>
</html>
