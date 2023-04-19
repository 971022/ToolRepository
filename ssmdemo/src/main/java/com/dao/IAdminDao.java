package com.dao;

import com.model.AdminPojo;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface IAdminDao {
    List<AdminPojo> findAllAdmin();
}
