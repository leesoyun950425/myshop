package product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ProductDAO {
	DBConnectionMgr mgr;
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	public ProductDAO() {
		mgr = DBConnectionMgr.getInstance();
	}
	
	public void insert(ProductDTO dto) {
		try {
			con = mgr.getConnection();
			String sql = "insert into product values(default,?,?,?,?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getPid());
			ps.setString(2, dto.getPtitle());
			ps.setString(3, dto.getPcontent());
			ps.setString(4, dto.getPrice());
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			mgr.freeConnection(con,ps);
		}
	}
	public void update(ProductDTO dto) {
		try {
			con = mgr.getConnection();
			String sql = "update product set pcontent=?,price=? where pid=? and ptitle=?";
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getPcontent());
			ps.setString(2, dto.getPrice());
			ps.setString(3, dto.getPid());
			ps.setString(4, dto.getPtitle());
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			mgr.freeConnection(con,ps);
		}
	}
	public void delete(ProductDTO dto) {
		try {
			con = mgr.getConnection();
			String sql = "delete from product where pid=?";
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getPid());
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			mgr.freeConnection(con,ps);
		}
	}
	public ProductDTO select(String inputPid) {
		ProductDTO dto = null;
		try {
			con = mgr.getConnection();
			String sql = "select * from product where pid=?";
			ps = con.prepareStatement(sql);
			ps.setString(1, inputPid);
			rs = ps.executeQuery();
			while(rs.next()) {
				dto = new ProductDTO();
				String pid = rs.getString(2);
				String ptitle = rs.getString(3);
				String pcontent = rs.getString(4);
				String price = rs.getString(5);
				dto.setPid(pid);
				dto.setPtitle(ptitle);
				dto.setPcontent(pcontent);
				dto.setPrice(price);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			mgr.freeConnection(con,ps,rs);
		}
		return dto;
	}
	public ArrayList<ProductDTO> selectAll(){
		ArrayList<ProductDTO> list = new ArrayList<ProductDTO>();
		ProductDTO dto = null;
		try {
			con = mgr.getConnection();
			String sql = "select * from product";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				dto = new ProductDTO(); 
				String pid = rs.getString(2);
				String ptitle = rs.getString(3);
				String pcontent = rs.getString(4);
				String price = rs.getString(5);
				dto.setPid(pid);
				dto.setPtitle(ptitle);
				dto.setPcontent(pcontent);
				dto.setPrice(price);
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			mgr.freeConnection(con,ps,rs);
		}
		return list;
	}
}
