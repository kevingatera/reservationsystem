package com.ehotelreservations.reservationsystem.model;

public class Review {
    private String property_ID;
    private String guest_ID;
    private String booking_reference;
    private int overall;
    private String comments;

    public Review(String property_ID,String guest_ID,String booking_reference,int overall,String comments)
    {
        this.property_ID=property_ID;
        this.guest_ID=guest_ID;
        this.booking_reference=booking_reference;
        this.overall=overall;
        this.comments=comments;
    }

    public String getProperty_ID()
    {
        return this.property_ID;
    }

    public void setProperty_ID(String property_ID)
    {
        this.property_ID=property_ID;
    }

    public String getGuest_ID()
    {
        return this.guest_ID;
    }

    public void setGuest_ID(String guest_ID)
    {
        this.guest_ID=guest_ID;
    }

    public String getBooking_reference()
    {
        return this.booking_reference;
    }

    public void setBooking_reference(String booking_reference)
    {
        this.booking_reference=booking_reference;
    }

    public int getOverall()
    {
        return this.overall;
    }

    public void setOverall(int overall)
    {
        this.overall=overall;
    }

    public String getComments()
    {
        return this.comments;
    }

    public void setComments(String comments)
    {
        this.comments=comments;
    }
}