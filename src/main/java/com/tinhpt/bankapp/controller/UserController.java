package com.tinhpt.bankapp.controller;


import com.tinhpt.bankapp.dto.*;
import com.tinhpt.bankapp.entity.User;
import com.tinhpt.bankapp.repository.UserRepository;
import com.tinhpt.bankapp.service.UserService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/user")
@Tag(name = "User Account Managenment APIs")
public class UserController {

    @Autowired
    UserService userService;

    @Autowired
    UserRepository userRepository;

    @Operation(
            summary = "Create new user account",
            description = "Creating a new user and assigning an account ID"
    )
    @ApiResponse(
            responseCode = "201",
            description = "Http Status 201 CREATED"
    )

    @PostMapping
    public BankResponse createAccount(@RequestBody UserRequest userRequest) {
        return userService.createAccount(userRequest);
    }

    @Operation(
            summary = "Balance Enquiry",
            description = "Given an account number, check how much the user has"
    )
    @ApiResponse(
            responseCode = "200",
            description = "Http Status 200 SUCCESS"
    )


    @GetMapping("balanceEnquiry")
    public BankResponse balanceEnquiry(@RequestBody EnquiryRequest request){
        return userService.balanceEnquiry(request);
    }

    @GetMapping("nameEnquiry")
    public String nameEnquiry(@RequestBody EnquiryRequest request){
        return userService.nameEnquiry(request);
    }

    @PostMapping("credit")
    public BankResponse creditAccount(@RequestBody CreditDebitRequest creditDebitRequest){
        return userService.creditAccount(creditDebitRequest);
    }

    @PostMapping("debit")
    public BankResponse debitAccount(@RequestBody CreditDebitRequest debitRequest){
        return userService.debitAccount(debitRequest);
    }

    @PostMapping("transfer")
    public BankResponse transfer(@RequestBody TransferRequest transferRequest){
        return userService.transfer(transferRequest);
    }

    @GetMapping("all")
    public List<User> getAll(){
        return userService.findAll();
    }
}
