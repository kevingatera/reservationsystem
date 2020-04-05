package com.ehotelreservations.reservationsystem.model;

public class pricing {
    private String property_ID;
    private String host_ID;
    private double nightly_rate;
    private double cleaning_fee;

    public pricing(String property_ID,String host_ID,double nightly_rate, double cleaning_fee)
    {
        this.property_ID=property_ID;
        this.host_ID=host_ID;
        this.nightly_rate=nightly_rate;
        this.cleaning_fee=cleaning_fee;
    }

    public String getProperty_ID()
    {
        return this.property_ID;
    }

    public void setProperty_ID(String property_ID)
    {
        this.property_ID=property_ID;
    }

    public String getHost_ID()
    {
        return this.host_ID;
    }

    public void setHost_ID(String host_ID)
    {
        this.host_ID=host_ID;
    }

    public double getNightly_rate()
    {
        return this.nightly_rate;
    }

    public void setNightly_rate(double nightly_rate)
    {
        this.nightly_rate=nightly_rate;
    }

    public double getCleaning_fee()
    {
        return this.cleaning_fee;
    }

    public void setCleaning_fee(double cleaning_fee)
    {
        this.cleaning_fee=cleaning_fee;
    }


}