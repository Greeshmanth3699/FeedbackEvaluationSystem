package com.example.demo.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.example.demo.model.User;
import java.util.List;

@Repository
public interface Userrepo extends JpaRepository<User, Long> {
    List<User> findByRole(String role);
        User findByEmail(String email);
    List<User> findByRoleAndDept(String role, String dept); //ic department
}
