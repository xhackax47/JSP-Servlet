package tags;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class TextTag extends SimpleTagSupport {

	private String text;

	public void doTag() throws JspException, IOException {
		if (text != null) {
			JspWriter out = getJspContext().getOut();
			out.print(text.toString().toUpperCase());
		}
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

}