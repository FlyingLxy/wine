package com.wuxian99.finance.basedata.domain;

import com.google.gson.Gson;

import javax.persistence.*;
import java.io.Serializable;

/**
 * 用户收货地址
 */
@Entity
@Table(name="user_address")
public class UserAddressEntity implements Serializable {

  @Id
  @GeneratedValue(strategy= GenerationType.IDENTITY)
  private Long id;

  /**
   * 关联的用户ID
   */
  private Long userid;

  /**
   * 收货人
   */
  private String reciver;

  /**
   * 收货人电话
   */
  private String phone;

  /**
   * 省市区
   */
  private String province;

  /**
   * 详细地址
   */
  private String address;

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public Long getUserid() {
    return userid;
  }

  public void setUserid(Long userid) {
    this.userid = userid;
  }

  public String getReciver() {
    return reciver;
  }

  public void setReciver(String reciver) {
    this.reciver = reciver;
  }

  public String getPhone() {
    return phone;
  }

  public void setPhone(String phone) {
    this.phone = phone;
  }

  public String getProvince() {
    return province;
  }

  public void setProvince(String province) {
    this.province = province;
  }

  public String getAddress() {
    return address;
  }

  public void setAddress(String address) {
    this.address = address;
  }

  @Override
  public String toString() {
    return new Gson().toJson(this);
  }
}