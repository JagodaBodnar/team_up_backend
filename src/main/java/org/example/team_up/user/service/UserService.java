package org.example.team_up.user.service;

import lombok.RequiredArgsConstructor;
import org.example.team_up.user.exceptions.UserNotFoundException;
import org.example.team_up.user.model.User;
import org.example.team_up.user.repository.UserRepository;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UserService {
    private final UserRepository repository;

//    public User getUserById(UUID id) {
//        return repository.findById(id).orElseThrow(() -> new UserNotFoundException("User not found."));
//    }

}
