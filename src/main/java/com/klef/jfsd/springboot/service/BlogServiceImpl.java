package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Blog;
import com.klef.jfsd.springboot.repository.BlogRepository;

@Service
public class BlogServiceImpl implements BlogService {
    
	@Autowired
	private BlogRepository blogRepository;
	
	public String saveBlog(Blog blog) {
        blogRepository.save(blog);
        return "Blog saved successfully";
    }
}
