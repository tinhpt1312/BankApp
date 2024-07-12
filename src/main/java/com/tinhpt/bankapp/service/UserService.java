package com.tinhpt.bankapp.service;

import com.tinhpt.bankapp.dto.*;
import com.tinhpt.bankapp.entity.User;

import java.util.List;

public interface UserService {

    BankResponse createAccount(UserRequest userRequest);
    BankResponse balanceEnquiry(EnquiryRequest enquiryRequest);
    String nameEnquiry(EnquiryRequest enquiryRequest);
    BankResponse creditAccount(CreditDebitRequest creditDebitRequest);
    BankResponse debitAccount(CreditDebitRequest debitDebitRequest);
    BankResponse transfer(TransferRequest transferRequest);
    List<User> findAll();
}
