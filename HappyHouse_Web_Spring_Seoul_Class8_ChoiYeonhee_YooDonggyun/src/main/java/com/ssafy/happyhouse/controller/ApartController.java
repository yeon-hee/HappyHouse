package com.ssafy.happyhouse.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServlet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ssafy.happyhouse.dto.HouseDeal;
import com.ssafy.happyhouse.dto.HousePageBean;
import com.ssafy.happyhouse.service.HouseService;

@RequestMapping("/apart")
@Controller
public class ApartController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private HouseService houseDealService;

	@Autowired
	public void setHouseService(HouseService houseDealService) {
		this.houseDealService = houseDealService;
	}

	@GetMapping("/search.do")
	public String search() {
		return "/apart/search";
	}
	
	@GetMapping("/dong_move.do")
	public String dong_move() {
		return "/apart/dong";
	}
	
	@GetMapping("/name_move.do")
	public String name_move() {
		return "/apart/name";
	}
	
	@PostMapping("/name.do")
	private String name_search(String apart, Model model){ // request가 model
		
		HousePageBean houseBean = new HousePageBean();
		houseBean.setAptname(apart);
		houseBean.setDong("");

		boolean[] searchType = new boolean[] { true, true, true, true };
		houseBean.setSearchType(searchType);
		model.addAttribute("aptname",apart);
		model.addAttribute("Dlist",houseDealService.searchAll(houseBean));
		return "/apart/name";
	}
	
	@PostMapping("/dong.do")
	private String dong_search(String dong, Model model) {
		
		HousePageBean houseBean = new HousePageBean();
		houseBean.setDong(dong);
		houseBean.setAptname("");
		
		boolean[] searchType = new boolean[] { true, true, true, true };
		houseBean.setSearchType(searchType);
		model.addAttribute("dong",dong);
		model.addAttribute("Donglist",houseDealService.searchAll(houseBean));
		return "/apart/dong";
	}
	
	@PostMapping("/price.do")
	private String price_search(String dealAmount, Model model) {
		HousePageBean houseBean = new HousePageBean();
		houseBean.setDealtype(dealAmount);
		houseBean.setAptname("");
		houseBean.setDong("");
		return null;
	}
	
	@RequestMapping(value="dong_sort.do", method = {RequestMethod.GET, RequestMethod.POST})
	private String dong_sort(String dong, String order_option,  Model model) {
		
		HousePageBean houseBean = new HousePageBean();
		houseBean.setDong(dong);
		houseBean.setAptname("");

		boolean[] searchType = new boolean[] { true, true, true, true };
		houseBean.setSearchType(searchType);
		
		List<HouseDeal> Donglist = new ArrayList<HouseDeal>(); // 아파트 정보 담고 있는 리스트
		Donglist = houseDealService.searchAll(houseBean);
		String opt = "";
		System.out.println(order_option);
		
		if(order_option.equals("oaptName")) { // 아파트별 정렬

			for(int i=0;i<Donglist.size()-1;i++) {
				for(int j=i+1;j<Donglist.size();j++) {
					if(Donglist.get(i).getAptName().compareTo(Donglist.get(j).getAptName())>0){
						HouseDeal temp = Donglist.get(i);
						Donglist.set(i, Donglist.get(j));
						Donglist.set(j, temp);
					}
				}
			}

			opt = "아파트";
			model.addAttribute("opt",opt);
			model.addAttribute("dong",dong);
			model.addAttribute("Donglist", houseDealService.searchAll(houseBean));
		}
		else if(order_option.equals("oprice")){ // 가격별 정렬

			for(int i=0;i<Donglist.size()-1;i++) {
				for(int j=i+1;j<Donglist.size();j++) {
					String str1 = Donglist.get(i).getDealAmount();
					String str2 = Donglist.get(j).getDealAmount();
					String num1 = "";
					String num2 = "";
					for(int k=0;k<str1.length();k++) {
						if(Character.isDigit(str1.charAt(k))) {
							num1 += str1.charAt(k);
						}
					}
					for(int k=0;k<str2.length();k++) {
						if(Character.isDigit(str2.charAt(k))) {
							num2 += str2.charAt(k);
						}
					}
					int a = Integer.parseInt(num1);
					int b = Integer.parseInt(num2);

					if(a>b) {
						HouseDeal temp = Donglist.get(i);
						Donglist.set(i, Donglist.get(j));
						Donglist.set(j, temp);
					}
				}
			}

			opt = "아파트";
			model.addAttribute("opt",opt);
			model.addAttribute("dong",dong);
			model.addAttribute("Donglist", Donglist);
		}
		return "/apart/dong_sort";
	}
	
	@RequestMapping(value="name_sort.do", method = {RequestMethod.GET, RequestMethod.POST})
	private String name_sort(String apart, String order_option, Model model) {
		
		HousePageBean houseBean = new HousePageBean();
		houseBean.setAptname(apart);
		houseBean.setAptname("");

		boolean[] searchType = new boolean[] { true, true, true, true };
		houseBean.setSearchType(searchType);
		
		List<HouseDeal> Donglist = new ArrayList<HouseDeal>(); // 아파트 정보 담고 있는 리스트
		Donglist = houseDealService.searchAll(houseBean);
		String opt = "";
		
		if(order_option.equals("odong")) { // 아파트별 정렬

			for(int i=0;i<Donglist.size()-1;i++) {
				for(int j=i+1;j<Donglist.size();j++) {
					if(Donglist.get(i).getAptName().compareTo(Donglist.get(j).getAptName())>0){
						HouseDeal temp = Donglist.get(i);
						Donglist.set(i, Donglist.get(j));
						Donglist.set(j, temp);
					}
				}
			}

			opt = "아파트";
			model.addAttribute("opt",opt);
			model.addAttribute("apart",apart);
			model.addAttribute("Donglist", houseDealService.searchAll(houseBean));
		}
		else if(order_option.equals("oprice")){ // 가격별 정렬

			for(int i=0;i<Donglist.size()-1;i++) {
				for(int j=i+1;j<Donglist.size();j++) {
					String str1 = Donglist.get(i).getDealAmount();
					String str2 = Donglist.get(j).getDealAmount();
					String num1 = "";
					String num2 = "";
					for(int k=0;k<str1.length();k++) {
						if(Character.isDigit(str1.charAt(k))) {
							num1 += str1.charAt(k);
						}
					}
					for(int k=0;k<str2.length();k++) {
						if(Character.isDigit(str2.charAt(k))) {
							num2 += str2.charAt(k);
						}
					}
					int a = Integer.parseInt(num1);
					int b = Integer.parseInt(num2);

					if(a>b) {
						HouseDeal temp = Donglist.get(i);
						Donglist.set(i, Donglist.get(j));
						Donglist.set(j, temp);
					}
				}
			}

			opt = "아파트";
			model.addAttribute("opt",opt);
			model.addAttribute("apart",apart);
			model.addAttribute("Donglist", houseDealService.searchAll(houseBean));
		}
		return "/apart/name";
	}
	
	@GetMapping("/mainList.do")
	private String mainList(String apart, String order_option, Model model) {
	      HousePageBean houseBean = new HousePageBean();
	      boolean[] searchType = new boolean[] { true, true, true, true };
	      houseBean.setSearchType(searchType);

	      model.addAttribute("list", houseDealService.searchAll(houseBean));
	      return "/apart/mainList";
	}
	
	@GetMapping("/image.do")
	private String image() {
	      return "/apart/image";
	}
	
}