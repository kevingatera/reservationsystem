package com.ehotelreservations.reservationsystem.model;

public class Guest_Address {
	private String guest_ID;
	private int street_address;
	private String street_name;
	private String city;
	private String province;
	private String country;
	
	public Guest_Address(String guest_ID,int street_address,String street_name,String city,String province,String country)
	{
		this.guest_ID=guest_ID;
		this.street_address=street_address;
		this.street_name=street_name;
		this.city=city;
		this.province=province;
		this.country=country;
	}
	
	public void setGuest_ID(String guest_ID)
	{
		this.guest_ID=guest_ID;
	}
	
	public String getGuest_ID()
	{
		return guest_ID;
	}
	
	public void setStreet_address(int street_address)
	{
		this.street_address=street_address;
	}
	
	public int getStreet_address()
	{
		return street_address;
	}
	
	public void setStreet_name(String street_name)
	{
		this.street_name=street_name;
	}
	
	public String getStreet_name()
	{
		return street_name;
	}
	
	public void setCity(String city)
	{
		this.city=city;
	}
	
	public String getCity()
	{
		return city;
	}
	
	public void setProvince(String province)
	{
		this.province=province;
	}
	
	public String getProvince()
	{
		return province;
	}
	
	public void setCountry(String country)
	{
		this.country=country;
	}
	
	public String getCountry()
	{
		return country;
	}
}
