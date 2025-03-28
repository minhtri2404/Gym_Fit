package vn.rawuy.laptopshop.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ContactController {
    @GetMapping("/contact")
    public String getContactPage() {
        return "client/contact/contact_us";
    }

    @GetMapping("/about")
    public String getAboutPage() {
        return "client/contact/about";
    }

}
