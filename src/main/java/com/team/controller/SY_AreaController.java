package com.team.controller;


import com.team.dao.RD_VolumeDao;
import com.team.dao.SY_AreaDao;
import com.team.entity.Rd_Volume;
import com.team.entity.Sy_Area;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class SY_AreaController {


    @Autowired
    private SY_AreaDao sy_areaDao;

    /**
     * 获取所有辖区
     *
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "getAreaAll")
    public List<Sy_Area> getAreaAll() {

        List<Sy_Area> areaList = sy_areaDao.getAreaAllPage();

        return areaList;
    }


    /**
     * 得到单个辖区
     *
     * @param requestId
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "getAreaById")
    public Sy_Area getAreaById(@RequestParam(required = false) Integer requestId) {
        Sy_Area syArea = null;
        //根据id获取辖区对象
        if (requestId != null) {
            syArea = sy_areaDao.getAreaById(requestId);
        }
        return syArea;
    }


    /**
     * 添加
     *
     * @param area
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "addArea")
    public boolean addArea(Sy_Area area) {
        area.setDisabled(false);

        Boolean flag = false;

        //判断是否存在值
        if (area != null) {
            Integer integer = sy_areaDao.insertArea(area);
            if (integer > 0) {
                flag = true;
            }
        }
        return flag;
    }

    /**
     * 修改
     *
     * @param area
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "editArea")
    public boolean editArea(Sy_Area area) {

        area.setDisabled(false);

        Boolean flag = false;

        //判断是否存在值
        if (area != null) {
            Integer integer = sy_areaDao.updateArea(area);
            if (integer > 0) {
                flag = true;
            }
        }
        return flag;
    }

    /**
     * 删除
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "delArea")
    public boolean delArea(int id) {

        Boolean flag = false;
        Integer integer = sy_areaDao.delArea(id);
        if (integer > 0) {
            flag = true;
        }

        return flag;
    }


    @Autowired
    private RD_VolumeDao rdVolumeDao;
    @ResponseBody
    @RequestMapping("/getallareas")
    public String getallareas(HttpServletResponse response, HttpServletRequest request)  {
        String str=" 选择表册:<select id='selectidss' class='medium' >";
        String endoptgroupstr="</select> ";
        String centerstr="</optgroup>";
        List<Sy_Area> areaList = sy_areaDao.getAreaAllPage();
        List<Rd_Volume> volumes=rdVolumeDao.getallvolume();

        for (Sy_Area sy_area : areaList) {
            str=str+ "<optgroup label='"+sy_area.getAreaName()+"'>";

            for (Rd_Volume volume : volumes) {
                if(volume.getAreaID()==sy_area.getId()){
                    str=str+"<option  value='"+volume.getId()+"'>"+volume.getVolumeName()+"</option>";
                }
            }
            str=str+centerstr;
        }
        str=str+endoptgroupstr;
        return str ;
    }


}
