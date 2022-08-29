package test_smartcity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CollegeDao {
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName(DatabaseClass.driverName);
			con = DriverManager.getConnection(DatabaseClass.connectionUrl, DatabaseClass.username,
					DatabaseClass.password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}

	public static int save(College c) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("insert into add_college(college_name,college_place,college_affiliation,"
							+ "college_type,college_coursetype,college_accreditation,college_yearest,college_address,"
							+ "college_email,college_website,college_phone,college_principal,college_about)"
							+ " values(?,?,?,?,?,?,?,?,?,?,?,?,?)");

			ps.setString(1, c.getCollegeName());

			ps.setString(2, c.getCollegePlace());
			ps.setString(3, c.getCollegeAffiliation());
			ps.setString(4, c.getCollegeType());
			ps.setString(5, c.getCollegeCoursetype());
			ps.setString(6, c.getCollegeAccreditation());
			ps.setInt(7, c.getYear_established());
			ps.setString(8, c.getCollegeAddress());
			ps.setString(9, c.getCollegeEmail());
			ps.setString(10, c.getCollegeWebsite());
			ps.setLong(11, c.getCollegePhone());
			ps.setString(12, c.getCollegePrincipal());
			ps.setString(13, c.getCollegeAbout());

			status = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public static List<College> getAllCollege() {

		List<College> list = new ArrayList<College>();
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from add_college order by college_id desc");
			// System.out.println("get all College");

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				College c = new College();

				// System.out.println("while...");
				c.setCollege_id(rs.getInt("college_id"));
				c.setCollegeName(rs.getString("college_name"));
				// System.out.println("college:"+rs.getString("college_name"));
				c.setCollegePlace(rs.getString("college_place"));
				c.setCollegeType(rs.getString("college_type"));
				c.setCollegeAffiliation(rs.getString("college_affiliation"));
				c.setCollegeCoursetype(rs.getString("college_coursetype"));
				c.setCollegeAccreditation(rs.getString("college_accreditation"));

				c.setCollegePhone(rs.getLong("college_phone"));
				c.setCollegeEmail(rs.getString("college_email"));
				c.setCollegeWebsite(rs.getString("college_website"));

				list.add(c);

			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	public static College getMoreCollege(int College_id) {

		College c = null;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from add_college where college_id=?");

			ps.setInt(1, College_id);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				c = new College();
				// System.out.println("getMoreCollege");

				c.setCollegeName(rs.getString("college_name"));
				c.setCollegeType(rs.getString("college_type"));
				c.setCollegeCoursetype(rs.getString("college_coursetype"));
				c.setCollegeAffiliation(rs.getString("college_affiliation"));
				c.setCollegeAccreditation(rs.getString("college_accreditation"));
				c.setYear_established(rs.getInt("college_yearest"));
				c.setCollegePlace(rs.getString("college_place"));
				c.setCollegePhone(rs.getLong("college_phone"));
				c.setCollegeAddress(rs.getString("college_address"));
				c.setCollegeEmail(rs.getString("college_email"));
				c.setCollegeWebsite(rs.getString("college_website"));
				c.setCollegePrincipal(rs.getString("college_principal"));
				c.setCollegeAbout(rs.getString("college_about"));

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return c;

	}

	public static int deleteCollege(int cid) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("delete from add_college where college_id=?");

			ps.setInt(1, cid);

			status = ps.executeUpdate();
			// System.out.println("School delete"+s.getSchool_id());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public static int updateCollege(College c, int college_id) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("update add_college set college_name=?,college_place=?,"
					+ "college_affiliation=?,college_type=?,college_coursetype=?,"
					+ "college_accreditation=?,college_yearest=?,college_address=?,"
					+ "college_email=?,college_website=?,college_phone=?,college_principal=?," + "college_about=?"
					+ "where college_id=?");

			ps.setString(1, c.getCollegeName());

			ps.setString(2, c.getCollegePlace());
			ps.setString(3, c.getCollegeAffiliation());
			ps.setString(4, c.getCollegeType());
			ps.setString(5, c.getCollegeCoursetype());
			ps.setString(6, c.getCollegeAccreditation());
			ps.setInt(7, c.getYear_established());
			ps.setString(8, c.getCollegeAddress());
			ps.setString(9, c.getCollegeEmail());
			ps.setString(10, c.getCollegeWebsite());
			ps.setLong(11, c.getCollegePhone());
			ps.setString(12, c.getCollegePrincipal());
			ps.setString(13, c.getCollegeAbout());
			ps.setInt(14, college_id);
			
			status = ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
}
