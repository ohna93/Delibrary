package com.example.demo.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class BorrowVO {
	private int bor_no;
	private Date bor_date;
	private Date return_date;
	private String return_ok;
	private int cust_no;
	private int b_no;
}