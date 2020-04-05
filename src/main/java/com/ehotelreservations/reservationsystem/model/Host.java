package com.ehotelreservations.reservationsystem.model;

public class Host {

	private String host_ID;
	private String first_name;
	private String last_name;
	private String email;
	private String branch_ID;
	private String host_phone;
	

	public Host(String host_ID, String first_name, String last_name, String email, String branch_ID, String guest_phone)
	{
		this.host_ID=host_ID;
		this.first_name=first_name;
		this.last_name=last_name;
		this.email=email;
		this.branch_ID=branch_ID;
		this.host_phone=guest_phone;
	}
	
	public String getHost_ID()
	{
		return host_ID;
	}
	
	public void setHost_ID(String host_ID)
	{
		this.host_ID=host_ID;
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
	
	public String getHost_phone()
	{
		return host_phone;
	}
	
	public void setHost_phone(String host_phone)
	{
		this.host_phone=host_phone;
	}
}
