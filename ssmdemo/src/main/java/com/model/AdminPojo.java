package com.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AdminPojo {
    private String id;
    private String name;
    private String sex;
    private String userName;
    private String userPassWord;
}
