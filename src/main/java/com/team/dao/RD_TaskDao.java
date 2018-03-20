package com.team.dao;

import com.team.entity.Tasksimulate;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/3/11 0011.
 */
public interface RD_TaskDao {
    public List<Map<String,Object>> getalltask();
    public Tasksimulate gettaskobject(int id);
    public void updatetask(@Param("empid") int empid, @Param("id") int id);
}
