package com.bank.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import com.bank.entity.Transactions;

/**
 * @author vinod.nagulkar
 *
 */
public interface TransactionsRepo extends JpaRepository<Transactions, Integer>
{
	 
}
