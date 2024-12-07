package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Dietician;

@Repository
public interface DieticianRepository extends JpaRepository<Dietician, Integer> 
{
    @Query("select n from Nutritionist n where n.email=?1")
    public Dietician findByEmail(String email);

    public List<Dietician> findByexpertise(String expertise);

    @Query("select n.blogs from Nutritionist n where n.id=?1")
    public List<String> findBlogsByNutritionistId(int id);

    @Query("select n.testimonials from Nutritionist n where n.id=?1")
    public List<String> findTestimonialsByNutritionistId(int id);
}
