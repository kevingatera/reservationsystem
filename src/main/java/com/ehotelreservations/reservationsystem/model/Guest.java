package com.ehotelreservations.reservationsystem.model;

public class Guest {
	
	private String guest_ID;
	private String first_name;
	private String last_name;
	private String email;
	private String branch_ID;
	private String guest_phone;
	
	public Guest()
	{
		
	}
	
	public Guest(String guest_ID, String first_name, String last_name, String email, String branch_ID, String guest_phone)
	{
		this.guest_ID=guest_ID;
		this.first_name=first_name;
		this.last_name=last_name;
		this.email=email;
		this.branch_ID=branch_ID;
		this.guest_phone=guest_phone;
	}
	
	public String getGuest_ID()
	{
		return guest_ID;
	}
	
	public void setGuest_ID(String guest_ID)
	{
		this.guest_ID=guest_ID;
	}
	
	public String getFirst_name()
	{
		return first_name;
	}
	
	public void setFirst_name(String first_name)
	{
		this.first_name=first_name;
	}
	
	public String getLast_name()
	{
		return last_name;
	}
	
	public void setLast_name(String last_name)
	{
		this.last_name=last_name;
	}
	
	public String getEmail()
	{
		return email;
	}
	
	public void setEmail(String email)
	{
		this.email=email;
	}
	
	public String getBranch_ID()
	{
		return branch_ID;
	}
	
	public void setBranch_ID(String branch_ID)
	{
		this.branch_ID=branch_ID;
	}
	
	public String getGuest_phone()
	{
		return guest_phone;
	}
	
	public void setGuest_phone(String guest_phone)
	{
		this.guest_phone=guest_phone;
	}
}
