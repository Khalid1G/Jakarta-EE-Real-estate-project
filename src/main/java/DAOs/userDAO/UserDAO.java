package DAOs.userDAO;

import Beans.User;

interface UserDAO{
    public User getUserById(long id);
    public User register(User user);
    public User getUserByEmail(String email);
    public User login(String email, String password);
    public void updateUser(User user);
    public void deleteUser(Long user_id);


}