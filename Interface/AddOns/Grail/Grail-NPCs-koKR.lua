--
--
--	UTF-8 file
--

if GetLocale() ~= "koKR" then return end
local G = Grail.npc.name
local _, release, _, interface = GetBuildInfo()
release = tonumber(release)
interface = tonumber(interface)

if release >= 0 then
G[0]='자신'
G[1]=ADVENTURE_JOURNAL
G[500022]='사탕 바구니'
G[500032]='노즈도르무'
G[562180]='시초자 코르벤'
G[562295]='옴니아 마법사'
G[562378]='옴니아 사제'
G[563195]='검은경비대 양조사'
G[563196]='검은경비대 전투대장'
G[563197]='검은경비대 충성대원'
G[563622]='우 카오 도적'
G[563623]='우 카오 암살자'
G[563624]='우 카오 매사냥꾼'
G[1000055]='반쯤 파먹힌 시체'
G[1000056]='롤프의 시체'
G[1000061]='낡은 묘비'
G[1000068]='현상 수배 전단'
G[1000256]='현상 수배!'
G[1000259]='반쯤 묻힌 통'
G[1000261]='부서진 상자'
G[1002076]='끓고 있는 가마솥'
G[1002083]='붉은해적단 통신문'
G[1002688]='쐐기돌'
G[1002702]='내부 봉인석'
G[1002713]='현상 수배 전단'
G[1002908]='도장 찍힌 보급상자'
G[1003972]='현상 수배!'
G[1004141]='제어 장치'
G[1020985]='푸석푸석한 흙더미'
G[1020992]='검은 방패'
G[1021042]='테라모어 경비병 휘장'
G[1024776]='유리브의 묘비'
G[1035251]='카니톨의 궤짝'
G[1138492]='미즈라엘의 결정'
G[1142151]='봉인된 통'
G[1161526]='식량 상자'
G[1164957]='동쪽 수정탑'
G[1176392]='스컬지 가마솥'
G[1179485]='부서진 함정'
G[1179517]='셴드랄라의 보물'
G[1179880]='드라키사스의 낙인'
G[1180025]='신비의 동쪽계곡 건초더미'
G[1180056]='신비의 그루터기'
G[1180366]='찌그러진 낚시상자'
G[1180448]='현상 수배: 죽음의 갈고리'
G[1180503]='모래투성이 요리책'
G[1180715]='호랑가시나무 보존기'
G[1180743]='정성스럽게 포장된 선물꾸러미'
G[1180746]='누가 살짝 흔들어 본 선물'
G[1180747]='화려하게 포장된 선물꾸러미'
G[1180748]='들썩거리는 선물상자'
G[1180793]='축제 선물'
G[1180918]='현상 수배: 욕망의 탤리스'
G[1181011]='마법학자 더스크위더의 일지'
G[1181153]='현상 수배 전단: 사악한 켈가쉬'
G[1181758]='흙무더기'
G[1182392]='가라다르 게시판'
G[1182393]='텔라아르 게시판'
G[1182549]='타락한 오크의 계획서'
G[1182947]='피의 고서'
G[1183877]='에테리얼 순간이동기 제어장치'
G[1184300]='강령술 집중 장치'
G[1184825]='라쉬안 마법책'
G[1185126]='수정 감옥'
G[1185165]='군단 통신기'
G[1186887]='커다란 호박등'
G[1187236]='겨울맞이 축제 선물'
G[1187273]='수상한 발굽 자국'
G[1187559]='호드 화톳불'
G[1187564]='얼라이언스 화톳불'
G[1187565]='장로 아트카노크'
G[1187851]='이교도 제단'
G[1188085]='역병에 오염된 곡식'
G[1188261]='닳아해진 일지'
G[1188364]='부서진 게 덫'
G[1188419]='장로 마나로아'
G[1188667]='호박색 씨앗'
G[1189311]='살점달린 고서'
G[1190535]='짐아브와'
G[1190602]='짐토르가'
G[1190657]='짐루크'
G[1190768]='오래된 궤짝'
G[1190917]='버려진 편지'
G[1191760]='발명가의 도서관 조작대'
G[1191761]='모형 조작대'
G[1191766]='드라쿠루의 명령서'
G[1192072]='작살 상자'
G[1192833]='브라이든브래드의 물건 상자'
G[1193195]='고동치는 수정'
G[1194555]='고대 기록관 조작대'
G[1194714]='구역질나는 작업대'
G[1195433]='고대 서판'
G[1195438]='엘룬의 잔'
G[1195445]='고대 소용돌이 마법석'
G[1195497]='엘룬의 화로'
G[1195517]='엘룬의 시녀'
G[1195600]='연기나는 돌'
G[1195676]='비밀 실험실 내선 통화기'
G[1196393]='부서진 유물'
G[1201742]='룬가열로'
G[1202335]='수습생 비셸'
G[1202407]='모래싸움꾼의 상자'
G[1202759]='가라앉은 호드 궤짝'
G[1202859]='반쯤 묻힌 사물함'
G[1202871]='가라앉은 상자'
G[1202916]='모래 더미'
G[1203128]='깨진 병'
G[1203186]='접근 금지!'
G[1203301]='나가 삼지창'
G[1203395]='얼라이언스 특전대 장비'
G[1204450]='선장 스틸워터의 해도'
G[1204578]='두배주 통'
G[1205143]='버려진 간이화장실'
G[1205258]='부서진 무기 상자'
G[1205266]='정교한 원반'
G[1206109]='대족장의 명령 게시판'
G[1206335]='석판'
G[1207125]='남은 보급품 상자'
G[1207303]='모험 게시판'
G[1208184]='대지 고리회 화톳불'
G[1208549]='부두 더미'
G[1229314]='고블린 정신 지배 장치'
G[100001307]='황금 징수 일정표'
G[100001357]='샌더스 선장의 보물 지도'
G[100003082]='다르골의 해골'
G[100004854]='악마의 흔적이 남은 망토'
G[100005179]='이끼로 덮인 심장'
G[100008244]='완전무결한 드레니시스트 구슬'
G[100008623]='OOX-17/TN 조난 탐지기'
G[100008704]='OOX-09/HL 조난 탐지기'
G[100008705]='OOX-22/FE 조난 탐지기'
G[100009326]='꼬질꼬질한 반지'
G[100010593]='불완전한 드레니시스트 조각'
G[100012842]='휘갈겨 쓴 일지'
G[100016303]='우르산고우스의 앞발'
G[100016304]='샤둠브라의 머리'
G[100016305]='뾰족발톱의 발톱'
G[100016408]='더럽혀진 물구슬'
G[100016782]='이상한 물구슬'
G[100017203]='설퍼론 주괴'
G[100018356]='가로나: 은신과 기만에 대한 연구'
G[100018357]='방어의 고서'
G[100018358]='신비술사의 요리책'
G[100018359]='빛과 정의에 관하여'
G[100018360]='지배의 그림자'
G[100018361]='사냥꾼의 위대한 혈통'
G[100018362]='성스러운 볼로냐: 빛이 알려주지 않는 것들'
G[100018363]='냉기 충격과 주술'
G[100018364]='에메랄드의 꿈'
G[100018628]='토륨 대장조합 계약서'
G[100018706]='전문 검투사의 징표'
G[100018769]='찢어진 두루마리'
G[100018987]='블랙핸드의 명령서'
G[100019002]='네파리안의 머리'
G[100019016]='환생의 관'
G[100019018]='잠들어 있는 바람의 성검'
G[100019228]='야수 카드 한 벌'
G[100019257]='대장군 카드 한 벌'
G[100019267]='정령 카드 한 벌'
G[100019277]='차원문 카드 한 벌'
G[100019423]='세이지의 점괘 #23'
G[100019424]='세이지의 점괘 #24'
G[100019443]='세이지의 점괘 #25'
G[100019452]='세이지의 점괘 #27'
G[100019802]='학카르의 심장'
G[100020461]='브란 브론즈비어드의 잃어버린 편지'
G[100020483]='오염된 신비의 조각'
G[100020644]='악몽이 깃든 물건'
G[100020741]='마른가지 의식의 토템'
G[100020765]='첩보 문서'
G[100021220]='무적의 오시리안의 머리'
G[100021221]='크툰의 눈'
G[100021230]='고대 퀴라지 유물'
G[100021776]='선장 켈리센드라의 잃어버린 항해도'
G[100022597]='여군주의 목걸이'
G[100022727]='아티쉬의 몸통'
G[100022733]='아티쉬의 지팡이 머리'
G[100023179]='오그리마 불꽃'
G[100023180]='썬더 블러프 불꽃'
G[100023181]='언더시티 불꽃'
G[100023182]='스톰윈드 불꽃'
G[100023183]='아이언포지 불꽃'
G[100023184]='다르나서스 불꽃'
G[100023228]='늙은 흰나무껍질의 목걸이'
G[100023249]='아마니 침공 계획서'
G[100023338]='부식된 가죽 용기'
G[100023580]='아브루의 구슬'
G[100023678]='희미하게 빛나는 수정'
G[100023759]='룬각인 서판'
G[100023777]='악마의 계획서'
G[100023837]='오래된 보물지도'
G[100023850]='굴프의 자존심'
G[100023870]='붉은 수정 펜던트'
G[100023900]='트제라크의 판금 갑옷 조각'
G[100023910]='블러드 엘프 교신 내용'
G[100024132]='제독이 보낸 편지'
G[100024330]='배수로 설계도'
G[100024367]='여군주 바쉬의 명령서'
G[100024407]='미분류된 식물종'
G[100024414]='블러드 엘프의 계획서'
G[100024483]='말라붙은 담자기'
G[100024504]='울부짖는 바람'
G[100024558]='수렁피 침공 계획서'
G[100025459]='백작 운굴라의 아래턱'
G[100028552]='불가사의한 고서'
G[100029233]='다스릭의 검'
G[100029234]='벨마라의 고서'
G[100029235]='루민라스의 망토'
G[100029236]='콜린의 모자'
G[100029476]='진홍색 수정 조각'
G[100029588]='불타는 군단 서신'
G[100030431]='천둥군주 부족 유물'
G[100030579]='일리다리 파멸의 파편'
G[100031120]='회의록'
G[100031345]='발자레크의 일지'
G[100031363]='고르그롬의 조각상'
G[100031384]='손상된 복면'
G[100031489]='그리쉬나의 보주'
G[100031707]='비밀결사단 명령서'
G[100031890]='축복 카드 한 벌'
G[100031891]='폭풍 카드 한 벌'
G[100031907]='원한 카드 한 벌'
G[100031914]='열광 카드 한 벌'
G[100032385]='마그테리돈의 머리'
G[100032405]='신록의 구슬'
G[100032523]='이샤알의 연감'
G[100032621]='반쯤 소화된 손'
G[100032726]='수렁피 탈출 계획서'
G[100033289]='샬레르브론 공격 계획서'
G[100033314]='브리쿨 승천의 두루마리'
G[100033961]='스컬지 장치'
G[100034090]='메젠의 기록'
G[100034469]='이상한 엔진 부품'
G[100034777]='이시릭스의 단단한 등껍질'
G[100034815]='신선한 피가 든 유리병'
G[100034984]='초음파 나사돌리개'
G[100035568]='실버문 불꽃'
G[100035569]='엑소다르 불꽃'
G[100035648]='화려하게 빛나는 조각'
G[100035723]='아훈의 파편'
G[100036742]='고라모쉬의 이상한 장치'
G[100036744]='살점달린 고서'
G[100036756]='부대장 말린의 편지'
G[100036780]='부관 타진니의 편지'
G[100036855]='문장 장식된 전투 뿔피리'
G[100036940]='미크헤일의 일지'
G[100036958]='장구스의 편지'
G[100037163]='도적 카드 한 벌'
G[100037164]='검 카드 한 벌'
G[100037432]='고문관의 마법봉'
G[100037736]='"맥주 사랑 동호회" 가입 신청서'
G[100037833]='루비 브로치'
G[100038280]='다이어브루의 독한 맥주'
G[100038321]='기묘한 모조'
G[100038567]='마라우돈 죄수 목록'
G[100038660]='청산의 목장식'
G[100038673]='고통의 목장식'
G[100040666]='총사령관의 쪽지'
G[100041267]='고철이 접근 카드'
G[100041556]='잿가루 덮인 금속'
G[100042203]='암흑 갑옷 조각'
G[100042772]='미치광이 박사의 "살덩이 거인 잘 만드는 법"'
G[100043242]='톱니 조각'
G[100043297]='망가진 목걸이'
G[100043512]='수액투성이 버섯'
G[100043876]='노스렌드 옷감 수거법 안내서'
G[100044148]='마법사 카드 한 벌'
G[100044158]='악마 카드 한 벌'
G[100044259]='프리즘 카드 한 벌'
G[100044276]='혼돈 카드 한 벌'
G[100044294]='불사 카드 한 벌'
G[100044326]='귀족 카드 한 벌'
G[100044569]='집중의 눈동자 열쇠'
G[100044577]='집중의 눈동자 영웅 열쇠'
G[100044725]='영원의 서리 파편'
G[100044927]='타락자의 만능 열쇠'
G[100044979]='감독관의 명령서'
G[100045040]='뾰족창 고문관의 우리 열쇠'
G[100045506]='고대 기록관 자료 원반'
G[100045858]='내트의 행운가득 낚싯대'
G[100046004]='봉인된 독약병'
G[100046052]='응답 코드 알파'
G[100046128]='트롤 부적'
G[100046318]='헬스크림의 서신'
G[100046544]='호기심 많은 새끼 울바르'
G[100046545]='호기심 많은 새끼 점쟁이'
G[100046856]='화끈한 개조차 열쇠'
G[100046955]='크라켄 이빨'
G[100047039]='정찰병의 명령서'
G[100048679]='물에 젖은 제조법'
G[100049010]='불타는 칼날단 귀걸이'
G[100049200]='지옥의 마력 핵'
G[100049643]='오닉시아의 머리'
G[100049676]='크발디르 공격 계획서'
G[100049776]='도로 계획서'
G[100049932]='깎아 만든 멧돼지 우상'
G[100050320]='빛 바랜 아름다운 카드'
G[100050379]='마모된 칼자루'
G[100051315]='봉인된 궤짝'
G[100052079]='단홍빛 편지'
G[100052197]='조각상 - 악마 표범'
G[100052843]='드워프 마법석'
G[100053053]='너덜너덜한 보물 지도'
G[100054345]='구겨진 보물 지도'
G[100054614]='발광 진주'
G[100054639]='물에 젖은 일지'
G[100055166]='온전한 설인 가죽'
G[100055167]='완전한 설인 가죽'
G[100055181]='읽을 수 없는 오크 편지'
G[100055186]='여군주 라라의 목걸이'
G[100055243]='홍수쇄도 핵'
G[100056474]='기지에서 보낸 명령서'
G[100056571]='거대한 뱀장어 알'
G[100056836]='넘치는 보라색 가을 축제 잔'
G[100057102]='황혼의 우리 열쇠'
G[100057935]='허수아비골렘 보초 심장'
G[100058117]='붉은 복면'
G[100058491]='손상된 모쉬오그 손'
G[100058898]='지저분한 두루마리'
G[100059143]='풍파에 낡은 동전'
G[100060816]='마지엘의 연구'
G[100060956]='코록의 두 번째 머리'
G[100061378]='남작부인의 서신'
G[100061505]='부분 손상된 머리'
G[100062021]='화산 카드 한 벌'
G[100062044]='지진해일 카드 한 벌'
G[100062045]='싹쓸바람 카드 한 벌'
G[100062046]='지진 카드 한 벌'
G[100062056]='위조한 서류'
G[100062138]='갈갈이의 머리'
G[100062281]='고대 엘프 새김'
G[100062483]='인공지능 통신기'
G[100062768]='능률 발굴'
G[100062933]='하녀 필라클렌처의 베개'
G[100063090]='오물아가미의 지느러미발'
G[100063127]='명가 두루마리'
G[100063128]='트롤 서판'
G[100063250]='언덕마루 전투 일지'
G[100063686]='비수가시 공격 계획서'
G[100063700]='미제리안의 머리'
G[100064353]='빈 화주 시험관'
G[100064397]='톨비르 성각문자'
G[100064450]='암흑 전령의 기록'
G[100065894]='조각상 - 꿈의 올빼미'
G[100065895]='조각상 - 멧돼지 왕'
G[100065896]='조각상 - 보석 박힌 뱀'
G[100065897]='조각상 - 대지 수호자'
G[100069854]='연기에 그을린 펜던트'
G[100071635]='마력이 깃든 수정'
G[100071636]='기괴한 알'
G[100071637]='신비로운 흑마법서'
G[100071638]='화려한 무기'
G[100071715]='전략에 관한 논문'
G[100071716]='예언자의 룬'
G[100071951]='쓰러진 자의 깃발'
G[100071952]='빼앗은 휘장'
G[100071953]='쓰러진 모험가의 일지'
G[100074642]='숯불로 구운 호랑이 스테이크'
G[100074643]='당근 볶음'
G[100074644]='소용돌이치는 안갯국'
G[100074645]='영원꽃 물고기'
G[100074647]='계곡 볶음 요리'
G[100074649]='거북이 조림'
G[100074651]='새우 만두'
G[100074652]='화주 연어'
G[100074654]='들새 숯불구이'
G[100074655]='쌍둥이 생선 구이'
G[100077957]='황혼의 긴급 서신'
G[100078960]='초록색 운룡 알'
G[100078961]='노란색 운룡 알'
G[100078962]='푸른색 운룡 알'
G[100079264]='루비 파편'
G[100079265]='푸른 깃털'
G[100079266]='비취 고양이'
G[100079267]='아름다운 사과'
G[100079268]='습지대 백합'
G[100079323]='호랑이 카드 한 벌'
G[100079326]='용 카드 한 벌'
G[100080240]='이상한 둥근 돌'
G[100080241]='머스크포우의 유품'
G[100080827]='헷갈리는 보물 지도'
G[100082870]='이상한 유물'
G[100083767]='크로쉬의 등딱지'
G[100083769]='사우록과 역경 사이'
G[100083770]='안개 속의 호젠'
G[100083771]='물고기 이야기'
G[100083772]='모구의 검은 심장'
G[100083773]='사마귀 군단의 심장'
G[100083774]='무엇이 싸울 가치가 있는가'
G[100083777]='야운골의 노래'
G[100083779]='샤오하오의 일곱 짐'
G[100083780]='리우 랑의 노래'
G[100085477]='온전한 모구 동전'
G[100085557]='온전한 판다렌 다기 세트'
G[100085558]='온전한 놀이판'
G[100085783]='선장 잭의 머리카락'
G[100086404]='낡은 지도'
G[100086425]='요리 학교의 종'
G[100086433]='예쁜 목걸이'
G[100086434]='은근히 예쁜 티아라'
G[100086435]='우아한 귀걸이'
G[100086436]='아름다운 브로치'
G[100086542]='나는 호랑이 구라미'
G[100086544]='우두머리 가시고기'
G[100086545]='흉내쟁이 문어'
G[100087871]='거대한 키파라이트 핵'
G[100087878]='엄청나게 큰 쿤총 턱'
G[100088715]='장군 구르단의 유골 가루'
G[100089155]='마노 알'
G[100089169]='온전한 반란의 수갑'
G[100089170]='온전한 모구 마법석'
G[100089171]='온전한 토우 팔'
G[100089172]='온전한 석화된 뼈 채찍'
G[100089173]='온전한 천둥왕 휘장'
G[100089174]='온전한 천둥왕의 칙령'
G[100089175]='온전한 강철 아뮬렛'
G[100089176]='온전한 낙인'
G[100089178]='온전한 쌍둥이 잔'
G[100089179]='온전한 보행 지팡이'
G[100089180]='온전한 빈 맥주통'
G[100089181]='온전한 조각된 청동 거울'
G[100089182]='온전한 금으로 세공된 조각상'
G[100089183]='온전한 연금술 그릇'
G[100089184]='온전한 위론의 진주'
G[100089185]='온전한 니우짜오의 깃발'
G[100089209]='온전한 기념물 장부'
G[100089317]='분노의 발톱'
G[100089812]='"진위 공주" 관개 시설'
G[100089813]='"천둥왕" 해충 퇴치기'
G[100089814]='"대지절단자" 최고급 쟁기'
G[100091819]='튼튼한 학 올가미'
G[100091821]='튼튼한 호랑이 덫'
G[100091822]='튼튼한 게 상자'
G[100092441]='제라스의 고서'
G[100094721]='이상한 금속 주괴'
G[100095383]='온전한 사마귀 제국의 깃발'
G[100095384]='온전한 고대 수액 먹이통'
G[100095385]='온전한 기도하는 사마귀'
G[100095386]='온전한 음향 신호기'
G[100095387]='온전한 용장의 유해'
G[100095388]='온전한 사마귀 등불'
G[100095389]='온전한 꽃가루 채집기'
G[100095390]='온전한 키파리 수액 용기'
G[100097979]='곰과 달곰한 아가씨'
G[100097982]='불그스름한 점액이 든 병'
G[100097985]='먼지투성이 낡은 로봇'
G[100097986]='발굴단장의 흙날'
G[100097988]='종이에 싸인 바위'
G[100102225]='롤로의 수수께끼'
G[100104257]='온전한 화염폭풍 알'
G[100104264]='살이 많은 학 다리'
G[100104265]='거대거북 고기'
G[100104266]='통통한 야크 살코기'
G[100104267]='두툼한 호랑이 볼깃살'
G[100109121]='튼튼한 밧줄 똬리'
G[100109258]='기계공학 작업장 (1 레벨)'
G[100111812]='연금술 연구소 (1 레벨)'
G[100111813]='제련소 (1 레벨)'
G[100111814]='보석 양품점 (1 레벨)'
G[100111815]='주문각인사의 처소 (1 레벨)'
G[100111816]='재봉술 잡화점 (1 레벨)'
G[100111817]='마법부여사의 연구실 (1 레벨)'
G[100111818]='가죽상점 (1 레벨)'
G[100112378]='빛나는 붉은색 깍지'
G[100113080]='화산핵'
G[100113103]='수수께끼의 유리병'
G[100113107]='랑가리 화살'
G[100113109]='서리늑대 도끼'
G[100113448]='분화구 군주의 조각'
G[100113453]='값비싼 버섯'
G[100113461]='희미하게 빛나는 비늘'
G[100114037]='정령 수정'
G[100114054]='황금발가락의 열쇠'
G[100114877]='더러운 쪽지'
G[100114965]='부러진 제련소 망치'
G[100114972]='불가사의한 재봉술 고서'
G[100114973]='서리늑대 재봉술 도구'
G[100114984]='수수께끼의 주머니'
G[100115008]='마력 깃든 높은망치 팔보호구'
G[100115278]='노움 위치 전송기'
G[100115287]='섬세한 진홍빛 펜던트'
G[100115343]='헤페스트의 가방'
G[100115467]='나무 껍질 고서'
G[100115507]='고갈된 수정 조각'
G[100115593]='읽을 수 없는 검댕투성이 쪽지'
G[100116120]='맛 좋은 탈라도르 점심'
G[100116159]='꿈틀거리는 초록색 촉수'
G[100116173]='남루한 서리늑대 쓰개'
G[100116438]='타버린 손대포'
G[100119208]='예언자의 영석'
G[100119317]='기묘한 수풀'
G[100122224]='악보: 산'
G[100122226]='악보: 마법'
G[100122239]='악보: 샬란디스 섬'
G[100122399]='정찰 서신: 마그나로크'
G[100122401]='정찰 서신: 바위격노 절벽'
G[100122404]='정찰 서신: 상록숲 밀림'
G[100122406]='정찰 서신: 강철 공성작업장'
G[100122407]='정찰 서신: 스케티스'
G[100122409]='정찰 서신: 운명의 기둥'
G[100122412]='정찰 서신: 샤트라스 항구'
G[100122414]='정찰 서신: 잃어버린 장막의 안주'
G[100122415]='정찰 서신: 소크레타르의 마루'
G[100122417]='정찰 서신: 어둠파도 보금자리'
G[100122420]='정찰 서신: 고리안 훈련장'
G[100122422]='정찰 서신: 모크골 감시초소'
G[100122423]='정찰 서신: 부서진 벼랑'
G[100126950]='장비 도면: 배수 펌프'
G[100127989]='흠뻑 젖은 화물 목록'
G[100128231]='장비 도면: 길들인 상어 수조'
G[100128232]='장비 도면: 고휘도 안개등'
G[100128250]='장비 도면: 침몰 방지기'
G[100128252]='장비 도면: 순철 방향타'
G[100128255]='장비 도면: 쇄빙기'
G[100128256]='장비 도면: 자동균형 안정 장치'
G[100128257]='장비 도면: 유령 망원경'
G[100128258]='장비 도면: 지옥연기 분사 장치'
G[100128491]='장비 도면: 투스카르 낚시 그물'
G[100129747]='소용돌이치는 시간왜곡의 약병'
G[100129928]='얼어붙은 시간왜곡의 프리즘'
G[100133377]='이글거리는 시간왜곡의 불씨'
end

--	End of localized NPC names
