package com.smd.servlet;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.smd.util.DBConnection;

@WebServlet("/PDFcusReg")
public class PDFcusReg extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public PDFcusReg() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");

		PrintWriter pw = response.getWriter();

		// getting the month
		String date = request.getParameter("month");

		String[] x = date.split("-");
		String month = null;

		// selecting the month in words
		switch (x[1]) {
		case "01":
			month = "January";
			break;
		case "02":
			month = "February";
			break;
		case "03":
			month = "March";
			break;
		case "04":
			month = "April";
			break;
		case "05":
			month = "May";
			break;
		case "06":
			month = "June";
			break;
		case "07":
			month = "July";
			break;
		case "08":
			month = "August";
			break;
		case "09":
			month = "September";
			break;
		case "10":
			month = "October";
			break;
		case "11":
			month = "November";
			break;
		case "12":
			month = "December";
			break;
		}

		pw.print("<script>alert('PDF Generated...')</script>");

		try {
			Document document = new Document();
			PdfWriter.getInstance(document, new FileOutputStream("C://Users//Nipun//Downloads//NewCustomers.pdf"));
			document.open();

			Paragraph p = new Paragraph();
			p.add("New Customer " + month + " " + x[0]);
			p.setAlignment(Element.ALIGN_CENTER);

			document.add(p);
			document.add(Chunk.NEWLINE);

			PdfPTable table = new PdfPTable(new float[] { 25, 30, 50, 40, 15 });

			table.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);

			table.addCell("Hardware");
			table.addCell("Ph. No.");
			table.addCell("Email");
			table.addCell("Address");
			table.addCell("Reg. Date");

			table.setHeaderRows(1);
			PdfPCell[] cells = table.getRow(0).getCells();

			for (int j = 0; j < cells.length; j++) {
				cells[j].setBackgroundColor(BaseColor.BLUE);
			}

			DBConnection con = new DBConnection();

			String q = "select Hardware_Name, Phone, Email, Address, reg_date from customer where EXTRACT(MONTH FROM reg_date) = " + x[1] + " and EXTRACT(YEAR FROM reg_date) = " + x[0];
			Statement st = con.getConnection().createStatement();
			ResultSet rs = st.executeQuery(q);

			while (rs.next()) {
				table.addCell(rs.getString(1));
				table.addCell(rs.getString(2));
				table.addCell(rs.getString(3));
				table.addCell(rs.getString(4));
				table.addCell(rs.getString(5));
			}

			document.add(table);
			document.close();

			// print a success message in console
			System.out.println("Done");

		} catch (Exception e) {
			e.printStackTrace();
		}

		// display an error message
		pw.println("<script type=\"text/javascript\">");
		pw.println("location='admin/CustomerManagement/ReportCusReg.jsp'"); // redirect to the customerSales page
		pw.println("</script>");
	}

}
