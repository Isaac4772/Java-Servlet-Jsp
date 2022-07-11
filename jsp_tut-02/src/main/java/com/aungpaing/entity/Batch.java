package com.aungpaing.entity;

import java.time.LocalDate;

public class Batch {
	private String name;
	private LocalDate startDate;

	public Batch() {

	}

	public Batch(String name, LocalDate startDate) {
		super();
		this.name = name;
		this.startDate = startDate;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public LocalDate getStartDate() {
		return startDate;
	}

	public void setStartDate(LocalDate startDate) {
		this.startDate = startDate;
	}

}
