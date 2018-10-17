package tags;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class DateTag extends SimpleTagSupport{
	
	private String format;
	private Date date;

	
	public void doTag() throws JspException, IOException {
		if(format != null) {
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		JspWriter out = getJspContext().getOut();
		out.print(sdf.format(date));
		}
	}


	public Date getDate() {
		return date;
	}


	public void setDate(Date date) {
		this.date = date;
	}


	public String getFormat() {
		return format;
	}


	public void setFormat(String format) {
		this.format = format;
	}
	
}
