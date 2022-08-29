package test_smartcity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class LibraryDao {
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

	public static int save(Library l) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("insert into add_library(library_name,library_place,"
					+ "library_own,library_otime,library_ctime,library_address,"
					+ "library_email,library_website,library_phone,library_about)" + " values(?,?,?,?,?,?,?,?,?,?)");

			ps.setString(1, l.getLibraryName());
			ps.setString(2, l.getLibraryPlace());
			ps.setString(3, l.getLibraryOwn());
			ps.setString(4, l.getLibraryOtime());
			ps.setString(5, l.getLibraryCtime());
			ps.setString(6, l.getLibraryAddress());
			ps.setString(7, l.getLibraryEmail());
			ps.setString(8, l.getLibraryWebsite());
			ps.setLong(9, l.getLibraryPhone());
			ps.setString(10, l.getLibraryAbout());

			status = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public static List<Library> getAllLibrary() {

		List<Library> list = new ArrayList<Library>();
		try {
			Connection con = getConnection();

			PreparedStatement ps = con.prepareStatement("select * from add_library order by library_id desc");
			// System.out.println("Libraryyy");

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				Library lib = new Library();
				// System.out.println("while...");
				lib.setLibrary_id(rs.getInt("library_id"));
				lib.setLibraryName(rs.getString("library_name"));

				lib.setLibraryOwn(rs.getString("library_own"));

				lib.setLibraryPlace(rs.getString("library_place"));

				lib.setLibraryPhone(rs.getLong("library_phone"));

				lib.setLibraryOtime(rs.getString("library_otime"));

				lib.setLibraryCtime(rs.getString("library_ctime"));
				// System.out.println("kkkkk");
				list.add(lib);
				// System.out.println("LL:");
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	public static Library getMoreLibrary(int Library_id) {

		Library l = null;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from add_library where library_id=?");

			ps.setInt(1, Library_id);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				l = new Library();
				// System.out.println("getMoreSchool");

				l.setLibraryName(rs.getString("library_name"));
				l.setLibraryPlace(rs.getString("library_place"));
				l.setLibraryOwn(rs.getString("library_own"));
				l.setLibraryOtime(rs.getString("library_otime"));
				l.setLibraryCtime(rs.getString("library_ctime"));
				l.setLibraryAddress(rs.getString("library_address"));
				l.setLibraryPhone(rs.getLong("library_phone"));
				l.setLibraryEmail(rs.getString("library_email"));
				l.setLibraryWebsite(rs.getString("library_website"));
				l.setLibraryAbout(rs.getString("library_about"));

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return l;

	}

	public static int deleteLibrary(int lid) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("delete from add_library where library_id=?");

			ps.setInt(1, lid);

			status = ps.executeUpdate();
			// System.out.println("School delete"+s.getSchool_id());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public static int updateLibrary(Library l, int library_id) {
		int status = 0;
		try {
			Connection con = getConnection();

			PreparedStatement ps = con.prepareStatement("update add_library set library_name=?,library_place=?,"
					+ "library_own=?,library_otime=?,library_ctime=?,library_address=?,"
					+ "library_email=?,library_website=?,library_phone=?,library_about=? where library_id=?");

			ps.setString(1, l.getLibraryName());
			ps.setString(2, l.getLibraryPlace());
			ps.setString(3, l.getLibraryOwn());
			ps.setString(4, l.getLibraryOtime());
			ps.setString(5, l.getLibraryCtime());
			ps.setString(6, l.getLibraryAddress());
			ps.setString(7, l.getLibraryEmail());
			ps.setString(8, l.getLibraryWebsite());
			ps.setLong(9, l.getLibraryPhone());
			ps.setString(10, l.getLibraryAbout());

			ps.setInt(11, library_id);

			status = ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
}
