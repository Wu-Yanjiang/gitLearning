package cn.jj.jdbc.utils;

import org.apache.commons.dbcp.BasicDataSourceFactory;

import javax.sql.DataSource;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

public class DBCPUtils {
    private static DataSource dataSource;

    static {
        try {
            //加载找到properties文件
            InputStream is = DBCPUtils.class.getClassLoader().getResourceAsStream("db.properties");
//            加载输入流
            Properties props = new Properties();
            props.load(is);
//            创建数据源
            dataSource = BasicDataSourceFactory.createDataSource(props);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }

    public static DataSource getDataSource() {
        return dataSource;
    }

    public static Connection getConnection() {
        try {
            return dataSource.getConnection();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
