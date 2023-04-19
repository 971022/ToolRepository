package com.service.Impl;

import com.dao.IAdminDao;
import com.model.AdminPojo;
import com.service.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IAdminServiceImpl implements IAdminService {
    @Autowired
    private IAdminDao adminDao;

    @Override
    public List<AdminPojo> findAllAdmin() {
        return adminDao.findAllAdmin();
    }
}
