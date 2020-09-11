package JM.Task231.service;

import JM.Task231.model.User;

import java.util.List;
import java.util.Optional;

public interface UserService {
    List<User> allUsers();
    void add(User user);
    void delete(int id);
    void edit(User user);
    User getById(int id);
    User getByLogin(String login);
}
