package com.ssm.service;

import com.ssm.domain.Student;
import org.apache.ibatis.annotations.Param;

public interface StudentService {

    Student findStudent(@Param("stuAccount") String stuAccount);

}
