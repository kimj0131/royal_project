package com.ezen.royal.util;

import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.ezen.royal.api.dto.InnerDataFromOpenApiDTO;

public class XMLdataParseToRoyalInnerFromOpenApi {

	// tag값의 정보를 가져오는 함수
	public String getTagValue(String tag, Element eElement) {

		// 결과를 저장할 result 변수 선언
		String result = "";

		NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();

		result = nlList.item(0).getTextContent();

		return result;
	}
	
	// XML데이터들을 List로 반환하는 메서드
	public List<InnerDataFromOpenApiDTO> getParseDataList(){
		try {
			
			String uri = "https://www.heritage.go.kr/heri/gungDetail/gogungListOpenApi.do";
			
			DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
			Document doc = dBuilder.parse(uri);

			// 파싱할 tag
			NodeList nList = doc.getElementsByTagName("list");
			
			// 리턴할 dto 리스트 생성
			List<InnerDataFromOpenApiDTO> dtoList = new ArrayList<>();
			
			for(int temp = 0; temp < nList.getLength(); temp++){
				
				Node nNode = nList.item(temp);
			
				Element eElement = (Element) nNode;
				
				InnerDataFromOpenApiDTO innerDTO = new InnerDataFromOpenApiDTO();
				
				// royal_inner_seq.nextval을 사용하지 않을경우 api의 serial_number를 받아 쓴다
				innerDTO.setRoyal_inner_id(Integer.parseInt(getTagValue("serial_number", eElement)));
				
				innerDTO.setRoyal_id(Integer.parseInt(getTagValue("gung_number", eElement)));
				innerDTO.setRoyal_inner_name(getTagValue("contents_kor", eElement));
				innerDTO.setRoyal_inner_detail(getTagValue("explanation_kor", eElement));
				innerDTO.setRoyal_inner_imgpath(getTagValue("imgUrl", eElement));
				
				dtoList.add(innerDTO);
			}
			
			return dtoList;			
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
