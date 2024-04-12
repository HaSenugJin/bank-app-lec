package org.example.back.user;

import lombok.RequiredArgsConstructor;
import org.example.back._core.errors.exception.Exception401;
import org.example.back._core.utils.JwtUtil;
import org.springframework.stereotype.Service;

@RequiredArgsConstructor
@Service
public class UserService {
    private final UserRepository userRepository;

    public String 로그인(String username, String password){
        User user = userRepository.findByUsernameAndPassword(username, password)
                .orElseThrow(() -> new Exception401("유저네임 혹은 패스워드가 틀렸습니다"));
        String jwt = JwtUtil.create(user);
        return jwt;
    }
}
