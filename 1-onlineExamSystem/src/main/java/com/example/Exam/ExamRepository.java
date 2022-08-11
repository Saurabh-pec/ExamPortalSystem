package com.example.Exam;


import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public interface ExamRepository extends CrudRepository<Exam, Integer> {

}
