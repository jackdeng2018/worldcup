package com.sdsc5003.worldcup.web.api;

import com.sdsc5003.worldcup.account.Account;
import com.sdsc5003.worldcup.account.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@RequestMapping("/api/account")
public class AccountController {

    @Autowired
    private AccountService accountService;

    @PostMapping("/register")
    public String register(@RequestBody Account account) {
        if (accountService.findAccountByEmail(account.getEmail()) != null) {
            return "This emali has been registered";
        }
        accountService.register(account);
        return "success";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public String login(@RequestParam(name = "email") String email,
                         @RequestParam(name = "password") String password,
                         HttpServletRequest request) {
        if (request.getSession() == null) {
            return "failed";
        }
        Object login = request.getSession().getAttribute("isLogin");
        if ((login != null && (boolean) login)) {
            return "repeat";
        }
        Account account = accountService.findAccountByEmail(email);
        if (account != null && password.equals(account.getPassword())) {
            request.getSession().setAttribute("isLogin",true);
            return "success";
        }
        return "login failed";
    }

    @RequestMapping(value = "/identity", produces = {MediaType.APPLICATION_JSON_VALUE}, method = RequestMethod.GET)
    @ResponseBody
    public Account connect() {
        Account account = null;
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null && authentication.isAuthenticated()) {
            account = accountService.findAccountByEmail(authentication.getName());
            if (account != null) {
                for (GrantedAuthority authority : authentication.getAuthorities()) {
                    account.getRoles().add(authority.toString());
                }
            }
        }
        return account;
    }


    @RequestMapping(value = "/logout", method = RequestMethod.POST)
    @ResponseBody
    public String logout(HttpServletRequest request) {
        if (request.getSession() != null && request.getSession().getAttribute("isLogin") != null) {
            request.getSession().removeAttribute("isLogin");
            return "success";
        }
        return "failed";
    }
    // ~ ===============================  ADMIN ONLY ==========================

//    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @RequestMapping(value = "/", method = RequestMethod.GET)
    @ResponseBody
    public List<Account> getAllAccounts() {
        return accountService.getAllAccounts();
    }

//    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @ResponseBody
    @RequestMapping(value = "/{id}", method = RequestMethod.POST)
    public Account updateAccount(@PathVariable Long id, @RequestBody Account account) {
        //Long id = EncryptionUtil.decodeId(idd);
        return accountService.updateAccountStatus(id, account.getStatus());
    }
}
