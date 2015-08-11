package com.bysj.util.pageData;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

public class PageData extends HashMap implements Map {
	
	Map map = null; 
	HttpServletRequest request;
	
	/**
	 * 获取页面属性
	 * @param request
	 */
	public PageData(HttpServletRequest request){    //constructor method
		this.request = request;
		Map inputProperties = request.getParameterMap(); //获取从页面传来的所有input标签属性
		Map returnMap = new HashMap();
		Iterator iterator = inputProperties.entrySet().iterator();
		Map.Entry entry;
		String name = "";
		String value = "";
		while(iterator.hasNext()){
			entry = (Map.Entry) iterator.next();
			name = (String) entry.getKey();
			Object valueObj = (Object) entry.getValue();
			if(null == valueObj){
				value = "";
			}else if(valueObj instanceof String[]){
				String[] values = (String[]) valueObj;
				for(int i=0; i<values.length;i++){
					value = values[i] + ",";
				}
				value = value.substring(0, value.length()-1);
			}else{
				value = valueObj.toString();
			}
			returnMap.put(name,value);
		}
		map = returnMap;
	}
	
	public PageData(){
		map = new HashMap();
	}
	
	@Override
	public Object get(Object key){
		Object obj = null;
		if(map.get(key) instanceof Object[]){
			Object[] arr = (Object[]) map.get(key);
			obj = request == null ? arr:(request.getParameter((String)key) ==null ? arr:arr[0]);
		}else{
			obj = map.get(key);
		}
		return obj;
	}
	
	public String getString(Object key){
		return (String)get(key);
	}
	
	@Override
	public Object put(Object key,Object value){
		return map.put(key, value);
	}
	
	@Override
	public Object remove(Object key){
		return map.remove(key);
	}
	 
	public void clear(){
		 map.clear();
	}
	
	public boolean containsKey(Object key){
		return map.containsKey(key);
	}
	public boolean containsValue(Object value){
		return map.containsValue(value);
	}
	public Set entrySet(){
		return map.entrySet();
	}
	public boolean isEmpty(){
		return map.isEmpty();
	}
	public Set keySet(){
		return map.keySet();
	}
	public void putAll(Map t){
		map.putAll(t);
	}
	public int size(){
		return map.size();
	}
	public Collection values(){
		return map.values();
	}
}
