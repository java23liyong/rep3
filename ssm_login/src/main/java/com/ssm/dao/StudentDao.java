package com.ssm.dao;

import com.ssm.domain.Student;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface StudentDao {

    //查询用户登录账号
    @Select("select * from student where stuAccount=#{stuAccount}")
    Student findStudent(@Param("stuAccount") String stuAccount);

}
