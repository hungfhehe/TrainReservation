<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đặt vé tàu</title>
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

    <div class="form-box">

        <h1>🎫 Đặt vé tàu</h1>
        <p>Vui lòng nhập thông tin của bạn</p>

        <form action="TrainServlet" method="post">

            <label>Họ và tên</label>
            <input type="text" name="name" placeholder="Nhập họ tên" required>

            <label>Email</label>
            <input type="email" name="email" placeholder="Nhập email" required>

            <label>Chọn chuyến tàu</label>
            <select name="train" required>
                <option value="">-- Chọn tàu --</option>
                <option value="Cecilia Ayala">Cecilia Ayala - Hà Nội → Hải Phòng</option>
                <option value="Rajdhani Express">Rajdhani Express - Hà Nội → Đà Nẵng</option>
                <option value="Thống Nhất">Thống Nhất - Hà Nội → TP. Hồ Chí Minh</option>
            </select>

            <label>Số lượng vé</label>
            <input type="number" name="quantity" min="1" max="10" value="1" required>

            <label>Ngày đi</label>
            <input type="date" name="date" required>

            <button type="submit">XÁC NHẬN ĐẶT VÉ</button>

        </form>

    </div>

</div>

<footer>
    Train Reservation System © 2026
</footer>

</body>
</html>
