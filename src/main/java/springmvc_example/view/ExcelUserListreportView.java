package springmvc_example.view;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.web.servlet.view.document.AbstractXlsView;

import jbr.springmvc.model.User;



public class ExcelUserListreportView extends AbstractXlsView	 {

	@Override
	public void buildExcelDocument(Map<String, Object> model, Workbook workbook, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		response.setHeader("Content-Disposition", "attachment: filename=\"user_list.xls\"");
		
		@SuppressWarnings("unchecked")
		List<User> list = (List<User>) model.get("userList");
		
		Sheet sheet = workbook.createSheet("User List");
		
		
	   Row header = sheet.createRow(0);
	   header.createCell(0).setCellValue("USERNAME");
	   header.createCell(1).setCellValue("FIRSTNAME");
	   header.createCell(2).setCellValue("LASTNAME");
	   header.createCell(3).setCellValue("EMAIL");
	   header.createCell(4).setCellValue("ADDRESS");
	   header.createCell(5).setCellValue("PHONE");
	   
	   
	   int rowNum = 1;
	   
	   for(User user : list) {
		   Row row = sheet.createRow(rowNum++);
		   row.createCell(0).setCellValue(user.getUsername());
		   row.createCell(1).setCellValue(user.getFirstname());
		   row.createCell(2).setCellValue(user.getLastname());
		   row.createCell(3).setCellValue(user.getEmail());
		   row.createCell(4).setCellValue(user.getAddress());
		   row.createCell(5).setCellValue(user.getPhone());
		   
	   }
	   
		 
		
	}

}
