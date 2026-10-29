<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đặt vé thành công</title>
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

    <div class="success-box">

        <div class="success-icon">✓</div>

        <h1>Đặt vé thành công!</h1>

        <p>Cảm ơn bạn đã sử dụng hệ thống đặt vé tàu.</p>

        <div class="ticket">

            <p><b>Họ tên:</b> ${name}</p>

            <p><b>Email:</b> ${email}</p>

            <p><b>Chuyến tàu:</b> ${train}</p>

            <p><b>Số lượng vé:</b> ${quantity}</p>

            <p><b>Ngày đi:</b> ${date}</p>

        </div>

        <a class="btn" href="index.jsp">Về trang chủ</a>

    </div>

</div>

<footer>
    Train Reservation System © 2026
</footer>

</body>
</html>
