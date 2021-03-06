package egovframework.hairhair.hairvalley.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.hairhair.hairvalley.service.HairValleyBidContractVO;
import egovframework.hairhair.hairvalley.service.HairValleyBidInsertVO;
import egovframework.hairhair.hairvalley.service.HairValleyBidOfferVO;
import egovframework.hairhair.hairvalley.service.HairValleyBidService;
import egovframework.hairhair.hairvalley.service.HairValleyBidVO;
import egovframework.hairhair.hairvalley.service.HairValleyEmailVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;

@Service("hairvalleyBidService")
public class HairValleyBidServiceImpl extends EgovAbstractServiceImpl implements HairValleyBidService{

	// TODO mybatis 사용
	@Resource(name = "hairvalleyBidMapper")
	private HairValleyBidMapper hairvalleyBidMapper;

	/** ID Generation */
	@Resource(name = "egovIdGnrService")
	private EgovIdGnrService egovIdGnrService;
	
	@Override
	public List<?> selectBidBoardList(HashMap<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		List<?> hairvalleyBidVO = hairvalleyBidMapper.selectBidBoardList(map); 
		//for(int i=0; i< hairvalleyBidVO.size(); i++){
		//	System.out.println("받아온 아이디 값 : " + ((HairValleyBidVO)hairvalleyBidVO.get(i)).getUser_id());
		//}
		return hairvalleyBidVO;
	}
	@Override
	public List<?> selectBidBoardListSearch(HashMap<String, Object> map)throws Exception {
		
		return hairvalleyBidMapper.selectBidBoardListSearch(map);
	}
	@Override
	public int selectBidBoardListCount() throws Exception {
		// TODO Auto-generated method stub
		return hairvalleyBidMapper.selectBidBoardListCount();
	}
	@Override
	public int selectBidBoardListSearchCount(String search_msg)
			throws Exception {
		// TODO Auto-generated method stub
		return hairvalleyBidMapper.selectBidBoardListSearchCount(search_msg);
	}

	@Override
	public int insertBidBoardData(HairValleyBidInsertVO bidBoardContent) throws Exception {
		// TODO Auto-generated method stub
		return hairvalleyBidMapper.insertBidBoardData(bidBoardContent);
	}
	
	public int insertBidBoardUserFaceImage(String url) throws Exception{
		return hairvalleyBidMapper.insertBidBoardUserFaceImage(url);
	}

	@Override
	public int insertBidBoardUserRefImage(String url) throws Exception {
		return hairvalleyBidMapper.insertBidBoardUserRefImage(url);
	}
	@Override
	public HairValleyBidVO selectBidBoardContent(int text_num) throws Exception{
		return hairvalleyBidMapper.selectBidBoardContent(text_num);
		
	}
	
	public List<?> selectBidBoardContentFaceImages(int text_num) throws Exception{
		return hairvalleyBidMapper.selectBidBoardContentFaceImages(text_num);
		
	}
	
	public List<?> selectBidBoardContentRefImages(int text_num) throws Exception{
		return hairvalleyBidMapper.selectBidBoardContentRefImages(text_num);
		
	}

	@Override
	public int deleteBidBoardContent(int text_num) throws Exception {
		// TODO Auto-generated method stub
		return hairvalleyBidMapper.deleteBidBoardContent(text_num);
	}

	@Override
	public int updateBidBoardContentCount(HairValleyBidVO hairvallybidvo) throws Exception{
		// TODO Auto-generated method stub
		return hairvalleyBidMapper.updateBidBoardContentCount(hairvallybidvo);
	}

	@Override
	public int insertBidOffer(HairValleyBidOfferVO hairvalley_bid_offer_vo) throws Exception {
		// TODO Auto-generated method stub
		return hairvalleyBidMapper.insertBidOffer(hairvalley_bid_offer_vo);
	}

	@Override
	public List<?> selectBidContentOffers(int text_num) throws Exception {
		// TODO Auto-generated method stub
		return hairvalleyBidMapper.selectBidContentOffers(text_num);
	}

	@Override
	public List<?> selectUserBidContentList(HashMap<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return hairvalleyBidMapper.selectUserBidContentList(map);
	}

	@Override
	public int selectUserBidContentCount(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return hairvalleyBidMapper.selectUserBidContentCount(user_id);
	}

	@Override
	public int insertBidContract(HairValleyBidContractVO hairvalley_bid_contract_vo)
			throws Exception {
		// TODO Auto-generated method stub
		return hairvalleyBidMapper.insertBidContract(hairvalley_bid_contract_vo);
	}

	@Override
	public int updateBidContract(HairValleyBidContractVO hairvalley_bid_contract_vo) throws Exception {
		// TODO Auto-generated method stub
		return hairvalleyBidMapper.updateBidContract(hairvalley_bid_contract_vo);
	}

	@Override
	public List<?> selectUserBidCompleteContentList(HashMap<String, Object> map)
			throws Exception {
		// TODO Auto-generated method stub
		return hairvalleyBidMapper.selectUserBidCompleteContentList(map);
	}

	@Override
	public int selectUserBidCompleteContentCount(String user_id)
			throws Exception {
		// TODO Auto-generated method stub
		return hairvalleyBidMapper.selectUserBidCompleteContentCount(user_id);
	}

	@Override
	public List<?> selectBidContentContractOffer(int text_num) throws Exception {
		// TODO Auto-generated method stub
		return hairvalleyBidMapper.selectBidContentContractOffer(text_num);
	}
	@Override
	public HairValleyEmailVO selectEmailInfomation(HairValleyEmailVO vo)
			throws Exception {
		// TODO Auto-generated method stub
		return hairvalleyBidMapper.selectEmailInfomation(vo);
	}
	@Override
	public int selectBidOfferAlready(
			HairValleyBidOfferVO hairvalley_bid_offer_vo) throws Exception {
		// TODO Auto-generated method stub
		return hairvalleyBidMapper.selectBidOfferAlready(hairvalley_bid_offer_vo);
	}
	
	
}
