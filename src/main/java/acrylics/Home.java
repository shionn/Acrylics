package acrylics;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Home {

	@GetMapping(path = "/")
	public ModelAndView home() {
		return new ModelAndView("home");
	}
}
