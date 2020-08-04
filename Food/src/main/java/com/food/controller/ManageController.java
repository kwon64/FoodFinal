package com.food.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.food.domain.BlackListVO;
import com.food.domain.BoardVO;
import com.food.domain.MemberVO;
import com.food.domain.PagingVO;
import com.food.domain.ReservationVO;
import com.food.service.BlackService;
import com.food.service.ManagerService;
import com.food.service.boardService;


@Controller
@RequestMapping("manager")
public class ManageController {
	
	int curCount=0; //리스트에서 현재 검색된 데이터 숫자를 저장할 변수 선언
	int allCount; //리스트에서 모든 데이터의 숫자를 저장한 변수 선언
	
	
	
	@Autowired
	private ManagerService managerService;
	
	@Autowired
	private BlackService blackService;
	
	@Autowired
	private boardService boardService;
	
	@RequestMapping("/{step}.do")
	public String page(@PathVariable String step) {
		return "manager/"+step;
	}
	
	
	//회원리스트 출력
	@RequestMapping("/member-list.do")
	public String memberList(Model model,HttpServletRequest request,String searchClick,PagingVO pvo,@RequestParam(value="nowPage",required=false)String nowPage,@RequestParam(value="cntPerPage",required=false)String cntPerPage,@RequestParam(value="cntHirePage",required=false)String cntHirePage, String searchType, String keyword, MemberVO vo) {
		int total;//페이징 처리할때 데이터의 총 갯수를 저장할 변수
		String search = "";//검색을 했는지 여부를 확인할 변수 선언
		System.out.println("member-list.do 들어옴");

		if(searchType!=null) {
			if(searchType.equals("Id")==true) {
				searchType="m_id";
			}else if(searchType.equals("Tel")==true) {
				searchType="m_tel";
			}else if(searchType.equals("Email")==true) {
				searchType="m_email";
			}else if(searchType.equals("Place")==true) {
				searchType="m_area";
			}
		}
		search = searchType; //검색할때 선택한 검색타입을 받아온다
		allCount =managerService.allCount(); //데이터의 총 갯수
		
		
		if(search==null || search.equals("")) {//검색을 하지 않았을 경우
			
			total=allCount; //total에 데이터의 총 갯수를 저장
			curCount=allCount; //검색을 하지 않았기 때문에 현재 검색한 데이터의 갯수를 저장하는 curCount 변수에 데이터의 총 갯수를 저장
			searchType =null;  //mapper에서 오류를 방지하기위헤 searchType에 null값을 저장
			keyword=null;	   //mapper에서 오류를 방지하기위헤 keyword에 null값을 저장
		}else{//검색을 했을 경우
			
			//검색한 데이터의 갯수를 curCount에 저장
			curCount =managerService.searchCount(searchType,keyword);
			
			//검색버튼을 클릭했을 경우 페이지를 1페이지부터 보여준다
			if(searchClick.equals("Y")==true) {
				nowPage="1";
			}
			
			//총 갯수에 현재 검색한 데이터의 갯수를 저장
			total=curCount;
		}
		
		//페이지 처음 들어갈때 nowPage와 cntPerPage가 없을 경우
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		//nowPage만 null일 경우
		} else if (nowPage == null) {
			nowPage = "1";
		//cntPerPage만 null일 경우
		} else if (cntPerPage == null) { 
			cntPerPage = "5";
		}

		//PagingVO생성자 함수로 paging 처리 계산하여 pvo에 객체 생성
		pvo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));

		//모델에 "paing" pvo 추가
		model.addAttribute("paging", pvo);
		
		//모델에 "memList" List 추가 , db에서 조건에 해당하는 상품 목록을 가지고 온다
	


		
		
		model.addAttribute("memList",managerService.selectBoard(pvo,searchType,keyword));
		
		//모델에 "searchType" 검색타입 추가
		model.addAttribute("searchType", searchType);
		//모델에 "keyword" 검색키워드 추가
		model.addAttribute("keyword", keyword);
		
	
		
		
		return "manager/member-list";
	}
	
	//블랙리스트 출력
		@RequestMapping("/black-list.do")
		public String blackList(Model model,HttpServletRequest request,String searchClick,PagingVO pvo,@RequestParam(value="nowPage",required=false)String nowPage,@RequestParam(value="cntPerPage",required=false)String cntPerPage,@RequestParam(value="cntHirePage",required=false)String cntHirePage, String searchType, String keyword, BlackListVO vo) {
			int total;//페이징 처리할때 데이터의 총 갯수를 저장할 변수
			String search = "";//검색을 했는지 여부를 확인할 변수 선언

			if(searchType!=null) {
				if(searchType.equals("Id")==true) {
					searchType="b_id";
				}else if(searchType.equals("State")==true) {
					searchType="s_state";
				}
			}
			search = searchType; //검색할때 선택한 검색타입을 받아온다
			allCount =blackService.allCount(); //데이터의 총 갯수
			
			
			if(search==null || search.equals("")) {//검색을 하지 않았을 경우
				
				total=allCount; //total에 데이터의 총 갯수를 저장
				curCount=allCount; //검색을 하지 않았기 때문에 현재 검색한 데이터의 갯수를 저장하는 curCount 변수에 데이터의 총 갯수를 저장
				searchType =null;  //mapper에서 오류를 방지하기위헤 searchType에 null값을 저장
				keyword=null;	   //mapper에서 오류를 방지하기위헤 keyword에 null값을 저장
			}else{//검색을 했을 경우
				
				//검색한 데이터의 갯수를 curCount에 저장
				curCount =blackService.searchCount(searchType,keyword);
				
				//검색버튼을 클릭했을 경우 페이지를 1페이지부터 보여준다
				if(searchClick.equals("Y")==true) {
					nowPage="1";
				}
				
				//총 갯수에 현재 검색한 데이터의 갯수를 저장
				total=curCount;
			}
			
			//페이지 처음 들어갈때 nowPage와 cntPerPage가 없을 경우
			if (nowPage == null && cntPerPage == null) {
				nowPage = "1";
				cntPerPage = "5";
			//nowPage만 null일 경우
			} else if (nowPage == null) {
				nowPage = "1";
			//cntPerPage만 null일 경우
			} else if (cntPerPage == null) { 
				cntPerPage = "5";
			}

			//PagingVO생성자 함수로 paging 처리 계산하여 pvo에 객체 생성
			pvo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));

			//모델에 "paing" pvo 추가
			model.addAttribute("paging", pvo);
			System.out.println("CntPerPage:"+pvo.getCntPerPage());
			System.out.println("EndPage:"+pvo.getEndPage());
			System.out.println("LastPage:"+pvo.getLastPage());
			System.out.println("NowPage:"+pvo.getNowPage());
			System.out.println("StartPage:"+pvo.getStartPage());
			//모델에 "memList" List 추가 , db에서 조건에 해당하는 상품 목록을 가지고 온다
		
		
			
			model.addAttribute("blackList", blackService.selectBoard(pvo,searchType,keyword));
			
			//모델에 "searchType" 검색타입 추가
			model.addAttribute("searchType", searchType);
			//모델에 "keyword" 검색키워드 추가
			model.addAttribute("keyword", keyword);
			
			
		
			
			
			return "manager/black-list";
		}
	
	//회원리스트에서 회원 삭제
		@ResponseBody
		@RequestMapping(value="/Delete.do")
		public String listDelete(@RequestParam(value="input_check[]",required=false)List<String> chArr ,MemberVO vo) {
			int result=0;//삭제했을때 반환한 값을 저장할 변수
			if(chArr!=null) {
				for(String i : chArr) { // 요청받은 리스트만큼 for문을 반복
					vo.setM_id(i); //chArr 리스트 안에 있던 Id 값들을 db에 넘겨줄 vo객체에 저장한다
					result=managerService.memberDelete(vo); //해당하는 Id값이 있을 경우 삭제해준다
					
				}
			}
			else
				result=managerService.memberDelete(vo);
			
			System.out.println("result: "+result);
			if(result==1) {//삭제 성공
			return "listSuccess.do"; 
			}else		   //삭제 실패
				return "listFail";
		}
		
		//블랙리스트에서 회원 삭제
		@ResponseBody
		@RequestMapping(value="/blackDelete.do")
		public String BlacklistDelete(@RequestParam(value="input_check[]",required=false)List<String> chArr ,BlackListVO vo) {
			int result=0;//삭제했을때 반환한 값을 저장할 변수

			if(chArr!=null) {
				for(String i : chArr) { // 요청받은 리스트만큼 for문을 반복
					System.out.println("i:"+i);
					vo.setB_num(Integer.parseInt(i)); //chArr 리스트 안에 있던 Id 값들을 db에 넘겨줄 vo객체에 저장한다
							result=blackService.blackDelete(vo); //해당하는 Id값이 있을 경우 삭제해준다
			
				}

			}
			else
				result=blackService.blackDelete(vo);
					
				System.out.println("result: "+result);
				if(result>0) {//삭제 성공
				return "listSuccess.do"; 
				}else		   //삭제 실패
						return "listFail";
		}
		
		@ResponseBody
		@RequestMapping("/blackAdd.do")
		public String BlackListAdd(BlackListVO vo,String select) {
			int term =0;
			if(select.equals("3 Day")==true) {
				term = 3;
			}else if(select.equals("7 Day")==true) {
				term = 7;
			}else if(select.equals("30 Day")==true) {
				term = 30;
			}else if(select.equals("1000 Year")==true) {
				term = 1000*365;
			}

			int result = blackService.insertBlack(vo,term);
			
			System.out.println("result: "+Integer.toString(result));
			return "ok";
		}
		
		//수정페이지 창 요청과 동시에 수정페이지에 출력할 회원정보를 갖고옴
		@RequestMapping("/modifyBlack.do")
		public String BlackModify(BlackListVO vo,Model model) {
			model.addAttribute("blackInfo",blackService.listSearch(vo));
			
			
			return "manager/modifyBlack";
			
		}
		
		//수정페이지에서 수정 요청
		@RequestMapping("/blackModify.do")
		public String BlackModify2(BlackListVO vo) {
			int result = blackService.blackUpdate(vo);
			if(result==1) {
				return "manager/listSucces";
			}
			else
				return "manager/listFail";
			
		}
		
		//메인페이지 이동하는 Home 버튼
		@RequestMapping("/Home.do")
		public String goHome() {
			return "redirect:/main.do";
		}
		
		//신고게시판
		@RequestMapping("/declarationBoard.do")
		public String declarationBoard(Model model,HttpServletRequest request,String searchClick,PagingVO pvo,@RequestParam(value="nowPage",required=false)String nowPage,@RequestParam(value="cntPerPage",required=false)String cntPerPage,@RequestParam(value="cntHirePage",required=false)String cntHirePage, String searchType, String keyword, BoardVO vo) {
			
			int total;//페이징 처리할때 데이터의 총 갯수를 저장할 변수
			String search = "";//검색을 했는지 여부를 확인할 변수 선언
			String boardType="";
			vo.setBoardType(1);
			vo.setSeq("Declaration_SEQ");
			if(searchType!=null) {
				if(searchType.equals("작성자")==true) {
					searchType="userId";
				}else if(searchType.equals("글번호")==true) {
					searchType="b_no";
				}else if(searchType.equals("게시판")==true) {
					searchType="boardType";
				}
			}
			search = searchType; //검색할때 선택한 검색타입을 받아온다
			allCount =boardService.countBoard(vo); //데이터의 총 갯수
			
			
			if(search==null || search.equals("")) {//검색을 하지 않았을 경우
				
				total=allCount; //total에 데이터의 총 갯수를 저장
				curCount=allCount; //검색을 하지 않았기 때문에 현재 검색한 데이터의 갯수를 저장하는 curCount 변수에 데이터의 총 갯수를 저장
				searchType =null;  //mapper에서 오류를 방지하기위헤 searchType에 null값을 저장
				keyword=null;	   //mapper에서 오류를 방지하기위헤 keyword에 null값을 저장
			}else{//검색을 했을 경우
				
				//검색한 데이터의 갯수를 curCount에 저장
				curCount =boardService.searchCount(searchType,keyword);
				
				//검색버튼을 클릭했을 경우 페이지를 1페이지부터 보여준다
				if(searchClick.equals("Y")==true) {
					nowPage="1";
				}
				
				//총 갯수에 현재 검색한 데이터의 갯수를 저장
				total=curCount;
			}
			
			//페이지 처음 들어갈때 nowPage와 cntPerPage가 없을 경우
			if (nowPage == null && cntPerPage == null) {
				nowPage = "1";
				cntPerPage = "5";
			//nowPage만 null일 경우
			} else if (nowPage == null) {
				nowPage = "1";
			//cntPerPage만 null일 경우
			} else if (cntPerPage == null) { 
				cntPerPage = "5";
			}

			//PagingVO생성자 함수로 paging 처리 계산하여 pvo에 객체 생성
			pvo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));

			//모델에 "paing" pvo 추가
			model.addAttribute("paging", pvo);
//			System.out.println("CntPerPage:"+pvo.getCntPerPage());
//			System.out.println("EndPage:"+pvo.getEndPage());
//			System.out.println("LastPage:"+pvo.getLastPage());
//			System.out.println("NowPage:"+pvo.getNowPage());
//			System.out.println("StartPage:"+pvo.getStartPage());
			//모델에 "memList" List 추가 , db에서 조건에 해당하는 상품 목록을 가지고 온다
		
		
			List<BoardVO> a = boardService.selectBoard(vo,pvo,searchType,keyword);

	
			
			for(int i=0;i<a.size();i++) { 
				if(a.get(i).getBoardType()==1) {
					boardType="신고";
				}else if(a.get(i).getBoardType()==2) {
					boardType="리뷰";
				}else if(a.get(i).getBoardType()==3) {
					boardType="밥친구";
				}else if(a.get(i).getBoardType()==4) {
					boardType="Q&A";
				}else if(a.get(i).getBoardType()==5) {
					boardType="예약";
				}
			}
			
	
			
			
			model.addAttribute("declarationList", a);
			
			//모델에 "searchType" 검색타입 추가
			model.addAttribute("searchType", searchType);
			//모델에 "keyword" 검색키워드 추가
			model.addAttribute("keyword", keyword);
			//모델에 "boardType" 게시판타입 추가
			model.addAttribute("boardType", boardType);

			return "manager/declarationBoard";
		}
	
	@ResponseBody
	@RequestMapping("/insertDecla.do")
	public void insertDecla(BoardVO vo) {

		vo.setBoardType(1);
		vo.setSeq("DECLARATION_SEQ");
		
		boardService.insertBoard(vo);

	}
	
	@RequestMapping("/deleteDecla.do")
	public String deleteDecla(BoardVO vo) {
		vo.setBoardType(1);
		
		
		int result = boardService.deleteBoard(vo);
		System.out.println(result);
		if(result==1) {
			return "redirect:/manager/declarationBoard.do";
		}
		else {
			return "listFail";
		}
		
	}
	
	@RequestMapping("/declaView.do")
	public String declaView(BoardVO vo,Model model) {
		
		
		model.addAttribute("declaView",boardService.boardView(vo));
		return "manager/declaView";
	}
	@RequestMapping("/dashBoard.do")
	public String dash(Model model) {
		int todayHire = managerService.todayHire();
		int yesterdayHire = managerService.yesterdayHire();
		int todayReserv = managerService.todayReserv();
		int yesterdayReserv = managerService.yesterdayReserv();
		int todayBoard = managerService.todayBoard();
		int yesterdayBoard = managerService.yesterdayBoard();
		int todayBlack = managerService.todayBlack();
		int yesterdayBlack = managerService.yesterdayBlack();
		int thisMonth = managerService.thisMonth();
		int totalMember= managerService.totalMember();
		int todayReview = managerService.todayReview();
	
		
		model.addAttribute("todayHire",todayHire);
		model.addAttribute("newMember", per(todayHire,yesterdayHire));
		
		model.addAttribute("todayReserv",todayReserv);
		model.addAttribute("newReserv", per(todayReserv,yesterdayReserv));
		
		model.addAttribute("todayBoard",todayBoard);
		model.addAttribute("newBoard", per(todayBoard,yesterdayBoard));
		
		model.addAttribute("todayBlack",todayBlack);
		model.addAttribute("newBlack", per(todayBlack,yesterdayBlack));
		
		model.addAttribute("thisMonth",thisMonth);
		model.addAttribute("totalMember",totalMember);
		model.addAttribute("todayReview",todayReview);
		return "manager/dashBoard";
	}
	
	public int per(int today, int yesterday) {
		int percent=0;
		if(yesterday==0) {
			return yesterday;
		}
		else if(today==0) {
			return today;
		}else {
		percent = (int)(((double)today / (double)yesterday) *100-100);
		}
		return percent;
	}
	
	@RequestMapping("dayReservChart.do")
	public String barchart(Model model) {
		                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
		HashMap memberCount = new HashMap();
		
		memberCount=managerService.membercount();
		 Iterator mapIter = memberCount.keySet().iterator();
		 
	        while(mapIter.hasNext()){
	 
	            String key = (String) mapIter.next();
	            String value = (String) memberCount.get( key );
	 
	            System.out.println(key+" : "+value);
	 
	        }
		
		
		
		return null;
		
	}
	
}
