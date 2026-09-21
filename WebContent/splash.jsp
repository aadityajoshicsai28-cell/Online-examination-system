<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="TestVerse - Your Complete Online Examination Platform">
    <title>TestVerse | Your Complete Online Examination Platform</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <style>
        html, body {
            height: 100%;
            margin: 0;
            overflow: hidden;
        }
    </style>
</head>
<body class="splash-body">
    <div class="testverse-splash" aria-live="polite">
        <div class="splash-orb orb-one"></div>
        <div class="splash-orb orb-two"></div>
        <div class="splash-glow"></div>

        <div class="splash-content">
            <div class="splash-logo" aria-label="TestVerse logo">TV</div>
            <div class="splash-badge">Smart assessment platform</div>
            <h1>TestVerse</h1>
            <p>Your Complete Online Examination Platform</p>
            <div class="splash-loader" aria-hidden="true">
                <span></span>
                <span></span>
                <span></span>
            </div>
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const contextPath = '${pageContext.request.contextPath}';
            const role = '${sessionScope.role != null ? sessionScope.role : ""}';
            const target = role === 'admin'
                ? (contextPath + '/adminDashboard.jsp')
                : (role === 'student' ? (contextPath + '/studentDashboard.jsp') : (contextPath + '/login.jsp'));

            const timer = setTimeout(function () {
                window.location.href = target;
            }, 3700);

            window.addEventListener('beforeunload', function () {
                clearTimeout(timer);
            });
        });
    </script>
</body>
</html>
