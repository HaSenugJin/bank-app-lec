package org.example.back.user;

import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;

import java.util.Optional;

@DataJpaTest
public class UserRepositoryTest {

    @Autowired
    private UserRepository userRepository;

    @Test
    public void findByUsernameAndPassword_test() {
        // given
        String username = "ssar";
        String password = "1234";

        // when
        Optional<User> userOP = userRepository.findByUsernameAndPassword(username, password);

//        User user = userOP.get();
//        System.out.println(user);

        // then
        Assertions.assertThat(userOP.get()).isNotNull();
        Assertions.assertThat(userOP.get().getUsername()).isEqualTo("ssar");
    }
}