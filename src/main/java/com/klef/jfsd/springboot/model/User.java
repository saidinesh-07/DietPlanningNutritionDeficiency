package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="user_table")
public class User 
{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="user_id")
    private int id;
    
    @ManyToOne
    @JoinColumn(name = "nutritionist_id")
    private Nutritionist nutritionist;
    
    @Column(name="user_name", nullable=false, length=50)
    private String name;
    
    @Column(name="user_gender", nullable=false, length=20)
    private String gender;
    
    @Column(name="user_dob", nullable=false, length=20)
    private String dateOfBirth;
    
    @Column(name="user_height", nullable=false)
    private double height; // in cm
    
    @Column(name="user_weight", nullable=false)
    private double weight; // in kg
    
    @Column(name="user_activity_level", nullable=false, length=50)
    private String activityLevel; // e.g., Sedentary, Moderate, Active
    
    @Column(name="user_dietary_preferences", length=100)
    private String dietaryPreferences; // e.g., Vegetarian, Vegan, Gluten-free
    
    @Column(name="user_allergies", length=100)
    private String allergies; // e.g., Peanuts, Shellfish
    
    @Column(name="user_health_conditions", length=200)
    private String healthConditions; // e.g., Diabetes, Hypertension
    
    @Column(name="user_email", nullable=false, unique=true, length=50)
    private String email;
    
    @Column(name="user_password", nullable=false, length=50)
    private String password;
    
    @Column(name="user_contact", nullable=false, unique=true, length=20)
    private String contact;
    
    @Column(name="user_location", nullable=false, length=50)
    private String location;
    
    @Column(name="user_target_weight", nullable=true)
    private Double targetWeight; // Target weight in kg

    @Column(name="user_goal", nullable=true, length=50)
    private String goal; // e.g., Maintain weight, Lose weight, Gain muscle
    
    @Column(name="user_status", nullable=false, length=50)
    private String status; // e.g., Active, Inactive
    

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Nutritionist getNutritionist() {
		return nutritionist;
	}

	public void setNutritionist(Nutritionist nutritionist) {
		this.nutritionist = nutritionist;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public double getHeight() {
		return height;
	}

	public void setHeight(double height) {
		this.height = height;
	}

	public double getWeight() {
		return weight;
	}

	public void setWeight(double weight) {
		this.weight = weight;
	}

	public String getActivityLevel() {
		return activityLevel;
	}

	public void setActivityLevel(String activityLevel) {
		this.activityLevel = activityLevel;
	}

	public String getDietaryPreferences() {
		return dietaryPreferences;
	}

	public void setDietaryPreferences(String dietaryPreferences) {
		this.dietaryPreferences = dietaryPreferences;
	}

	public String getAllergies() {
		return allergies;
	}

	public void setAllergies(String allergies) {
		this.allergies = allergies;
	}

	public String getHealthConditions() {
		return healthConditions;
	}

	public void setHealthConditions(String healthConditions) {
		this.healthConditions = healthConditions;
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

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public Double getTargetWeight() {
		return targetWeight;
	}

	public void setTargetWeight(Double targetWeight) {
		this.targetWeight = targetWeight;
	}

	public String getGoal() {
		return goal;
	}

	public void setGoal(String goal) {
		this.goal = goal;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
