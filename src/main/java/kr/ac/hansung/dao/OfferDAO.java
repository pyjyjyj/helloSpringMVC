package kr.ac.hansung.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import kr.ac.hansung.model.Offer;
import kr.ac.hansung.model.SemesterOffer;

@Repository
public class OfferDAO {
	
	private JdbcTemplate jdbcTemplete;
	
	@Autowired
	public void setDataSource(DataSource datasource) {
		jdbcTemplete = new JdbcTemplate(datasource);
	}

	public int getRowCount() {
		String sqlStatement = "select count(*) from offers";
		return jdbcTemplete.queryForObject(sqlStatement, Integer.class);
	}	
	
	//query and return a single object
		public Offer getOffer(String year, String semester) {
			String sqlStatement = "select * from offers where (year, semester)=(?, ?)";
			
			return jdbcTemplete.queryForObject(sqlStatement, new Object[] {year, semester},
					new RowMapper<Offer>() {
						public Offer mapRow(ResultSet rs, int rowNum) throws SQLException {
							Offer offer = new Offer();
					
							offer.setId(rs.getInt("id"));
							offer.setYear(rs.getString("year"));
							offer.setSemester(rs.getString("semester"));
							offer.setClasscode(rs.getString("classcode"));
							offer.setClassname(rs.getString("classname"));
							offer.setSection(rs.getString("section"));
							offer.setGrade(rs.getString("grade"));
					
							return offer;
						}
				}
			);
		}
		
		//query and return a multiple object
		public List<Offer> getOffers(String year, String semester) {
			String sqlStatement = "select * from offers where (year, semester)=(?, ?)";
			
			return jdbcTemplete.query(sqlStatement, new Object[] {year, semester},
					new RowMapper<Offer>(){
				
				public Offer mapRow(ResultSet rs, int rowNum) throws SQLException {
					Offer offer = new Offer();
					
					offer.setId(rs.getInt("id"));
					offer.setYear(rs.getString("year"));
					offer.setSemester(rs.getString("semester"));
					offer.setClasscode(rs.getString("classcode"));
					offer.setClassname(rs.getString("classname"));
					offer.setSection(rs.getString("section"));
					offer.setGrade(rs.getString("grade"));
					
					return offer;
				}
			}
				
			);
		}
		
		public List<SemesterOffer> getSemesterOffers() {
			String sqlStatement = "select * from semesteroffers";
			
			return jdbcTemplete.query(sqlStatement, new RowMapper<SemesterOffer>(){
				
				public SemesterOffer mapRow(ResultSet rs, int rowNum) throws SQLException {
					SemesterOffer semesteroffer = new SemesterOffer();
					
					semesteroffer.setYear(rs.getString("year"));
					semesteroffer.setSemester(rs.getString("semester"));
					semesteroffer.setTotalgrade(rs.getString("totalgrade"));
					semesteroffer.setLink(rs.getString("link"));
					
					return semesteroffer;
				}
			}
				
			);
		}
		
		public boolean insert(Offer offer) {
			String year = offer.getYear();
			String semester = offer.getSemester();
			String classcode = offer.getClasscode();
			String classname = offer.getClassname();
			String section = offer.getSection();
			String grade = offer.getGrade();
			
			String sqlStatement = "insert into offers (year, semester, classcode, classname, section, grade) values (?, ?, ?, ?, ?, ?) ";
			
			return (jdbcTemplete.update(sqlStatement, new Object[] {year, semester, classcode, classname, section, grade})  == 1);
		}
		
		public boolean update(Offer offer) {
			
			int id = offer.getId();
			String year = offer.getYear();
			String semester = offer.getSemester();
			String classcode = offer.getClasscode();
			String classname = offer.getClassname();
			String section = offer.getSection();
			String grade = offer.getGrade();
			
			String sqlStatement = "update offers set name=?, email=?, text=? where id=?";
			
			return (jdbcTemplete.update(sqlStatement, new Object[] {year, semester, classcode, classname, section, grade, id})  == 1);
		}
		
		public boolean delete(int id) {
			String sqlStatement = "delete from offers where id=?";
			return (jdbcTemplete.update(sqlStatement, new Object[] {id})  == 1);
		}
	
}
