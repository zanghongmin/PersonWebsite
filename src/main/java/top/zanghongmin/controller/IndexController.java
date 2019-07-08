package top.zanghongmin.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import org.apache.commons.text.RandomStringGenerator;
import org.apache.commons.text.StringEscapeUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import top.zanghongmin.dao.WebcontentDao;
import top.zanghongmin.model.Webcontent;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.Date;

@Controller()
public class IndexController {
	
	@Autowired
	WebcontentDao webcontentDao;
	
	final String pwebcentent = "[{\"classname\":\"常用网址 \",\"urls\":[{\"name\":\"百度新闻\",\"url\":\"http://news.baidu.com/\"},{\"name\":\"36氪\",\"url\":\"http://36kr.com/\"},{\"name\":\"虎嗅网\",\"url\":\"https://www.huxiu.com\"},{\"name\":\"百度\",\"url\":\"http://www.baidu.com\"},{\"name\":\"中英新闻\",\"url\":\"http://www.kekenet.com/read/news/\"},{\"name\":\"微信网页版\",\"url\":\"https://wx.qq.com/\"}],\"column\":1,\"row\":1}]";		
	final char[][] pairs = { { 'a', 'f' }, { '0', '9' } };
	final String homepwedid="000000";
	final String mypwedid="666666";
	
	RandomStringGenerator randomstring = new RandomStringGenerator.Builder().withinRange(pairs).build();
	
	@RequestMapping(value= "/")
	public String home(ModelMap model, HttpServletRequest request, HttpSession session) {
		
		Webcontent webcontent = webcontentDao.findOneByPwebid(homepwedid);
		//webcontent.setContent(StringEscapeUtils.unescapeJson(webcontent.getContent()));
		
		model.put("webcontent", webcontent);	
		return "/index";
	}	
	@RequestMapping(value= "/{pwebid}")
	public String other(ModelMap model, HttpServletRequest request, HttpSession session, @PathVariable String pwebid) {
		Webcontent webcontent = null;		
		if(pwebid == null) {
			webcontent = webcontentDao.findOneByPwebid(homepwedid);
		}else {
			webcontent = webcontentDao.findOneByPwebid(pwebid);
		}			
		model.put("webcontent", webcontent);	
		return "/index";
	}
	@RequestMapping(value= "/pweb/update", method = RequestMethod.POST)
	@ResponseBody
	public String update(ModelMap model, Webcontent webcontent) {
		if(webcontent ==null || webcontent.getId()==null) {
			return "false";
		}else {
			
			JSONArray newjsonarray = new JSONArray();
			JSONArray oldjsonarray = JSONArray.parseArray(webcontent.getContent());
			
			for(int n=0;n<oldjsonarray.size();n++) { //防止xss
				JSONObject jsonObject  = oldjsonarray.getJSONObject(n);
				jsonObject.put("classname", StringEscapeUtils.escapeHtml4(jsonObject.getString("classname")));
				jsonObject.put("column", StringEscapeUtils.escapeHtml4(jsonObject.getString("column")));
				jsonObject.put("row", StringEscapeUtils.escapeHtml4(jsonObject.getString("row")));
				JSONArray  newurlsJSONArray = new JSONArray();
				JSONArray  oldurlsJSONArray = jsonObject.getJSONArray("urls");
				for(int i=0;i<oldurlsJSONArray.size();i++) {
					JSONObject urljsonObject  = oldurlsJSONArray.getJSONObject(i);					
					urljsonObject.put("name", StringEscapeUtils.escapeHtml4(urljsonObject.getString("name")));	
					urljsonObject.put("url", StringEscapeUtils.escapeHtml4(urljsonObject.getString("url")));
					newurlsJSONArray.add(urljsonObject);
				}				
				jsonObject.put("urls", newurlsJSONArray);
				newjsonarray.add(jsonObject);
				
			}

			webcontent.setContent(newjsonarray.toJSONString());
			Webcontent oldwebcontent = webcontentDao.getOne(webcontent.getId());
			oldwebcontent.setContent(webcontent.getContent());			
			oldwebcontent.setUpdatetime(new Timestamp(new Date().getTime()));
			if(oldwebcontent.getUpdatecount()==null) {
				oldwebcontent.setUpdatecount(1l);
			}else {
				oldwebcontent.setUpdatecount(oldwebcontent.getUpdatecount() + 1l);
			}
			oldwebcontent = webcontentDao.save(oldwebcontent);
			if(oldwebcontent.getPwebid().equals(mypwedid)) {
				oldwebcontent = webcontentDao.findOneByPwebid(homepwedid);
				oldwebcontent.setContent(webcontent.getContent());
				webcontentDao.save(oldwebcontent);
			}
			return "true";
		}
	}	
	@RequestMapping(value= "/pweb/create")
	public String create(ModelMap model) {
		Webcontent createwebcontent = new Webcontent();
		createwebcontent.setContent(pwebcentent);
		createwebcontent.setPwebid(randomstring.generate((8+(int)(Math.random()*12))));
		createwebcontent.setUpdatecount(0l);
		createwebcontent.setCreatetime(new Timestamp(new Date().getTime()));
		createwebcontent.setUpdatetime(new Timestamp(new Date().getTime()));
		createwebcontent = webcontentDao.save(createwebcontent);
		return "redirect:/" +createwebcontent.getPwebid();
	}	
	

}
