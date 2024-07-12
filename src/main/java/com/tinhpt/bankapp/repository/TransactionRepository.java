package com.tinhpt.bankapp.repository;

import com.tinhpt.bankapp.entity.Transaction;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TransactionRepository extends JpaRepository<Transaction, String> {
}
