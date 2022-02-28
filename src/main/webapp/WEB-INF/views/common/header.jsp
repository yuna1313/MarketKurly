<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" />
<script src="https://cdn.jsdelivr.net/npm/vue@2.5.2/dist/vue.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="<c:url value="/resources/js/main.js" />"></script>
<body class="main-index" oncontextmenu="return false" ondragstart="return false" onselectstart="return !disableSelection" style="">
	<div class="bnr_header" id="top-message">
		<div id="userMenu">
			<ul class="list_menu">
				<li class="menu none_sub menu_join"><a
					href="/shop/member/join.php" class="link_menu">회원가입</a></li>
				<li class="menu none_sub menu_login"><a
					href="/shop/member/login.php" class="link_menu">로그인</a> <!----></li>
				<!---->
				<li class="menu lst"><a href="/shop/board/list.php?id=notice" class="link_menu">고객센터</a>
					<ul class="sub">
						<li><a href="#none" onclick="KurlyTrackerLink('/shop/board/list.php?id=notice', 'select_my_kurly_notice_list')">공지사항</a></li>
						<li><a href="#none" onclick="KurlyTrackerLink('/shop/service/faq.php', 'select_my_kurly_frequently_qna')">자주하는 질문</a></li>
						<li><a href="#none"onclick="KurlyTrackerLink('/shop/mypage/mypage_qna.php', 'select_my_kurly_personal_inquiry_history')">1:1 문의</a></li>
						<li><a href="#none" onclick="KurlyTrackerLink('/shop/main/html.php?htmid=mypage/bulk_order.htm', 'select_my_kurly_bulk_order')">대량주문 문의</a></li>
						<li><a href="#none" onclick="KurlyTrackerLink('/shop/mypage/offer.php', 'select_my_kurly_product_offer')">상품 제안</a></li>
						<li><a href="#none" onclick="KurlyTrackerLink('/shop/mypage/echo_packing.php', 'select_my_kurly_eco_packing_feedback')">에코포장 피드백</a></li>
					</ul>
				</li>
			</ul>
		</div>

		<div id="headerLogo" class="layout-wrapper">
			<h1 class="logo">
				<a href="/" class="link_main"> <span id="gnbLogoContainer"></span>
					<img src="https://res.kurly.com/images/marketkurly/logo/logo_x2.png" alt="마켓컬리 로고" style="display: block;">
				</a>
			</h1>
		</div>
		<div id="gnb">
			<div class="fixed_container">
				<h2 class="screen_out">메뉴</h2>
				<div id="gnbMenu" class="gnb_kurly">
					<div class="inner_gnbkurly">
						<div class="gnb_main">
							<ul class="gnb">
								<li class="menu1">
									<a href="#none">
										<span class="ico"></span>
										<span class="txt">전체 카테고리</span>
									</a>
								</li>
								<li class="menu2">
									<a href="/shop/goods/goods_list.php?category=038" class="link new ">
										<span class="txt">신상품</span>
									</a>
								</li>
								<li class="menu3">
									<a href="/shop/goods/goods_list.php?category=029" class="link best ">
										<span class="txt">베스트</span>
									</a>
								</li>
								<li class="menu4">
									<a href="/shop/goods/goods_list.php?list=sale" class="link bargain ">
										<span class="txt">알뜰쇼핑</span>
									</a>
								</li>
								<li class="lst">
									<a href="/shop/goods/event.php?&amp;"class="link event ">
										<span class="txt">특가/혜택</span>
									</a>
								</li>
							</ul>
							<div id="side_search" class="gnb_search">
								<form action="/shop/goods/goods_search.php?&amp;"
									onsubmit="return searchTracking(this)">
									<input type="hidden" name="searched" value="Y"> <input
										type="hidden" name="log" value="1"> <input
										type="hidden" name="skey" value="all"> <input
										type="hidden" name="hid_pr_text" value=""> <input
										type="hidden" name="hid_link_url" value=""> <input
										type="hidden" id="edit" name="edit" value=""> <input
										name="sword" type="text" id="sword" value=""
										required="required" label="검색어" placeholder="검색어를 입력해주세요."
										class="inp_search"> <input type="image"
										src="https://res.kurly.com/pc/service/common/1908/ico_search_x2.png"
										class="btn_search">
									<div class="init">
										<button type="button" id="searchInit" class="btn_delete">검색어
											삭제하기</button>
									</div>
								</form>
							</div>
							<div class="cart_count">
								<div class="inner_cartcount">
									<a href="/shop/goods/goods_cart.php" class="btn_cart"> <span
										class="screen_out">장바구니</span> <span id="cart_item_count"
										class="num realtime_cartcount" style="display: none;"></span>
									</a>
								</div>
								<div id="addMsgCart" class="msg_cart">
									<span class="point"></span>
									<div class="inner_msgcart">
										<img src="https://res.kurly.com/images/common/bg_1_1.gif"
											alt="" class="thumb">
										<p id="msgReaddedItem" class="desc">
											<span class="tit"></span> <span class="txt"> 장바구니에 상품을
												담았습니다. <span class="repeat">이미 담으신 상품이 있어 추가되었습니다.</span>
											</span>
										</p>
									</div>
								</div>
							</div>
							<div class="location_set">
								<button type="button" class="btn_location on">배송지 설정하기</button>
								<div class="layer_location">
									<div class="no_address">
										<span class="emph">배송지를 등록</span>하고<br> 구매 가능한 상품을 확인하세요!
										<div class="group_button double">
											<button type="button" class="btn default login">로그인</button>
											<button type="button" class="btn active searchAddress">
												<span class="ico"></span>주소검색
											</button>
										</div>
									</div>
								</div>
							</div>
							<div class="gnbPick">
								<a href="/shop/mypage/mypage_pick.php" class="btn_pick">찜한 상품 보기</a>
							</div>
						</div>
						<div class="gnb_sub">
						    <div class="inner_sub">
						        <ul data-default="219" data-min="219" data-max="731" class="gnb_menu" style="height: auto;">
						            <li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_veggies_inactive_pc@2x.1586324570.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_veggies_active_pc@2x.1586324570.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">채소</span>
						                        <!----></span></a>
						                <ul class="sub_menu">
						                    <li><a class="sub"><span class="name">친환경</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">고구마·감자·당근</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">시금치·쌈채소·나물</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">브로콜리·파프리카·양배추</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">양파·대파·마늘·배추</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">오이·호박·고추</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">냉동·이색·간편채소</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">콩나물·버섯</span></a>
						                        <!---->
						                    </li>
						                </ul>
						            </li>
						            <li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_fruit_inactive_pc@2x.1568684150.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_fruit_active_pc@2x.1568684150.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">과일·견과·쌀</span>
						                        <!----></span></a>
						                <ul class="sub_menu">
						                    <li><a class="sub"><span class="name">친환경</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">제철과일</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">국산과일</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">수입과일</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">간편과일</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">냉동·건과일</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">견과류</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">쌀·잡곡</span></a>
						                        <!---->
						                    </li>
						                </ul>
						            </li>
						            <li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_seafood_inactive_pc@2x.1568684352.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_seafood_active_pc@2x.1568684353.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">수산·해산·건어물</span>
						                        <!----></span></a>
						                <ul class="sub_menu">
						                    <li><a class="sub"><span class="name">제철수산</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">생선류</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">굴비·반건류</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">오징어·낙지·문어</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">새우·게·랍스터</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">해산물·조개류</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">수산가공품</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">김·미역·해조류</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">건어물·다시팩</span></a>
						                        <!---->
						                    </li>
						                </ul>
						            </li>
						            <li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_meat_inactive_pc@2x.1568684452.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_meat_active_pc@2x.1568684452.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">정육·계란</span>
						                        <!----></span></a>
						                <ul class="sub_menu">
						                    <li><a class="sub"><span class="name">국내산 소고기</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">수입산 소고기</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">돼지고기</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">계란류</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">닭·오리고기</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">양념육·돈까스</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">양고기</span></a>
						                        <!---->
						                    </li>
						                </ul>
						            </li>
						            <li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_side_inactive_pc@2x.1572243579.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_side_active_pc@2x.1572243579.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">국·반찬·메인요리</span>
						                        <!----></span></a>
						                <ul class="sub_menu">
						                    <li><a class="sub"><span class="name">국·탕·찌개</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">밀키트·메인요리</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">밑반찬</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">김치·젓갈·장류</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">두부·어묵·부침개</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">베이컨·햄·통조림</span></a>
						                        <!---->
						                    </li>
						                </ul>
						            </li>
						            <li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_convenient_inactive_pc@2x.1572243542.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_convenient_active_pc@2x.1572243543.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">샐러드·간편식</span>
						                        <!----></span></a>
						                <ul class="sub_menu">
						                    <li><a class="sub"><span class="name">샐러드·닭가슴살</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">도시락·밥류</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">파스타·면류</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">떡볶이·튀김·순대</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">피자·핫도그·만두</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">폭립·떡갈비·안주</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">죽·스프·카레</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">선식·시리얼</span></a>
						                        <!---->
						                    </li>
						                </ul>
						            </li>
						            <li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_sauce_inactive_pc@2x.1572243594.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_sauce_active_pc@2x.1572243594.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">면·양념·오일</span>
						                        <!----></span></a>
						                <ul class="sub_menu">
						                    <li><a class="sub"><span class="name">파스타·면류</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">식초·소스·드레싱</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">양념·액젓·장류</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">식용유·참기름·오일</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">소금·설탕·향신료</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">밀가루·가루·믹스</span></a>
						                        <!---->
						                    </li>
						                </ul>
						            </li>
						            <li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_snacks_inactive_pc@2x.1572243615.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_snacks_active_pc@2x.1572243616.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">생수·음료·우유·커피</span>
						                        <!----></span></a>
						                <ul class="sub_menu">
						                    <li><a class="sub"><span class="name">생수·탄산수</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">음료·주스</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">우유·두유·요거트</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">커피</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">차</span></a>
						                        <!---->
						                    </li>
						                </ul>
						            </li>
						            <li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_cookie_inactive_pc.1610074008.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_cookie_active_pc.1610074008.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">간식·과자·떡</span>
						                        <!----></span></a>
						                <ul class="sub_menu">
						                    <li><a class="sub"><span class="name">과자·스낵·쿠키</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">초콜릿·젤리·캔디</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">떡·한과</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">아이스크림</span></a>
						                        <!---->
						                    </li>
						                </ul>
						            </li>
						            <li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_deli_inactive_pc@2x.1568687352.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_deli_active_pc@2x.1568687352.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">베이커리·치즈·델리</span>
						                        <!----></span></a>
						                <ul class="sub_menu">
						                    <li><a class="sub"><span class="name">식빵·빵류</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">잼·버터·스프레드</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">케이크·파이·디저트</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">치즈</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">델리</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">올리브·피클</span></a>
						                        <!---->
						                    </li>
						                </ul>
						            </li>
						            <li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_health_inactive_pc@2x.1574645922.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_health_active_pc@2x.1574645923.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">건강식품</span>
						                        <!----></span></a>
						                <ul class="sub_menu">
						                    <li><a class="sub"><span class="name">영양제</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">유산균</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">홍삼·인삼·꿀</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">건강즙·건강음료</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">건강분말·건강환</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">다이어트·이너뷰티</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">유아동</span></a>
						                        <!---->
						                    </li>
						                </ul>
						            </li>
						            <li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/category/icon/pc/9bead7b8-2a7e-4a2f-910a-ebe5c8f5f4f0" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/category/icon/pc/ee395c3c-2b71-4304-b730-7b7e09dd62a4" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">전통주</span>
						                        <!----></span></a>
						                <ul class="sub_menu">
						                    <li><a class="sub"><span class="name">막걸리·약주</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">증류주·과실주</span></a>
						                        <!---->
						                    </li>
						                </ul>
						            </li>
						            <li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_living_inactive_pc@2x.1588814089.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_living_active_pc@2x.1588814090.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">생활용품·리빙·캠핑</span>
						                        <!----></span></a>
						                <ul class="sub_menu">
						                    <li><a class="sub"><span class="name">휴지·티슈</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">여성·위생용품</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">세제·청소용품</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">화훼·인테리어소품</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">의약외품·마스크</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">생활잡화·문구</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">캠핑용품</span></a>
						                        <!---->
						                    </li>
						                </ul>
						            </li>
						            <li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_beauty_inactive_pc.1618488987.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_beauty_active_pc.1618488987.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">스킨케어·메이크업</span>
						                        <!----></span></a>
						                <ul class="sub_menu">
						                    <li><a class="sub"><span class="name">스킨·미스트·패드</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">에센스·앰플·로션</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">크림·오일</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">클렌징</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">마스크팩</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">선케어</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">메이크업</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">맨즈케어</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">뷰티소품·기기</span></a>
						                        <!---->
						                    </li>
						                </ul>
						            </li>
						            <li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_body_inactive_pc.1618528534.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_body_active_pc.1618528534.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">헤어·바디·구강</span>
						                        <!----></span></a>
						                <ul class="sub_menu">
						                    <li><a class="sub"><span class="name">구강·면도</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">샴푸·컨디셔너</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">트리트먼트·팩</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">헤어에센스·염모</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">바디워시·스크럽</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">바디로션·크림</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">핸드·립·데오</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">향수·디퓨저</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">헤어·바디소품</span></a>
						                        <!---->
						                    </li>
						                </ul>
						            </li>
						            <li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_kitchen_inactive_pc@2x.1574646457.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_kitchen_active_pc@2x.1574646458.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">주방용품</span>
						                        <!----></span></a>
						                <ul class="sub_menu">
						                    <li><a class="sub"><span class="name">주방소모품·잡화</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">주방·조리도구</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">냄비·팬·솥</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">보관용기·텀블러</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">식기·테이블웨어</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">컵·잔·커피도구</span></a>
						                        <!---->
						                    </li>
						                </ul>
						            </li>
						            <li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_electronic__inactive_pc@2x.1574417978.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_electronic__active_pc@2x.1574417978.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">가전제품</span>
						                        <!----></span></a>
						                <ul class="sub_menu">
						                    <li><a class="sub"><span class="name">주방가전</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">생활가전</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">계절가전</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">디지털·PC</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">대형·설치가전</span></a>
						                        <!---->
						                    </li>
						                </ul>
						            </li>
						            <li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_pet_inactive_pc@2x.1587442293.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_pet_active_pc@2x.1587442294.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">반려동물</span>
						                        <!----></span></a>
						                <ul class="sub_menu">
						                    <li><a class="sub"><span class="name">강아지 간식</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">강아지 주식</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">고양이 간식</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">고양이 주식</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">반려동물 용품</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">배변·위생</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">소용량·샘플</span></a>
						                        <!---->
						                    </li>
						                </ul>
						            </li>
						            <li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_kids_inactive_pc@2x.1568687537.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_kids_active_pc@2x.1568687537.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">베이비·키즈·완구</span>
						                        <!----></span></a>
						                <ul class="sub_menu">
						                    <li><a class="sub"><span class="name">분유·간편 이유식</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">이유식 재료</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">간식·음식·음료</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">건강식품</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">이유·수유용품</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">기저귀·물티슈</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">세제·위생용품</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">스킨·구강케어</span></a>
						                        <!---->
						                    </li>
						                    <li><a class="sub"><span class="name">완구·잡화류</span></a>
						                        <!---->
						                    </li>
						                </ul>
						            </li>
						            <li><a class="menu"><span class="ico"><img src="https://res.kurly.com/pc/service/common/1908/ico_recommend_v2.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://res.kurly.com/pc/service/common/1908/ico_recommend_on_v2.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">컬리의 추천</span>
						                        <!----></span></a>
						                <ul class="sub_menu recommend">
						                    <li>
						                        <!----> <a class="sub"><span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/category/image/4b0d7a2a-43e0-41fb-a6c8-b79f2d27b920&quot;);"><img src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png" alt=""></span> <span class="name">여행·문화</span></a></li>
						                    <li>
						                        <!----> <a class="sub"><span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/category/image/291b013e-cad1-42f3-81db-d9ddb3c5db03&quot;);"><img src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png" alt=""></span> <span class="name">홈캉스</span></a></li>
						                    <li>
						                        <!----> <a class="sub"><span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_diet.1585551225.jpg&quot;);"><img src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png" alt=""></span> <span class="name">식단관리</span></a></li>
						                    <li>
						                        <!----> <a class="sub"><span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_breakfast.1585549149.jpg&quot;);"><img src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png" alt=""></span> <span class="name">간편한 아침식사</span></a></li>
						                    <li>
						                        <!----> <a class="sub"><span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_best_210402.1617341016.png&quot;);"><img src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png" alt=""></span> <span class="name">재구매 BEST</span></a></li>
						                    <li>
						                        <!----> <a class="sub"><span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_3000_210303.1614667552.png&quot;);"><img src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png" alt=""></span> <span class="name">3천원의 행복</span></a></li>
						                    <li>
						                        <!----> <a class="sub"><span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_kp_210108_4.1610088265.jpg&quot;);"><img src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png" alt=""></span> <span class="name">컬리마트</span></a></li>
						                    <li>
						                        <!----> <a class="sub"><span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/category/image/37194cb5-e9c1-4492-ac5a-385a1ff2b624&quot;);"><img src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png" alt=""></span> <span class="name">대용량 상품</span></a></li>
						                    <li>
						                        <!----> <a class="sub"><span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_camping_210405.1617341339.png&quot;);"><img src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png" alt=""></span> <span class="name">캠핑</span></a></li>
						                    <li>
						                        <!----> <a class="sub"><span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_single.1594026881.jpg&quot;);"><img src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png" alt=""></span> <span class="name">1인 가구</span></a></li>
						                    <li>
						                        <!----> <a class="sub"><span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_vegan_210303.1614667589.png&quot;);"><img src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png" alt=""></span> <span class="name">비건</span></a></li>
						                    <li>
						                        <!----> <a class="sub"><span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_offline_210303.1614666430.png&quot;);"><img src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png" alt=""></span> <span class="name">오프라인 맛집</span></a></li>
						                    <li>
						                        <!----> <a class="sub"><span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_kurly_s_210303.1614667608.png&quot;);"><img src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png" alt=""></span> <span class="name">컬리가 만든 상품</span></a></li>
						                    <li>
						                        <!----> <a class="sub"><span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_only_210303.1614667623.png&quot;);"><img src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png" alt=""></span> <span class="name">Kurly Only</span></a></li>
						                    <li>
						                        <!----> <a class="sub"><span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/category/image/f8cf5fe6-4123-4147-981e-d7f889f9e316&quot;);"><img src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png" alt=""></span> <span class="name">KF365</span></a></li>
						                    <li>
						                        <!----> <a class="sub"><span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumb_kp_1PT_201222.1608611417.jpg&quot;);"><img src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png" alt=""></span> <span class="name">1% Table</span></a></li>
						                </ul>
						            </li>
						        </ul>
						    </div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>