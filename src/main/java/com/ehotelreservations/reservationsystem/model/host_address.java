package com.ehotelreservations.reservationsystem.model;

public class host_address {
	private String host_ID;
	private int street_address;
	private String street_name;
	private String city;
	private String province;
	private String country;
	
	public host_address(String host_ID,int street_address,String street_name,String city,String province,String country)
	{
		this.host_ID=host_ID;
		this.street_address=street_address;
		this.street_name=street_name;
		this.city=city;
		this.province=province;
		this.country=country;
	}
	
	public void setGuest_ID(String host_ID)
	{
		this.host_ID=host_ID;
	}
	
	public String getHost_ID()
	{
		return host_ID;
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
