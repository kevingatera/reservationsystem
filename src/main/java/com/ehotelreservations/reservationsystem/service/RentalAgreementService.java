
package com.ehotelreservations.reservationsystem.service;

import org.springframework.stereotype.Service;

import java.util.List;

import com.ehotelreservations.reservationsystem.model.RentalAgreement;
import com.ehotelreservations.reservationsystem.repository.RentalAgreementRepository;

@Service
public class RentalAgreementService {
  private RentalAgreementRepository rentalAgreementRepository;

  public RentalAgreementService(RentalAgreementRepository rentalAgreementRepository) {
    this.rentalAgreementRepository = rentalAgreementRepository;
  }

  public List<RentalAgreement> findAll() {
    return rentalAgreementRepository.findAll();
  }

  public boolean rentalAgreementExists(int id) {
    return rentalAgreementRepository.existsRentalAgreementById(id);
  }

  public RentalAgreement findById(int id) {
    return rentalAgreementRepository.findById(id);
  }

  public RentalAgreement findByPropertyId(int id) {
    return rentalAgreementRepository.findByPropertyId(id);
  }

  public RentalAgreement findByGuestId(int id) {
    return rentalAgreementRepository.findByGuestId(id);
  }

  public void save(RentalAgreement rentalAgreement) {
    rentalAgreementRepository.save(rentalAgreement);
  }

  public RentalAgreement findByBookingReference(int id) {
    return rentalAgreementRepository.findByBookingReference(id);
  }

  public RentalAgreement getCheapest() {
    return rentalAgreementRepository.getCheapest();
  }
}