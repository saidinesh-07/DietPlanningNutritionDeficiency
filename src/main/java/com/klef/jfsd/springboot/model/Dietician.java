package com.klef.jfsd.springboot.model;

import java.util.List;

import org.antlr.v4.runtime.misc.NotNull;

import jakarta.persistence.Column;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="dietician_table")
public class Dietician 
{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) 
    @Column(name="dietician_id")
    private int id;

    @Column(name="dietician_name", nullable=false, length=50)
    private String name;

    @Column(name="dietician_email", nullable=false, unique=true, length=50)
    private String email;

    @Column(name="dietician_password", nullable=false, length=50)
    private String password;

    @Column(name="dietician_contact", nullable=false, unique=true, length=20)
    private String contact;

    @Column(name="expertise", length=100)
    private String expertise; // e.g., "Child Nutrition, Sports Nutrition"

    @Column(name="bio", length=255)
    private String bio; // Short biography or description of qualifications

    @Column(name="dietary_recommendations", columnDefinition="TEXT")
    private String dietaryRecommendations; // General dietary guidance

    

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getExpertise() {
		return expertise;
	}

	public void setExpertise(String expertise) {
		this.expertise = expertise;
	}

	public String getBio() {
		return bio;
	}

	public void setBio(String bio) {
		this.bio = bio;
	}

	public String getDietaryRecommendations() {
		return dietaryRecommendations;
	}

	public void setDietaryRecommendations(String dietaryRecommendations) {
		this.dietaryRecommendations = dietaryRecommendations;
	}



    // Getters and setters for all fields

    
}
