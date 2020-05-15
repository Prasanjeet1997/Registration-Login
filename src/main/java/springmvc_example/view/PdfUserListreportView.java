package springmvc_example.view;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.view.document.AbstractPdfView;

import com.lowagie.text.Document;
import com.lowagie.text.Table;
import com.lowagie.text.pdf.PdfWriter;

import jbr.springmvc.model.User;

public class PdfUserListreportView extends AbstractPdfView{

	@Override
	public void buildPdfDocument(Map<String, Object> model, Document document, PdfWriter writer,
			HttpServletRequest request, HttpServletResponse response) throws Exception {

		response.setHeader("Content-Disposition", "attachment: filename=\"user_list.pdf\"");
		
		
		@SuppressWarnings("unchecked")
		List<User> list = (List<User>) model.get("userList");
		
		Table table = new Table(4);
		table.addCell("USERNAME");
		table.addCell("FIRSTNAME");
		table.addCell("LASTNAME");
		table.addCell("EMAIL");
		table.addCell("ADDRESS");
		
		
		
		for(User user : list) {
			table.addCell(String.valueOf(user.getUsername()));
			table.addCell(user.getFirstname());
			table.addCell(user.getLastname());
			table.addCell(user.getEmail());
			table.addCell(user.getAddress());
			
			
		}
		
	}

}
