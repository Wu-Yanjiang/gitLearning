package cn.jj.jdbc.test;

import cn.jj.jdbc.DataSource.MyDataSource;
import cn.jj.jdbc.DataSource.MyDataSource1;
import cn.jj.jdbc.utils.JDBCUtils_V1;
import cn.jj.jdbc.utils.JDBCUtils_V2;
import cn.jj.jdbc.utils.JDBCUtils_V3;
import cn.jj.jdbc.utils.JDBCUtils_V4;
import org.junit.Test;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/*
 *
 * @param null
 * @return
 * @author wuyanjiang
 * @date
 * @description 测试工具类
 */
public class TestUtils {

    /**
     * 使用改造过的Connection
     */
    @Test
    public void testAddUser1() {
        Connection conn = null;
        PreparedStatement pstmt = null;
//        创建自定义连接池对象
        DataSource dataSource = new MyDataSource1();
        try {
//            从池子获取连接对象
            conn = dataSource.getConnection();
            String sql = "insert into tbl_user values(null,?,?)";
            //3.必须在自定义的connection类中重写prepareStatement(sql)方法
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, "吕布5");
            pstmt.setString(2, "貂蝉5");
            int rows = pstmt.executeUpdate();
            if (rows > 0) {
                System.out.println("成功");
            } else {
                System.out.println("失败");
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            JDBCUtils_V4.release(conn, pstmt, null);
        }
    }


    /**
     * 使用未改造过的Connection
     */
    @Test
    public void testAddUser() {
        Connection conn = null;
        PreparedStatement pstmt = null;
//        创建自定义连接池对象
        MyDataSource dataSource = new MyDataSource();
        try {
//            从池子获取连接对象
            conn = dataSource.getConnection();
            String sql = "insert into tbl_user values(null,?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, "吕布");
            pstmt.setString(2, "貂蝉");
            int rows = pstmt.executeUpdate();
            if (rows > 0) {
                System.out.println("成功");
            } else {
                System.out.println("失败");
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            dataSource.backConnection(conn);
        }
    }


    /*
     *
     * @param null
     * @return
     * @author wuyanjiang
     * @date
     * @description 根据ID更新用户信息
     */
    @Test
    public void testUpdateByID() {
        Connection conn = null;
        PreparedStatement pstmt = null;
        try {
            conn = JDBCUtils_V3.getConnection();
            String sql = "update tbl_user set upassword=? where uid=?";
//            必须重写Connection类中的方法
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, "666");
            pstmt.setString(2, "3");
            int row = pstmt.executeUpdate();
            if (row > 0) {
                System.out.println("更新成功！");
            } else {
                System.out.println("更新失败!");
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            JDBCUtils_V3.release(conn, pstmt, null);
        }
    }


    /*
     *
     * @param null
     * @return
     * @author wuyanjiang
     * @date
     * @description 根据ID删除信息
     */
    @Test
    public void testDeleteByID() {
        Connection conn = null;
        PreparedStatement pstmt = null;
        try {
            conn = JDBCUtils_V3.getConnection();
            String sql = "delete from tbl_user where uid=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, 4);
            int row = pstmt.executeUpdate();
            if (row > 0) {
                System.out.println("删除成功！");
            } else {
                System.out.println("删除失败!");
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            JDBCUtils_V3.release(conn, pstmt, null);
        }
    }


    /*
     *
     * @param null
     * @return
     * @author wuyanjiang
     * @date
     * @description 添加用户信息
     */
    @Test
    public void testADD() {
        Connection conn = null;
        PreparedStatement pstmt = null;
        try {
            conn = JDBCUtils_V2.getConnection();
            String sql = "insert into tbl_user values(null,?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, "lisi");
            pstmt.setString(2, "hehe");
            int row = pstmt.executeUpdate();
            if (row > 0) {
                System.out.println("插入成功！");
            } else {
                System.out.println("插入失败!");
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            JDBCUtils_V2.release(conn, pstmt, null);
        }
    }

    /*
     *
     * @param null
     * @return
     * @author wuyanjiang
     * @date
     * @description 根据ID查询
     */
    @Test
    public void testFindUserByID() {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
//          获取连接
            conn = JDBCUtils_V1.getConnection();
//           SQL语句
            String sql = "select * from tbl_user where uid=?";
//          获取SQL执行对象
            pstmt = conn.prepareStatement(sql);
//          设置参数
            pstmt.setInt(1, 2);
//          执行查询
            rs = pstmt.executeQuery();
//          处理结果集
            while (rs.next()) {
                System.out.println(rs.getString(2) + "---" + rs.getString("upassword"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
//            释放资源
            JDBCUtils_V1.release(conn, pstmt, rs);
        }

    }
}
