package com.ehotelreservations.reservationsystem.model;

public class rental_agreement {
    private String property_ID;
    private String guest_ID;
    private String booking_reference;
    private String agreement_start;
    private String agreement_end;
    private String agreement_signing;


    public rental_agreement(String property_ID, String guest_ID, String booking_reference, String agreement_start, String agreement_end, String agreement_signing)
    {
        this.property_ID=property_ID;
        this.guest_ID=guest_ID;
        this.booking_reference=booking_reference;
        this.agreement_start=agreement_start;
        this.agreement_end=agreement_end;
        this.agreement_signing=agreement_signing;
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

    public String getAgreement_start()
    {
        return this.agreement_start;
    }

    public void setAgreement_start(String agreement_start)
    {
        this.agreement_start=agreement_start;
    }

    public String getAgreement_end()
    {
        return this.agreement_end;
    }

    public void setAgreement_end(String agreement_end)
    {
        this.agreement_end=agreement_end;
    }

    public String getAgreement_signing()
    {
        return this.agreement_signing;
    }

    public void setAgreement_signing(String agreement_signing)
    {
        this.agreement_signing=agreement_signing;
    }
}