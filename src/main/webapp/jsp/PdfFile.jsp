<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="com.lowagie.text.*"%>
<%@page import="com.lowagie.text.pdf.*"%>
<%
Document document=new Document();
       PdfWriter.getInstance(document,new FileOutputStream("C:/Users/Jaijeet/Documents/New folder.pdf"));
       document.open();
       PdfPTable table=new PdfPTable(2);
       
       table.addCell("${firstname}");
       table.addCell("${user.email}");
       table.addCell("${user.address}");
       table.addCell("${user.Phone}");
       document.add(table);
       document.close();
       %>