package org.noobs.OnlineGames.repository;

import org.noobs.OnlineGames.entity.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<Role, Long> {

    Role findById(long id);
}
