package com.kr.spt.util;

import java.util.Collection;
import java.util.Collections;
import java.util.Set;

import org.springframework.security.core.GrantedAuthority;

public class User {

	private Set<Object> authorities;
	private boolean accountNonLocked;
	private String username;
	private String password;
	private boolean enabled;
	private boolean credentialsNonExpired;
	private boolean accountNonExpired;

	public User(String username, String password, Collection<? extends GrantedAuthority> authorities) {
        this(username, password, true, true, true, true, authorities);
    }

	public User(String username, String password, boolean enabled, boolean accountNonExpired, boolean credentialsNonExpired, boolean accountNonLocked, Collection<? extends GrantedAuthority> authorities) {

        if (((username == null) || "".equals(username)) || (password == null)) {
            throw new IllegalArgumentException("Cannot pass null or empty values to constructor");
        }

        this.username = username;
        this.password = password;
        this.enabled = enabled;
        this.accountNonExpired = accountNonExpired;
        this.credentialsNonExpired = credentialsNonExpired;
        this.accountNonLocked = accountNonLocked;
        this.authorities = Collections.unmodifiableSet(sortAuthorities(authorities));
    }

	private Set<? extends Object> sortAuthorities(
			Collection<? extends GrantedAuthority> authorities) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
