package medicine.admin.dao;

import java.util.List;
import medicine.admin.org.vo.User;

/*
 * dao模型的接口层，用于规定各个模块需要实现的方法
 */
public interface UserImpleDao {
	public List<User> findAll() throws Exception;
	public List<User> findOne() throws Exception;
}