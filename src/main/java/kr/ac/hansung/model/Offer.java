package kr.ac.hansung.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString

public class Offer {
	
	private int id;
	
	private String year;
	
	private String semester;
	
	private String classcode;
	
	private String classname;
	
	private String section;
	
	private String grade;
	
}
