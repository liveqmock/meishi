package com.bestaone.meishi.model;

import com.bestaone.meishi.api.entity.IdEntity;
import com.bestaone.meishi.model.enums.ResourceType;

/**
 * 资源
 * @author 张国圣
 */
public class Resource extends IdEntity<Resource> {

	private static final long serialVersionUID = -8819296118180810212L;

	//资源名称
	private String name;
	//资源编码
	private String code; 
	//资源值
	private String value;
	//资源类型
	private ResourceType type;
	//资源描述
	private String remark;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public ResourceType getType() {
		return type;
	}
	public void setType(ResourceType type) {
		this.type = type;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}

}
