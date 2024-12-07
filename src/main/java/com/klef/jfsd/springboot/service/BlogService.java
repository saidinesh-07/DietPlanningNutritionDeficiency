package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Blog;
import com.klef.jfsd.springboot.repository.BlogRepository;

@Service
public interface BlogService {

    public String saveBlog(Blog blog);
}
