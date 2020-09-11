package JM.Task231.model;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.Transient;

import javax.persistence.*;

@Transient
@Table(name = "user")
@Entity
public class Role implements GrantedAuthority {

    @Id
    private Long id;

    private String role;

    @ManyToOne(optional = false, cascade = CascadeType.ALL)
    @JoinColumn(name = "role", insertable = false, updatable = false)
    private User user;

    public Role() {
    }

    public Role(Long id, String role) {
        this.id = id;
        this.role = role;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Override
    public String getAuthority() {
        return role;
    }
}
