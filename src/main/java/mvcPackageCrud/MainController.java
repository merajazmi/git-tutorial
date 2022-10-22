package mvcPackageCrud;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import mvcCrudDao.ProductDao;
import mvcCrudProduct.model.Product;

@Controller
public class MainController {
	
	
	  @Autowired 
	  private ProductDao productDao;
	 
	
	@RequestMapping("/")
	public String showHandler() {
		
		
		return "index";
	}
	
	@RequestMapping("/addproduct")
	public String addProduct(Model model) {
		
		model.addAttribute("title","add product");
		return "add_product_form";
	}
	
	//show add product form
	
	@RequestMapping(value = "/handle-product",method = RequestMethod.POST)
	public RedirectView handleproduct(@ModelAttribute Product product,HttpServletRequest request){
		System.out.println(product);
		

   productDao.createProduct(product);

		
		RedirectView redirectView = new RedirectView();
		
		redirectView.setUrl(request.getContextPath()+"/");
		
		return redirectView;
	}

}
