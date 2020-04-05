package com.ehotelreservations.reservationsystem.model;

public class payment {
    private String property_ID;
    private String guest_ID;
    private String host_ID;
    private double total_fee;
    private String payment_type;
    private String payment_status;

    public payment(String property_ID, String guest_ID, String host_ID, double total_fee, String payment_type, String payment_status)
    {
        this.property_ID=property_ID;
        this.guest_ID=guest_ID;
        this.host_ID=host_ID;
        this.total_fee=total_fee;
        this.payment_type=payment_type;
        this.payment_status=payment_status;
    }

    public String getProperty_ID()
    {
        return this.property_ID;
    }

    public void getProperty_ID(String property_ID)
    {
        this.property_ID=property_ID;
    }

    public String getGuest_ID()
    {
        return this.guest_ID;
    }

    public void getGuest_ID(String guest_ID)
    {
        this.guest_ID=guest_ID;
    }

    public String getHost_ID()
    {
        return this.host_ID;
    }

    public void getHost_ID(String host_ID)
    {
        this.host_ID=host_ID;
    }

    public double getTotal_fee()
    {
        return this.total_fee;
    }

    public void getTotal_fee(double total_fee)
    {
        this.total_fee=total_fee;
    }
    
    public String getPayment_type()
    {
        return this.payment_type;
    }

    public void getPayment_type(String payment_type)
    {
        this.payment_type=payment_type;
    }
    
    public String getPayment_status()
    {
        return this.payment_status;
    }

    public void getPayment_status(String payment_status)
    {
        this.payment_status=payment_status;
    }
}