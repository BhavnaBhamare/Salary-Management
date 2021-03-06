package com.pojo;

// Generated Mar 20, 2019 3:15:30 PM by Hibernate Tools 3.4.0.CR1

import java.util.HashSet;
import java.util.Set;

/**
 * Role generated by hbm2java
 */
public class Role implements java.io.Serializable {

	private Integer roleid;
	private String rolename;
	private Set registers = new HashSet(0);

	public Role() {
	}

	public Role(String rolename, Set registers) {
		this.rolename = rolename;
		this.registers = registers;
	}

	public Integer getRoleid() {
		return this.roleid;
	}

	public void setRoleid(Integer roleid) {
		this.roleid = roleid;
	}

	public String getRolename() {
		return this.rolename;
	}

	public void setRolename(String rolename) {
		this.rolename = rolename;
	}

	public Set getRegisters() {
		return this.registers;
	}

	public void setRegisters(Set registers) {
		this.registers = registers;
	}

}
