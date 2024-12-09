package com.example.demo.repo;

import com.example.demo.model.Course;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface CourseRepo extends JpaRepository<Course, Long> {
    // Custom queries can be added here if needed
	@Query("SELECT c FROM Course c JOIN c.students s WHERE s.id = :studentId")
	List<Course> findCoursesByStudentsId(@Param("studentId") Long studentId);
	List<Course> findByFacultyId(Long facultyId);

}
