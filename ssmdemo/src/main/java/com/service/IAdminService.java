package com.service;

import com.model.AdminPojo;

import java.util.List;

public interface IAdminService {
    List<AdminPojo> findAllAdmin();
}
