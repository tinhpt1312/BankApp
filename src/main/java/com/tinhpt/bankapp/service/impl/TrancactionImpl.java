package com.tinhpt.bankapp.service.impl;

import com.tinhpt.bankapp.dto.TransactionDto;
import com.tinhpt.bankapp.entity.Transaction;
import com.tinhpt.bankapp.repository.TransactionRepository;
import com.tinhpt.bankapp.service.TransactionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class TrancactionImpl implements TransactionService {


    @Autowired
    TransactionRepository transactionRepository;

    @Override
    public void saveTransaction(TransactionDto transactionDto) {
        Transaction transaction = Transaction.builder()
                .transactionType(transactionDto.getTransactionType())
                .accountNumber(transactionDto.getAccountNumber())
                .amount(transactionDto.getAmount())
                .status("SUCCESS")
                .build();
        transactionRepository.save(transaction);
        System.out.println("Transaction saved successfully");
    }
}
