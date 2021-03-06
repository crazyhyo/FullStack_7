package kr.or.ddit.controller;

import java.sql.SQLException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.josephoconnell.html.HTMLInputFilter;
import com.jsp.command.PageMaker;
import com.jsp.command.SearchCriteria;
import com.jsp.dto.ReplyVO;
import com.jsp.service.ReplyService;

//url : replies
//bno번 게시글의 페이징 처리된 댓글 목록
// /replies/{bno}/{page}		page list : GET방식
// /replies/					regist : POST방식 댓글입력
// /replies/{rno}				modify : PUT, PATCH방식, rno 댓글의 수정
// /replies/{bno}/{rno}/{page}	remove : DELETE 방식, rno 댓글의 삭제
// /replies

@RestController
@RequestMapping("/replies")
public class ReplyController {
	
	@Autowired
	private ReplyService replyService;

	@RequestMapping(value="/{bno}/{page}", method=RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> replyList(@PathVariable("bno") int bno,
														 @PathVariable("page") int page)
															throws Exception{
		
		// RestController 어노테이션을 적용했기 때문에 response.out으로 직접 나간다, 즉,
		// sitemesh issue가 일어나지 않는다. 
		// 필터를 통과하는 경우는 httpParser가 헤더에 http라는 것을 발견했을 때이다. 
		ResponseEntity<Map<String, Object>> entity = null;
		
		SearchCriteria cri = new SearchCriteria();
		cri.setPage(page);
		try {
			Map<String, Object> dataMap = replyService.getReplyList(bno, cri);
			entity = new ResponseEntity<Map<String, Object>>(dataMap, HttpStatus.OK);
		} catch (SQLException e) {
			e.printStackTrace();
			entity = new ResponseEntity<Map<String, Object>>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		return entity;
	}
	
	@RequestMapping(value="", method=RequestMethod.POST)
	public ResponseEntity<String> register(@RequestBody ReplyVO reply) throws Exception{
		ResponseEntity<String> entity = null;
		
		reply.setReplytext(HTMLInputFilter.htmlSpecialChars(reply.getReplytext()));
		
		try {
			replyService.registReply(reply);
			
			SearchCriteria cri = new SearchCriteria();
			
			Map<String, Object> dataMap = replyService.getReplyList(reply.getBno(), cri);
			PageMaker pageMaker = (PageMaker) dataMap.get("pageMaker");
			int realEndPage = pageMaker.getRealEndPage();
			
			entity = new ResponseEntity<String>(realEndPage + "", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		return entity;
	}
	
	@RequestMapping(value="/{rno}", method = { RequestMethod.PATCH, RequestMethod.PUT})
	public ResponseEntity<String> modify(@PathVariable("rno") int rno,
										 @RequestBody ReplyVO reply) throws Exception{
		ResponseEntity<String> entity = null;
		
		reply.setRno(rno);
		try {
			replyService.modifyReply(reply);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		return entity;
	}
	
	@RequestMapping(value="/{bno}/{rno}/{page}", method=RequestMethod.DELETE)
	public ResponseEntity<String> remove(@PathVariable("bno") int bno,
										 @PathVariable("rno") int rno,
										 @PathVariable("page") int page) throws Exception{
		ResponseEntity<String> entity = null;
		
		try {
			replyService.removeReply(rno);
			
			SearchCriteria cri = new SearchCriteria();
			Map<String, Object> dataMap = replyService.getReplyList(bno, cri);
			PageMaker pageMaker = (PageMaker)dataMap.get("pageMaker");
			int realEndPage = pageMaker.getRealEndPage();
			if(page > realEndPage) {
				page = realEndPage;
			}
			entity = new ResponseEntity<String>(page+"", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		return entity;
	}
}
