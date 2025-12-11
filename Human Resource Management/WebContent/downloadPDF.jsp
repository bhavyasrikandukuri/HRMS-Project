<%@ page import="java.sql.*, com.itextpdf.kernel.pdf.*, com.itextpdf.layout.*, com.itextpdf.layout.element.*, com.itextpdf.layout.property.*, com.itextpdf.kernel.colors.*, com.itextpdf.layout.borders.*" %>
<%@ page import="java.io.*" %>
<%
    response.setContentType("application/pdf");
    response.setHeader("Content-Disposition", "attachment; filename=payroll.pdf");

    try (OutputStream outStream = response.getOutputStream()) {
        // Initialize PDF document
        PdfWriter writer = new PdfWriter(outStream);
        PdfDocument pdfDoc = new PdfDocument(writer);
        Document document = new Document(pdfDoc);

        // Add a title to the PDF
        document.add(new Paragraph("Payroll Records")
            .setBold()
            .setFontSize(18)
            .setTextAlignment(com.itextpdf.layout.property.TextAlignment.CENTER));

        // Define table structure
        float[] columnWidths = {50,80, 100, 100, 80, 80, 80, 80}; // Adjust column widths as needed
        Table table = new Table(columnWidths);
        table.setWidth(com.itextpdf.layout.property.UnitValue.createPercentValue(100));

        // Add header cells
        String[] headers = {"ID","Payroll Month", "Employee Name", "Position", "Basic Salary", "Allowances", "Deductions", "Net Salary"};
        for (String header : headers) {
            table.addHeaderCell(new Cell()
                .add(new Paragraph(header).setBold())
                .setBackgroundColor(ColorConstants.LIGHT_GRAY)
                .setTextAlignment(com.itextpdf.layout.property.TextAlignment.CENTER));
        }

        int id =Integer.parseInt(request.getParameter("id"));
        // Fetch data from database
        Class.forName("com.mysql.jdbc.Driver");
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/chrms", "root", "root")) {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM payroll_info where id='"+id+"'");

            // Add rows to table
            while (rs.next()) {
                table.addCell(new Cell().add(new Paragraph(String.valueOf(rs.getInt("id")))));
                table.addCell(new Cell().add(new Paragraph(String.valueOf(rs.getString("payrollmonth")))));
                table.addCell(new Cell().add(new Paragraph(rs.getString("employee_name"))));
                table.addCell(new Cell().add(new Paragraph(rs.getString("position"))));
                table.addCell(new Cell().add(new Paragraph(String.format("%.2f", rs.getDouble("basic_salary")))));
                table.addCell(new Cell().add(new Paragraph(String.format("%.2f", rs.getDouble("allowances")))));
                table.addCell(new Cell().add(new Paragraph(String.format("%.2f", rs.getDouble("deductions")))));
                table.addCell(new Cell().add(new Paragraph(String.format("%.2f", rs.getDouble("net_salary")))));
            }
        }

        // Add table to document
        document.add(table);

        // Close the document
        document.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
