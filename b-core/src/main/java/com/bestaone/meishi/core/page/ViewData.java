package com.bestaone.meishi.core.page;


/**
 * 页面数据对象
 * @author zhangguosheng
 */
public class ViewData {

	/**
	 * 请求返回状态
	 */
	private ViewDataStatus status = ViewDataStatus.SUCCESS;
	
	/**
	 * 请求返回信息
	 */
	private String msg;
	
	/**
	 * 请求返回数据
	 */
	private Object result;
	
	public ViewData(ViewDataStatus status, String msg, Object result){
		this.status = status;
		this.msg = msg;
		this.result = result;
	}
	
	public ViewDataStatus getStatus() {
		return status;
	}
	public void setStatus(ViewDataStatus status) {
		this.status = status;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public Object getResult() {
		return result;
	}
	public void setResult(Object result) {
		this.result = result;
	}

}
