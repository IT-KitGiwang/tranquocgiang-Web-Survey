<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Survey Result</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="font-sans bg-gradient-to-br from-blue-100 via-purple-100 to-pink-100 min-h-screen flex items-center justify-center">
    <div class="bg-white p-10 rounded-2xl shadow-xl max-w-lg w-full mx-4">
        <h1 class="text-3xl font-extrabold text-transparent bg-clip-text bg-gradient-to-r from-blue-500 to-purple-600 mb-8 text-center">Thank you for your submission!</h1>

        <h2 class="text-2xl font-semibold text-blue-700 mb-5 border-b-2 border-blue-200 pb-2">Your Information</h2>
        <div class="mb-6 space-y-3">
            <p class="text-gray-700"><span class="font-medium text-blue-600">First Name:</span> ${firstName}</p>
            <p class="text-gray-700"><span class="font-medium text-blue-600">Last Name:</span> ${lastName}</p>
            <p class="text-gray-700"><span class="font-medium text-blue-600">Email:</span> ${email}</p>
            <p class="text-gray-700"><span class="font-medium text-blue-600">Date of Birth:</span> ${empty dob ? "N/A" : dob}</p>
        </div>

        <h2 class="text-2xl font-semibold text-purple-700 mb-5 border-b-2 border-purple-200 pb-2">Survey</h2>
        <div class="space-y-3">
            <p class="text-gray-700"><span class="font-medium text-purple-600">Heard From:</span> ${heardFrom}</p>
            <p class="text-gray-700"><span class="font-medium text-purple-600">Wants Updates:</span> ${wantsUpdates != null ? "on" : ""}</p>
            <p class="text-gray-700"><span class="font-medium text-purple-600">Email OK:</span> ${emailOK != null ? "on" : ""}</p>
            <p class="text-gray-700"><span class="font-medium text-purple-600">Contact Via:</span> ${contactVia}</p>
        </div>
    </div>
</body>
</html>