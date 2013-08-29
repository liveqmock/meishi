package com.bestaone.meishi.core.orm.dialect;

import org.apache.ibatis.session.Configuration;

public class DialectFactory {

	public static Dialect buildDialect(Configuration configuration){
		Dialect dialect = null;
		Dialect.Type databaseType  = null;
		try{
			databaseType = Dialect.Type.valueOf(configuration.getVariables().getProperty("dialect").toUpperCase());
		} catch(Exception e){
			//ignore
		}
		if(databaseType == null){
			throw new RuntimeException("the value of the dialect property in mybatis-config.xml is not defined : " + configuration.getVariables().getProperty("dialect"));
		}
		switch(databaseType){
			case MYSQL:
				dialect = new MySql5Dialect();
			case ORACLE:
				//TODO Oracle方言分页实现;
		}
		return dialect;
	}
}
