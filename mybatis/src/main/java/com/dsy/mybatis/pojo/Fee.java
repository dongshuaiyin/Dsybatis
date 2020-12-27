package com.dsy.mybatis.pojo;

/**
 * @Desc： 消费表
 * @Author：dongshuaiyin
 * @Date：2020/12/27 14:59
 * @Version 1.0
 */
public class Fee {

    /**
     * 编号
     */
    private String id;

    /**
     * 消费金额
     */
    private String feeAmt;

    /**
     * 消费日期
     */
    private String feeDate;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFeeAmt() {
        return feeAmt;
    }

    public void setFeeAmt(String feeAmt) {
        this.feeAmt = feeAmt;
    }

    public String getFeeDate() {
        return feeDate;
    }

    public void setFeeDate(String feeDate) {
        this.feeDate = feeDate;
    }

    @Override
    public String toString() {
        return "Fee{" +
                "id='" + id + '\'' +
                ", feeAmt='" + feeAmt + '\'' +
                ", feeDate='" + feeDate + '\'' +
                '}';
    }
}
