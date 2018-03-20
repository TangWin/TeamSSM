package com.team.dao;

import com.team.entity.BE_Order;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface BE_OrderDao {

    /*
     *查找工单
     */
    public List<BE_Order> getCBSHOrder(@Param("StepID") int StepID, @Param("start") int start);
    /*
     *查找工单的数量
     */
    public int getCBSHOrderNum(int StepID);
    /*
     *查找一个工单
     */
    public BE_Order getOrderOne(String OrderNo);
    /*
     *修改一个工单的状态(撤回)
     */
    public void UpdateOne(@Param("OrderNo") String OrderNo, @Param("StepID") int StepID);
    /*
     *初步审核修改一个工单的状态(发送)
     */
    public void UpdateOkOne(@Param("OrderNo") String OrderNo, @Param("StepID") int StepID, @Param("LastEditEmp") int LastEditEmp, @Param("LastEditDate") Date LastEditDate, @Param("AuditEmpID") int AuditEmpID, @Param("AuditMessage") String AuditMessage);
    /*
     *交施工费修改一个工单的状态(发送)
     */
    public void UpdatejsgfOne(@Param("OrderNo") String OrderNo, @Param("StepID") int StepID, @Param("LastEditEmp") int LastEditEmp, @Param("LastEditDate") Date LastEditDate, @Param("ProjectMoney") double ProjectMoney, @Param("RealMoney") double RealMoney, @Param("PayDate") Date PayDate);
    /*
     *供水协议修改一个工单的状态(发送)
     */
    public void UpdategsxyOne(@Param("OrderNo") String OrderNo, @Param("StepID") int StepID, @Param("LastEditEmp") int LastEditEmp, @Param("LastEditDate") Date LastEditDate);
    /*
     *施工竣工修改一个工单的状态(发送)
     */
    public void UpdatesgjgOne(@Param("OrderNo") String OrderNo, @Param("StepID") int StepID, @Param("LastEditEmp") int LastEditEmp, @Param("LastEditDate") Date LastEditDate, @Param("ProjectDate1") Date ProjectDate1, @Param("ProjectDate2") Date ProjectDate2, @Param("AreaID") int AreaID);
    /*
     *档案存档修改一个工单的状态(发送)
     */
    public void UpdatedacdOne(@Param("OrderNo") String OrderNo, @Param("StepID") int StepID, @Param("CompleteDate") Date CompleteDate, @Param("LastEditEmp") int LastEditEmp, @Param("LastEditDate") Date LastEditDate);
    /*
     *终止工单
     */
    public void overOrder(@Param("OrderNo") String OrderNo, @Param("StepID") int StepID, @Param("LastEditEmp") int LastEditEmp, @Param("LastEditDate") Date LastEditDate, @Param("AbortCause") String AbortCause);

}
