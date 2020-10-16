//package com.ssafy.happyhouse.dao;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.LinkedList;
//import java.util.List;
//import java.util.Map;
//
//import com.ssafy.happyhouse.dto.HouseDeal;
//import com.ssafy.happyhouse.dto.HouseInfo;
//import com.ssafy.happyhouse.dto.HousePageBean;
//
//import ch.qos.logback.core.db.dialect.DBUtil;
//
//public class HouseDaoImpl implements HouseDao{
//	private Map<String, HouseInfo> houseInfo;
//	private Map<String, List<HouseDeal>> deals;
//	private int size;
//	private List<HouseDeal>search;
//	private String[] searchType= {HouseDeal.APT_DEAL, HouseDeal.APT_RENT, HouseDeal.HOUSE_DEAL, HouseDeal.HOUSE_RENT};
//	public HouseDaoImpl(){
//
//	}
//
//	public List<HouseDeal> searchAll(HousePageBean bean) throws SQLException{
//		Connection con = null;
//		PreparedStatement pst = null;
//		ResultSet rs = null;
//		try {
//			con = DBUtil.getConnection();
//			StringBuilder sql = new StringBuilder(100);
//			sql.append("select * from housedeal where 1=1 ");
//
//			boolean[] type = bean.getSearchType();
//			sql.append("and type in (");
//			for(int i = 0, size = type.length; i < size; i++) {
//				if(type[i]) {
//					sql.append(i+1).append(",");
//				}
//			}
//			if(sql.charAt(sql.length()-1) == ',') {
//				sql.deleteCharAt(sql.length()-1);
//			}
//			sql.append(")");
//			String dong = bean.getDong();
//			String aptName = bean.getAptname();
//			if(dong != null && !dong.trim().equals("")) {
//				sql.append(" and dong like ?");
//			}else if(aptName != null && !aptName.trim().equals("")) {
//				sql.append(" and aptName like ?");
//			}
//
//			// 동이나 아파트 무조건 둘 중 하나로만 검색 
//			pst = con.prepareStatement(sql.toString());
//			if(dong != null && !dong.trim().equals("")) {
//				pst.setString(1, "%"+dong+"%");
//			}else if(aptName != null && !aptName.trim().equals("")) {
//				pst.setString(1, "%"+aptName+"%");
//			}
//
//			rs = pst.executeQuery();
//			List<HouseDeal> list = new LinkedList<HouseDeal>();
//			while(rs.next()) {
//				HouseDeal deal = new HouseDeal();
//
//				deal.setNo(rs.getInt("no"));
//				deal.setDong(rs.getString("dong"));
//				deal.setAptName(rs.getString("aptName"));
//				deal.setCode(rs.getInt("code"));
//				deal.setDealAmount(rs.getString("dealAmount"));
//				deal.setBuildYear(rs.getInt("buildYear"));
//				deal.setDealYear(rs.getInt("dealYear"));
//				deal.setDealMonth(rs.getInt("dealMonth"));
//				deal.setDealDay(rs.getInt("dealDay"));
//				deal.setArea(rs.getDouble("area"));
//				deal.setFloor(rs.getInt("floor"));
//				deal.setJibun(rs.getString("Jibun"));
//				deal.setType(rs.getString("type"));
//				deal.setRentMoney(rs.getString("rentMoney"));
//
//				list.add(deal);
//			}
//			return list;
//		} finally {
//			DBUtil.close(rs);
//			DBUtil.close(pst);
//			DBUtil.close(con);
//		}
//	}
//
//	/**
//	 * 아파트 식별 번호에 해당하는 아파트 거래 정보를 검색해서 반환한다.<br/>
//	 * 법정동+아파트명을 이용하여 HouseInfo에서 건축연도, 법정코드, 지번, 이미지 정보를 찾아서 HouseDeal에 setting한 정보를 반환한다. 
//	 * @param no   검색할 아파트 식별 번호
//	 * @return      아파트 식별 번호에 해당하는 아파트 거래 정보를 찾아서 리턴한다, 없으면 null이 리턴됨
//	 */
//	public HouseDeal search(int no) throws SQLException{
//		Connection con = null;
//		PreparedStatement pst = null;
//		ResultSet rs = null;
//		try {
//			con = DBUtil.getConnection();
//			String sql = "select * from housedeal where no = ? ";
//			pst = con.prepareStatement(sql);
//			pst.setInt(1,no);
//
//			rs = pst.executeQuery();
//
//			if(rs.next()) {
//				HouseDeal deal = new HouseDeal();
//
//				deal.setNo(rs.getInt("no"));
//				deal.setDong(rs.getString("dong"));
//				deal.setAptName(rs.getString("aptName"));
//				deal.setCode(rs.getInt("code"));
//				deal.setDealAmount(rs.getString("dealAmount"));
//				deal.setBuildYear(rs.getInt("buildYear"));
//				deal.setDealYear(rs.getInt("dealYear"));
//				deal.setDealMonth(rs.getInt("dealMonth"));
//				deal.setDealDay(rs.getInt("dealDay"));
//				deal.setArea(rs.getDouble("area"));
//				deal.setFloor(rs.getInt("floor"));
//				deal.setJibun(rs.getString("Jibun"));
//				deal.setType(rs.getString("type"));
//				deal.setRentMoney(rs.getString("rentMoney"));
//				return deal;
//			}
//			return null;
//		} finally {
//			DBUtil.close(rs);
//			DBUtil.close(pst);
//			DBUtil.close(con);
//		}
//	}
//
//	public static void main(String[] args){
//		HouseDao dao = new HouseDaoImpl();
//
//		try {
//			HouseDeal deal = dao.search(1);
//			System.out.println(deal);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
//
//	@Override
//	   public int getTotalCount() throws SQLException {
//	      int cnt = 0;
//	      Connection conn = null;
//	      PreparedStatement pstmt = null;
//	      ResultSet rs = null;
//	      
//	      try {
//	         conn = DBUtil.getConnection();
//	         StringBuilder sql = new StringBuilder();
//	         sql.append("select count(no) \n");
//	         sql.append("from housedeal \n");
//	         pstmt = conn.prepareStatement(sql.toString());
//	         rs = pstmt.executeQuery();
//	         rs.next();
//	         cnt = rs.getInt(1);
//	         System.out.println("cnt : " + cnt);
//	      } finally {
//	         DBUtil.close(rs);
//	         DBUtil.close(pstmt);
//	         DBUtil.close(conn);
//	      }
//	      return cnt;
//	   }
//
//	
//	@Override
//	public List<HouseDeal> listHouse(int currentPage, int sizePerPage) throws SQLException {
//
//		List<HouseDeal> list = new ArrayList<HouseDeal>();
//
//		Connection conn = null;
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//
//		try {
//			conn = DBUtil.getConnection();
//			StringBuilder sql = new StringBuilder();
//			sql.append("select * \n");
//			sql.append("from housedeal \n");
//			sql.append("order by no desc \n");
//			sql.append("limit ?, ?"); // 0 10하면 첫번째 페이지에 10개 얻어와라
//			
//			pstmt = conn.prepareStatement(sql.toString());
//			int idx = 0;
//		
//			pstmt.setInt(++idx, (currentPage - 1) * sizePerPage);
//			pstmt.setInt(++idx, sizePerPage);
//			rs = pstmt.executeQuery();
//			while(rs.next()) {
//				HouseDeal deal = new HouseDeal();
//
//				deal.setNo(rs.getInt("no"));
//				deal.setDong(rs.getString("dong"));
//				deal.setAptName(rs.getString("aptName"));
//				deal.setCode(rs.getInt("code"));
//				deal.setDealAmount(rs.getString("dealAmount"));
//				deal.setBuildYear(rs.getInt("buildYear"));
//				deal.setDealYear(rs.getInt("dealYear"));
//				deal.setDealMonth(rs.getInt("dealMonth"));
//				deal.setDealDay(rs.getInt("dealDay"));
//				deal.setArea(rs.getDouble("area"));
//				deal.setFloor(rs.getInt("floor"));
//				deal.setJibun(rs.getString("Jibun"));
//				deal.setType(rs.getString("type"));
//				deal.setRentMoney(rs.getString("rentMoney"));
//
//				list.add(deal);
//			}
//		} finally {
//			DBUtil.close(rs);
//			DBUtil.close(pstmt);
//			DBUtil.close(conn);
//		}
//		return list;
//	}
//
//}
//
