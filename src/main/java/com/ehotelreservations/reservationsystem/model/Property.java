package com.ehotelreservations.reservationsystem.model;

import lombok.Data;

@Data
public class Property {
    private int property_ID;
    private String property_type;
    private String room_type;
    private int bedrooms;
    private int bathrooms;
    private int max_guests;
    private String property_description;
    private String available;
    private double review_avg;
    private int host_ID;
    private int branch_ID;
    
    public Property(int property_ID,String property_type, String room_type,int bedrooms, int bathrooms,int max_guests,String property_description,String available, double review_avg,int host_ID,int branch_ID)
    {
        this.property_ID=property_ID;
        this.property_type=property_type;
        this.room_type=room_type;
        this.bedrooms=bedrooms;
        this.bathrooms=bathrooms;
        this.max_guests=max_guests;
        this.property_description=property_description;
        this.available=available;
        this.review_avg=review_avg;
        this.host_ID=host_ID;
        this.branch_ID=branch_ID;
    }

    public Property() {
	}

	public int getProperty_ID()
    {
        return property_ID;
    }

    public void setProperty_ID(int property_ID)
    {
        this.property_ID=property_ID;
    }

    public String getProperty_type()
    {
        return property_type;
    }

    public void setProperty_type(String property_type)
    {
        this.property_type=property_type;
    }

    public String getRoom_type()
    {
        return room_type;
    }

    public void setRoom_type(String room_type)
    {
        this.room_type=room_type;
    }

    public int getBedrooms()
    {
        return bedrooms;
    }

    public void setBedrooms(int bedrooms)
    {
        this.bedrooms=bedrooms;
    }

    public int getBathrooms()
    {
        return bathrooms;
    }

    public void setBathrooms(int bathrooms)
    {
        this.bathrooms=bathrooms;
    }
    
    public int getMax_guests()
    {
        return max_guests;
    }

    public void setMax_guests(int max_guests)
    {
        this.max_guests=max_guests;
    }

    public String getProperty_description()
    {
        return property_description;
    }

    public void setProperty_description(String property_description)
    {
        this.property_description=property_description;
    }

    public String getAvailable()
    {
        return available;
    }

    public void setAvailable(String available)
    {
        this.available=available;
    }

    public double getReview_avg()
    {
        return review_avg;
    }

    public void setReview_avg(double review_avg)
    {
        this.review_avg=review_avg;
    }

    public int getHost_ID()
    {
        return host_ID;
    }

    public void setHost_ID(int host_ID)
    {
        this.host_ID=host_ID;
    }

    public int getBranch_ID()
    {
        return branch_ID;
    }

    public void setBranch_ID(int branch_ID)
    {
        this.branch_ID=branch_ID;
    }
}