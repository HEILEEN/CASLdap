package confianza;

import static org.springframework.ldap.query.LdapQueryBuilder.query;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ldap.core.LdapTemplate;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.AuthenticationUserDetailsService;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public class userDetailsService implements UserDetailsService, AuthenticationUserDetailsService{

	@Autowired
	private LdapTemplate ldapTemplate;
	
	private String userName;
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		System.out.println("username is:"+username);
		return null;
	}

	@Override
	public UserDetails loadUserDetails(Authentication token) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		System.out.println("Authentication is:"+token.getName());
		System.out.println("password is:"+token.getCredentials().toString());
		System.out.println("password is:"+token.getCredentials());
		userName=token.getName();
		
		List<GrantedAuthority> autorities = new ArrayList<GrantedAuthority>();
		
		List<Person> lista = null;
		lista =  ldapTemplate.search(query().	  
        		 filter("(&(objectClass=person)(sAMAccountName="+userName+"))"),
        		 new PersonAttributesMapperImpl());
		
		Person persona=lista.get(0);
		
		for(String grupo:persona.getGroups()){
			System.out.println(grupo);
			autorities.add(new SimpleGrantedAuthority(grupo));
		}
		UserDetails user = new User(userName, token.getCredentials().toString(), true, true, true, true, autorities);
		
		return user;
	}

}
