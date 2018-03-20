package com.team.dao;

import com.team.entity.Rd_Volume;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Administrator on 2018/1/28 0028.
 */
public interface RD_VolumeDao {

    /***
     * 创建一个表册
     * @param rd_volume
     */
    Integer createrdvolume(Rd_Volume rd_volume);

    Integer deleteDvolume(Integer id);

    Rd_Volume getDvolumeById(Integer id);

    List<Rd_Volume> getDvolumeAll(@Param("UserName") String UserName, @Param("page") Integer page, @Param("size") Integer size);

    /**
     * 得到辖区下所有的表册
     * @return
     */
     List<Rd_Volume> getallvolumeByid(Integer areaid);

    /**
     *
     * @param rd_volume
     * @return
     * 修改表册
     */
     Integer updateDvolume(Rd_Volume rd_volume);

    /**
     * 得到所有的表册
     *
     */

   public List<Rd_Volume> getallvolume();



}
