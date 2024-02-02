package com.elysia.gate.manager;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.elysia.common.constants.ActStatusEnum;
import com.elysia.gate.mapper.ElysiaUserMapper;
import com.elysia.gate.pojo.dao.ElysiaUser;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.exception.ExceptionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsPasswordService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.provisioning.UserDetailsManager;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Collection;

/**
 * @BelongsProject: elysia-gate
 * @BelongsPackage: com.elysia.gate.manager
 * @Author: ElysiaKafka
 * @CreateTime: 2024-02-01  12:37:40
 * @Description: TODO
 * @Version: 1.0
 */
@Component
@Slf4j
public class DBUserManager implements UserDetailsManager, UserDetailsPasswordService {
    @Resource
    private ElysiaUserMapper elysiaUserMapper;

    @Override
    public UserDetails updatePassword(UserDetails user, String newPassword) {
        return null;
    }

    /**
     * @description: 创建用户
     * @author: ElysiaKafka
     * @date: 2024/2/1 17:47
     * @param: user
     **/
    @Override
    public void createUser(UserDetails user) {
        try {
            ElysiaUser elysiaUser = new ElysiaUser();
            elysiaUser.setUsername(user.getUsername());
            elysiaUser.setPassword(user.getPassword());
            elysiaUser.setStatus(ActStatusEnum.STATUS_NORMAL.getCode());
            elysiaUserMapper.insert(elysiaUser);
        } catch (Exception e) {
            log.error("elysia_user新增用户失败，错误信息：" + ExceptionUtils.getStackTrace(e));
            throw new RuntimeException(e);
        }
    }

    @Override
    public void updateUser(UserDetails user) {

    }

    @Override
    public void deleteUser(String username) {

    }

    @Override
    public void changePassword(String oldPassword, String newPassword) {

    }

    @Override
    public boolean userExists(String username) {
        return false;
    }

    /**
     * @description: 从数据库中加载用户信息
     * @author: ElysiaKafka
     * @date: 2024/2/1 12:38
     * @param: username
     * @return: org.springframework.security.core.userdetails.UserDetails
     **/
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        QueryWrapper<ElysiaUser> elysiaUserQueryWrapper = new QueryWrapper<>();
        elysiaUserQueryWrapper.eq("username", username);
        ElysiaUser elysiaUser = elysiaUserMapper.selectOne(elysiaUserQueryWrapper);
        if (null == elysiaUser) {
            throw new UsernameNotFoundException(username + "用户不存在");
        } else {
            Collection<GrantedAuthority> elysiaUserAuthorities = new ArrayList<>();
            elysiaUserAuthorities.add(new GrantedAuthority() {
                @Override
                public String getAuthority() {
                    return "USER_QUERY";
                }
            });
            elysiaUserAuthorities.add(() -> "USER_ADD");
            boolean isEnable = elysiaUser.getStatus() == 1 ? true : false;
            return new User(
                    elysiaUser.getUsername(),
                    elysiaUser.getPassword(),
                    isEnable,// 用户账号状态是否启用
                    true,// 用户账号是否过期
                    true,// 用户凭证是否过期
                    true,// 用户是否未被锁定
                    elysiaUserAuthorities
            );
        }
    }
}
