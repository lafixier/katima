import
  tables


const new2oldKanjiTable* =
  {
    "亜": @["亞"],
    "悪": @["惡"],
    "圧": @["壓"],
    "囲": @["圍"],
    "医": @["醫"],
    "為": @["爲"],
    "壱": @["壹"],
    "逸": @["逸"],
    "隠": @["隱"],
    "栄": @["榮"],
    "営": @["營"],
    "衛": @["衞"],
    "駅": @["驛"],
    "謁": @["謁"],
    "円": @["圓"],
    "塩": @["鹽"],
    "縁": @["緣"],
    "艶": @["艷"],
    "応": @["應"],
    "欧": @["歐"],
    "殴": @["毆"],
    "桜": @["櫻"],
    "奥": @["奧"],
    "横": @["橫"],
    "温": @["溫"],
    "穏": @["穩"],
    "仮": @["假"],
    "価": @["價"],
    "禍": @["禍"],
    "画": @["畫"],
    "会": @["會"],
    "悔": @["悔"],
    "海": @["海"],
    "絵": @["繪"],
    "壊": @["壞"],
    "懐": @["懷"],
    "慨": @["慨"],
    "概": @["槪"],
    "拡": @["擴"],
    "殻": @["殼"],
    "覚": @["覺"],
    "学": @["學"],
    "岳": @["嶽"],
    "楽": @["樂"],
    "喝": @["喝"],
    "渇": @["渴"],
    "褐": @["褐"],
    "缶": @["罐"],
    "巻": @["卷"],
    "陥": @["陷"],
    "勧": @["勸"],
    "寛": @["寬"],
    "漢": @["漢"],
    "関": @["關"],
    "歓": @["歡"],
    "観": @["觀"],
    "気": @["氣"],
    "祈": @["祈"],
    "既": @["既"],
    "帰": @["歸"],
    "亀": @["龜"],
    "器": @["器"],
    "偽": @["僞"],
    "戯": @["戲"],
    "犠": @["犧"],
    "旧": @["舊"],
    "拠": @["據"],
    "挙": @["擧"],
    "虚": @["虛"],
    "峡": @["峽"],
    "挟": @["挾"],
    "狭": @["狹"],
    "郷": @["鄕"],
    "響": @["響"],
    "暁": @["曉"],
    "勤": @["勤"],
    "謹": @["謹"],
    "区": @["區"],
    "駆": @["驅"],
    "勲": @["勳"],
    "薫": @["薰"],
    "径": @["徑"],
    "茎": @["莖"],
    "恵": @["惠"],
    "掲": @["揭"],
    "渓": @["溪"],
    "経": @["經"],
    "蛍": @["螢"],
    "軽": @["輕"],
    "継": @["繼"],
    "鶏": @["鷄"],
    "芸": @["藝"],
    "撃": @["擊"],
    "欠": @["缺"],
    "研": @["硏"],
    "県": @["縣"],
    "倹": @["儉"],
    "剣": @["劍"],
    "険": @["險"],
    "圏": @["圈"],
    "検": @["檢"],
    "献": @["獻"],
    "権": @["權"],
    "顕": @["顯"],
    "験": @["驗"],
    "厳": @["嚴"],
    "広": @["廣"],
    "効": @["效"],
    "恒": @["恆"],
    "黄": @["黃"],
    "鉱": @["鑛"],
    "号": @["號"],
    "国": @["國"],
    "黒": @["黑"],
    "穀": @["穀"],
    "砕": @["碎"],
    "済": @["濟"],
    "斎": @["齋"],
    "剤": @["劑"],
    "殺": @["殺"],
    "雑": @["雜"],
    "参": @["參"],
    "桟": @["棧"],
    "蚕": @["蠶"],
    "惨": @["慘"],
    "賛": @["贊"],
    "残": @["殘"],
    "糸": @["絲"],
    "祉": @["祉"],
    "視": @["視"],
    "歯": @["齒"],
    "児": @["兒"],
    "辞": @["辭"],
    "湿": @["濕"],
    "実": @["實"],
    "写": @["寫"],
    "社": @["社"],
    "者": @["者"],
    "煮": @["煮"],
    "釈": @["釋"],
    "寿": @["壽"],
    "収": @["收"],
    "臭": @["臭"],
    "従": @["從"],
    "渋": @["澁"],
    "獣": @["獸"],
    "縦": @["縱"],
    "祝": @["祝"],
    "粛": @["肅"],
    "処": @["處"],
    "暑": @["暑"],
    "署": @["署"],
    "緒": @["緖"],
    "諸": @["諸"],
    "叙": @["敍"],
    "将": @["將"],
    "祥": @["祥"],
    "称": @["稱"],
    "渉": @["涉"],
    "焼": @["燒"],
    "証": @["證"],
    "奨": @["奬"],
    "条": @["條"],
    "状": @["狀"],
    "乗": @["乘"],
    "浄": @["淨"],
    "剰": @["剩"],
    "畳": @["疊"],
    "縄": @["繩"],
    "壌": @["壤"],
    "嬢": @["孃"],
    "譲": @["讓"],
    "醸": @["釀"],
    "触": @["觸"],
    "嘱": @["囑"],
    "神": @["神"],
    "真": @["眞"],
    "寝": @["寢"],
    "慎": @["愼"],
    "尽": @["盡"],
    "図": @["圖"],
    "粋": @["粹"],
    "酔": @["醉"],
    "穂": @["穗"],
    "随": @["隨"],
    "髄": @["髓"],
    "枢": @["樞"],
    "数": @["數"],
    "瀬": @["瀨"],
    "声": @["聲"],
    "斉": @["齊"],
    "静": @["靜"],
    "窃": @["竊"],
    "摂": @["攝"],
    "節": @["節"],
    "専": @["專"],
    "浅": @["淺"],
    "戦": @["戰"],
    "践": @["踐"],
    "銭": @["錢"],
    "潜": @["潛"],
    "繊": @["纖"],
    "禅": @["禪"],
    "祖": @["祖"],
    "双": @["雙"],
    "壮": @["壯"],
    "争": @["爭"],
    "荘": @["莊"],
    "捜": @["搜"],
    "挿": @["插"],
    "巣": @["巢"],
    "曽": @["曾"],
    "痩": @["瘦"],
    "装": @["裝"],
    "僧": @["僧"],
    "層": @["層"],
    "総": @["總"],
    "騒": @["騷"],
    "増": @["增"],
    "憎": @["憎"],
    "蔵": @["藏"],
    "贈": @["贈"],
    "臓": @["臟"],
    "即": @["卽"],
    "属": @["屬"],
    "続": @["續"],
    "堕": @["墮"],
    "対": @["對"],
    "体": @["體"],
    "帯": @["帶"],
    "滞": @["滯"],
    "台": @["臺"],
    "滝": @["瀧"],
    "択": @["擇"],
    "沢": @["澤"],
    "担": @["擔"],
    "単": @["單"],
    "胆": @["膽"],
    "嘆": @["嘆"],
    "団": @["團"],
    "断": @["斷"],
    "弾": @["彈"],
    "遅": @["遲"],
    "痴": @["癡"],
    "虫": @["蟲"],
    "昼": @["晝"],
    "鋳": @["鑄"],
    "著": @["著"],
    "庁": @["廳"],
    "徴": @["徵"],
    "聴": @["聽"],
    "懲": @["懲"],
    "勅": @["敕"],
    "鎮": @["鎭"],
    "塚": @["塚"],
    "逓": @["遞"],
    "鉄": @["鐵"],
    "点": @["點"],
    "転": @["轉"],
    "伝": @["傳"],
    "都": @["都"],
    "灯": @["燈"],
    "当": @["當"],
    "党": @["黨"],
    "盗": @["盜"],
    "稲": @["稻"],
    "闘": @["鬭"],
    "徳": @["德"],
    "独": @["獨"],
    "読": @["讀"],
    "突": @["突"],
    "届": @["屆"],
    "難": @["難"],
    "弐": @["貳"],
    "悩": @["惱"],
    "脳": @["腦"],
    "覇": @["霸"],
    "拝": @["拜"],
    "廃": @["廢"],
    "売": @["賣"],
    "梅": @["梅"],
    "麦": @["麥"],
    "発": @["發"],
    "髪": @["髮"],
    "抜": @["拔"],
    "繁": @["繁"],
    "晩": @["晚"],
    "蛮": @["蠻"],
    "卑": @["卑"],
    "秘": @["祕"],
    "碑": @["碑"],
    "浜": @["濱"],
    "賓": @["賓"],
    "頻": @["頻"],
    "敏": @["敏"],
    "瓶": @["甁"],
    "侮": @["侮"],
    "福": @["福"],
    "払": @["拂"],
    "仏": @["佛"],
    "併": @["倂"],
    "並": @["竝"],
    "塀": @["塀"],
    "餅": @["餠"],
    "餅": @["餠"],
    "辺": @["邊"],
    "変": @["變"],
    "弁": @["辨", "瓣", "辯"],
    "勉": @["勉"],
    "歩": @["步"],
    "宝": @["寶"],
    "豊": @["豐"],
    "褒": @["襃"],
    "墨": @["墨"],
    "翻": @["飜"],
    "毎": @["每"],
    "万": @["萬"],
    "満": @["滿"],
    "免": @["免"],
    "麺": @["麵"],
    "黙": @["默"],
    "弥": @["彌"],
    "訳": @["譯"],
    "薬": @["藥"],
    "与": @["與"],
    "予": @["豫"],
    "余": @["餘"],
    "誉": @["譽"],
    "揺": @["搖"],
    "様": @["樣"],
    "謡": @["謠"],
    "来": @["來"],
    "頼": @["賴"],
    "乱": @["亂"],
    "覧": @["覽"],
    "欄": @["欄"],
    "竜": @["龍"],
    "隆": @["隆"],
    "虜": @["虜"],
    "両": @["兩"],
    "猟": @["獵"],
    "緑": @["綠"],
    "涙": @["淚"],
    "塁": @["壘"],
    "類": @["類"],
    "礼": @["禮"],
    "励": @["勵"],
    "戻": @["戾"],
    "霊": @["靈"],
    "齢": @["齡"],
    "暦": @["曆"],
    "歴": @["歷"],
    "恋": @["戀"],
    "練": @["練"],
    "錬": @["鍊"],
    "炉": @["爐"],
    "労": @["勞"],
    "郎": @["郞"],
    "朗": @["朗"],
    "廊": @["廊"],
    "楼": @["樓"],
    "録": @["錄"],
    "湾": @["灣"],
  }.toTable