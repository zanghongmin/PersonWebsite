package top.zanghongmin.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import top.zanghongmin.model.Webcontent;


public interface WebcontentDao extends JpaRepository<Webcontent, Long>, JpaSpecificationExecutor<Webcontent> {
	Webcontent findOneByPwebid(String pwebid);
}


