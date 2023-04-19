package com.controller;

import com.model.AdminPojo;
import com.service.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/Admin")
public class AdminController {
    @Autowired
    private IAdminService adminService;

    @RequestMapping("/FindAll")
    @ResponseBody
    public HashMap<Object,Object> findAll( ){
        HashMap<Object, Object> map = new HashMap<>();
        List<AdminPojo> adminList = adminService.findAllAdmin();
        map.put("adminList", adminList);
        return map;
    }

}
