package kr.ac.hansung.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class SemesterOffer {

	private String year;

	private String semester;
	
	private String totalgrade;
	
	private String link;

}
