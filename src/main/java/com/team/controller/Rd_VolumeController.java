package com.team.controller;

import com.team.dao.RD_VolumeDao;
import com.team.dao.SY_AreaDao;
import com.team.entity.Rd_Volume;
import com.team.entity.Sy_Area;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 表册管理
 * Created by Administrator on 2018/1/28 0028.
 */
@Controller
@RequestMapping("/dvolume")
public class Rd_VolumeController {

    @Autowired
    private RD_VolumeDao volumeDao;
    @Autowired
    private SY_AreaDao syAreaDao;
    @Autowired
    private RD_VolumeDao rdVolumeDao;


    /**
     * 新增表册5
     * @param volume
     * @return
     */
    @ResponseBody
    @RequestMapping("/addDvolume")
      public Map<String,Object> addDvolume(HttpServletResponse response, HttpServletRequest request,Rd_Volume volume) throws UnsupportedEncodingException {
       request.setCharacterEncoding("utf-8");
        volume.setVolumeName(new String(volume.getVolumeName().getBytes("ISO-8859-1"),"UTF-8"));
        volume.setRemark(new String(volume.getRemark().getBytes("ISO-8859-1"),"UTF-8"));


        Map<String,Object> json = new HashMap<String,Object>();
        Integer result = volumeDao.createrdvolume(volume);
        if(result > 0){
            json.put("success",true);
            json.put("code",0);
            json.put("body",null);
            json.put("msg","插入成功");
        }else{
            json.put("success",false);
            json.put("code",1);
            json.put("body",null);
            json.put("msg","插入失败");
        }
        return json;
    }

    /**
     * 跳转rd_volume.jsp
     * @return
     */
    @RequestMapping("/sentvolume")
    public String sentvolume(){

        return  "/page/rd_volume";
     }

/**
 * 根据辖区id拿到表册
 */
      @ResponseBody
      @RequestMapping("/getallvolumebyid")
      public List<Rd_Volume> getallvolumebyid(Integer areaid){

       return  volumeDao.getallvolumeByid(areaid);

   }

/**
 * 根据id删除表册
 */

@RequestMapping("/deletevolume")
 public void deletevolume(Integer id){
       volumeDao.deleteDvolume(id);
      }


    /**
     *根据表册id修改表册
     */
    Rd_Volume rdVolume;
    @RequestMapping("/updatevolme")
        public String updatevolum(int id,HttpServletRequest request,HttpServletResponse response){
        rdVolume = volumeDao.getDvolumeById(id);
       HttpSession session=request.getSession();
        session.setAttribute("rdVolume",rdVolume);
        session.setAttribute("rdVolumeereaid",rdVolume.getAreaID());
        return "/page/rd_volume_update";
      }




    @RequestMapping("/updateVolume")
    @ResponseBody
  public Map<String,Object> updateVolume(HttpServletResponse response, HttpServletRequest request,Rd_Volume rdVolume) throws UnsupportedEncodingException {
        request.setCharacterEncoding("utf-8");
        rdVolume.setVolumeName(new String(rdVolume.getVolumeName().getBytes("ISO-8859-1"),"UTF-8"));
        rdVolume.setRemark(new String(rdVolume.getRemark().getBytes("ISO-8859-1"),"UTF-8"));
        Map<String,Object> json = new HashMap<String,Object>();
        Integer result = volumeDao.updateDvolume(rdVolume);
      if(result > 0) {
          json.put("success", true);
          json.put("body", 0);
          json.put("code", null);
          json.put("msg", "修改成功");
      }else{
          json.put("success",false);
          json.put("body",1);
          json.put("code",null);
          json.put("msg","修改失败");
      }
      return json;
  }
    /**
     * 查询出所有的表册
     */
    @ResponseBody
    @RequestMapping("/getallvolume")
   public List<Rd_Volume> getallvolume(){

       return volumeDao.getallvolume();
   }

    /**
     * 左侧的区域和表册
     */
    @ResponseBody
    @RequestMapping("/leftvolume")
    public void leftavolume(HttpServletRequest request,HttpServletResponse response) throws IOException {

        String strbegin="";
               String strend= "</tbody>" +
                "</table>";

              //查询出所有的辖区、表册
        List<Sy_Area> areaList = syAreaDao.getAreaAllPage();
        List<Rd_Volume> volumes=rdVolumeDao.getallvolume();
        //遍历辖区的集合
        for (Sy_Area sy_area : areaList) {
            strbegin="<table class='data display>" +
                    " <thead><tr>"+
                    "<th>"+sy_area.getAreaName()+"</th>" +
                    "</tr></thead><tbody>" ;
           //遍历表册
            for (Rd_Volume volume : volumes) {
                if(volume.getAreaID()==sy_area.getId()){
                    strbegin=strbegin+"<tr class='odd gradeX'>" +
                            " <td><a href='rd_volume_1.html'>"+volume.getVolumeName()+"</a></td>" +
                            " <td class='right'>" +
                            " <a href='/dvolume/updatevolme.action?id="+volume.getId()+"'>[修改]</a>" +
                            " <a  v-on:click='deletevolume("+volume.getId()+")' rel='facebox'>[删除]</a>" +
                            "</td></tr>" ;
                }

            }
            strbegin=strbegin+strend;
        }



        System.out.println("拼接的表格"+strbegin);
        PrintWriter out=response.getWriter();
        out.write(strbegin);
        out.close();

    }









}
