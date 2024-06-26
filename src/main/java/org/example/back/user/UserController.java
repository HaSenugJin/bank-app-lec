package org.example.back.user;

import lombok.RequiredArgsConstructor;
import org.example.back._core.utils.ApiUtil;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RequiredArgsConstructor
@RestController
public class UserController {
    private final UserService userService;

    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestBody UserRequest.LoginDTO reqDTO){
        String jwt = userService.로그인(reqDTO.getUsername(), reqDTO.getPassword());
        return ResponseEntity.ok().header("Authorization", "Bearer "+jwt).body(new ApiUtil<>(null));
    }
}
