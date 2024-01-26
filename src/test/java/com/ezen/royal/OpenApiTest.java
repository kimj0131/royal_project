package com.ezen.royal;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class OpenApiTest {

	// tag값의 정보를 가져오는 함수
	public static String getTagValue(String tag, Element eElement) {

		// 결과를 저장할 result 변수 선언
		String result = "";

		NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();

		result = nlList.item(0).getTextContent();

		return result;
	}

	public static void main(String[] args) {

		try {
			DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
			Document doc = dBuilder.parse("https://www.heritage.go.kr/heri/gungDetail/gogungListOpenApi.do");

			// 제일 첫번째 태그
			doc.getDocumentElement().normalize();

			// 파싱할 tag
			NodeList nList = doc.getElementsByTagName("list");
			
			for(int temp = 0; temp < nList.getLength(); temp++){
				Node nNode = nList.item(temp);
			
				Element eElement = (Element) nNode;
				
				System.out.println("궁 번호 : " + getTagValue("gung_number", eElement));
				System.out.println("문화재 이름 : " + getTagValue("contents_kor", eElement));
				System.out.println("문화재 설명 : " + getTagValue("explanation_kor", eElement));
				System.out.println("이미지 링크 : " + getTagValue("imgUrl", eElement));
				System.out.println("시리얼 넘버 : " + getTagValue("serial_number", eElement));
				System.out.println("==========================================");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
