package com.ab.worldcup.web.api;

import com.ab.worldcup.account.Account;
import com.ab.worldcup.account.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.util.Pair;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

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
    public Account login(@RequestParam(name = "email") String email,
                                @RequestParam(name = "password") String password) {

//        Pair<String,User> token = userService.authenticateUser(username, password);
        HttpHeaders responseHeaders = new HttpHeaders();
//        responseHeaders.set("token", token.getFirst());
//        User user = token.getSecond();

//        this.httpServletRequest.getSession().setAttribute("IS_LOGIN",true);
//        this.httpServletRequest.getSession().setAttribute("LOGIN_USER",userModel);
        return accountService.findAccountByEmail(email);
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
