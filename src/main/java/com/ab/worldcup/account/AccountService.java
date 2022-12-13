package com.ab.worldcup.account;

import com.ab.worldcup.config.ApplicationConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AccountService implements UserDetailsService {

    private final AccountRepository accountRepository;

    private final ApplicationConfig applicationConfig;

    @Autowired
    public AccountService(ApplicationConfig applicationConfig, AccountRepository accountRepository) {
        this.accountRepository = accountRepository;
        this.applicationConfig = applicationConfig;
    }

    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        return null;
    }

    public Account findAccountByEmail(String email) {
        return accountRepository.findByEmail(email);
    }

    public Account updateAccountStatus(Long id, AccountStatus status) {
        Account account = accountRepository.findOne(id);
        account.setStatus(status);
        return accountRepository.save(account);
    }

    public List<Account> getAllAccounts() {
        return accountRepository.findAll();
    }

    public Account register(Account account) {
        return accountRepository.save(account);
    }
}
