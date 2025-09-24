# 📌 Java Web Survey Application

Ứng dụng web Java đơn giản minh họa cách sử dụng **Jakarta Servlet** và **JSP** để xử lý biểu mẫu khảo sát người dùng và hiển thị kết quả.

---

## 🚀 Tính năng chính
- Trang khảo sát (Survey Form) thu thập:
    - Thông tin cá nhân (họ, tên, email, ngày sinh).
    - Cách người dùng biết đến chúng tôi.
    - Tùy chọn nhận thông báo qua email.
    - Phương thức liên hệ mong muốn.

- Servlet `SurveyServlet`:
    - Nhận dữ liệu từ form.
    - Gán dữ liệu vào `request` thông qua `setAttribute()`.
    - Chuyển tiếp (forward) đến JSP.

- JSP `result.jsp`:
    - Hiển thị thông điệp **“Thank you for your submission!”**.
    - In ra toàn bộ thông tin người dùng đã nhập bằng **Expression Language (EL)**.

- Giao diện sử dụng **Tailwind CSS** → hiện đại, trực quan.

---

## 🛠️ Công nghệ sử dụng
- **Java 17+** (hoặc 11+)
- **Maven** để quản lý thư viện
- **Apache Tomcat 10+** (Servlet Container)
- **Jakarta Servlet API 6.0**
- **JSP (Jakarta Server Pages)**
- **Tailwind CSS** cho phần giao diện

---

## 📂 Cấu trúc dự án
survey-app/
├── src/
│ └── main/
│ ├── java/
│ │ └── com/example/survey/
│ │ └── SurveyServlet.java
│ └── webapp/
│ ├── index.html # Form khảo sát
│ ├── result.jsp # Trang hiển thị kết quả
│ └── WEB-INF/
│ └── web.xml # (nếu cần cấu hình thủ công)
├── pom.xml
└── README.md
