package top.zanghongmin.model;

import javax.persistence.*;
import java.sql.Timestamp;


@Entity
@Table(name = "webcontent")
public class Webcontent {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

    @Column(columnDefinition="MEDIUMTEXT")
    private String content; // 收藏的网页内容
    
    @Column(unique=true,nullable=false)
    private String pwebid; // 收藏的网页内容

    private Timestamp createtime; 
    private Timestamp updatetime; 
    private Long updatecount; 
    
	public Timestamp getCreatetime() {
		return createtime;
	}


	public void setCreatetime(Timestamp createtime) {
		this.createtime = createtime;
	}


	public Timestamp getUpdatetime() {
		return updatetime;
	}


	public void setUpdatetime(Timestamp updatetime) {
		this.updatetime = updatetime;
	}


	public Long getUpdatecount() {
		return updatecount;
	}


	public void setUpdatecount(Long updatecount) {
		this.updatecount = updatecount;
	}


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public String getPwebid() {
		return pwebid;
	}


	public void setPwebid(String pwebid) {
		this.pwebid = pwebid;
	}



    
    
    
    
    
	
	
}