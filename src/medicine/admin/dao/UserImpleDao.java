package medicine.admin.dao;

import java.util.List;
import medicine.admin.org.vo.User;

/*
 * daoģ�͵Ľӿڲ㣬���ڹ涨����ģ����Ҫʵ�ֵķ���
 */
public interface UserImpleDao {
	public List<User> findAll() throws Exception;
	public List<User> findOne() throws Exception;
}