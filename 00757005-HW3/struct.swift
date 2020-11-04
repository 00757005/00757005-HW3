//
//  struct.swift
//  00757005-HW3
//
//  Created by User15 on 2020/10/29.
//

import Foundation

struct music {
    var name: String
    var description: String
    var difficulty: Int
    var year: Int
    var link: String
    var img: String
}

let lyric: [music] = [
    music(name: "流れ行く雲", description: "日本知名吉他指彈演奏家 - Masaaki Kishibe的代表作之一！他曾說過：「自然界的美是什麼也比不上的尤其是山，它的巨大宏偉，它的深邃寧靜所給予人的感受，更沒有什麼能與之相比」。\n此曲收錄於2006年發行的「奇跡の山」專輯裡。\n本張專輯裡，岸部用他的音樂描繪出山的種種面貌，就像在訴說著人在山中所體會到的各式氛圍你可以享受到山的平靜、山的包容、山的躍動、山的奔放，以及更多不同的聽覺感受。", difficulty: 1, year: 2006, link: "https://reurl.cc/R1D1Qx", img: "lyric1"),
    
    music(name: "Wind Song", description: "Kotaro Oshio的經典名曲之一！此曲亦是許多指彈新血的入門基本曲之一。沒有過多絢麗的技巧，取而代之的是編曲的細膩，旋律上動聽抓耳，而層層鋪陳的和聲更是使得整首曲子的意境浮現在聽眾眼前，我想這就是為什麼Kotaro的曲子都能歷久彌堅的原因吧！", difficulty: 2, year: 2009, link: "https://reurl.cc/ldXmx9", img: "lyric4"),
    
    music(name: "奇跡の山", description: "這首奇跡の山可說是Masaaki Kishibe最有名的歌了吧！不同於其他現代指彈演奏家，Masaaki Kishibe幾乎不使用過多的敲擊技巧，也因為如此使得他的編曲更能透過旋律貼切地描繪出曲子的畫面，而這首奇跡の山正完美地勾勒出了層層山峰環環相繞的壯闊畫面！", difficulty: 3, year: 2011, link: "https://reurl.cc/pyXlOe", img: "lyric5"),
    
    music(name: "The Milky Way", description: "此首曲收錄於Sungha Jung的第四張演奏專輯 - Monologue。此曲算是Sungha Jung早期的作品，整首曲子旋律優雅、畫面遼闊，而演奏上仍不失張力，完美地詮釋了歌名 - The Milky Way(銀河系)。此曲亦是Sungha Jung的經典曲子之一，近期的演奏會及直播中都能聽到他的演奏！", difficulty: 4, year: 2014, link: "https://reurl.cc/x0X5be", img: "lyric3"),
    
    music(name: "Rylynn", description: "這首Rylynn是作者Andy Mckee寫給一位很早去世的小女孩，以他的名字為這首曲子命名。這首演奏曲的旋律聽來含蓄實則含有點熱情，非常有特色。而除了旋律吸引人以外，這首歌的編曲也展現了Andy Mckee的用心。這首可以分為前中後三段，前奏是抒情的自由拍子來鋪陳整首歌前進，而中間則加入了打板增加鼓點避免整首過於濫情，結尾則是泛音（節奏）加上點弦（旋律），讓此曲演奏到尾聲仍是滿滿驚喜！", difficulty: 5, year: 2006, link: "https://reurl.cc/gmlYdR", img: "lyric2")
]

let percussion: [music] = [
    music(name: "Sunflower", description: "作者為Paddy Sun，此曲可說是大家練習敲擊類指彈的基本曲目！技巧雖然不難，但要還原出原曲的意境可不容易！中國風的編曲形式讓整首曲子演奏時往往能讓人聯想到中國山河繚繞的畫面。", difficulty: 1, year: 2009, link: "https://reurl.cc/MdD3aL", img: "percussion3"),
    
    music(name: "Elephant King", description: "這首Elephant king為Trace Bundy的經典曲子！輕快的旋律搭配著恰到好處的吉他鼓使得整首曲子活潑而有趣。整首曲子圍繞在Ａ段反覆，聽似簡單，但也正是聽來簡單的曲子在演奏上更為困難，每一反覆的段落營造出不一樣的感覺，這就是Trace Bundy的厲害之處！", difficulty: 2, year: 2012, link: "https://reurl.cc/d58N8z", img: "percussion5"),
    
    music(name: "You and Me", description: "作者為Yuki Matsui，此曲可說是Yuki的成名曲，一聽到前奏的鼓點就知道是You and Me了！。You and Me為多數指彈新手接觸日系指彈的入門歌曲，也是可以好好學習Yuki慣用手法的一首歌，日系的編曲讓聽者一聽到就燃起了鬥志！", difficulty: 3, year: 2013, link: "https://reurl.cc/m9XYz9", img: "percussion4"),
    
    music(name: "Drifting", description: "Drifting無疑是Andy Mckee最著名的代表作之一，他兼具動感與行雲流水一般的點弦安排讓這首曲子在youtube網站達到將近六千萬的點閱率。很多敲擊風格的演奏曲要搭配視覺上的技巧，和曲子本身相輔相成來呈現出一個完整的演奏，而Drifting儼然在另一個領域呈現，聽的時候好聽，而看的時候又帶來新的驚喜。", difficulty: 4, year: 2006, link: "https://reurl.cc/k0v0LG", img: "percussion1"),
    
    music(name: "Thunderstruck", description: "這首由Luca Stricagnoli改編的Thunderstruck(AC/DC)為非常傑出的指彈改編作品！運用了大量的敲擊技巧在單單一把吉他上，演奏旋律及和弦的同時也加入了原曲的各式鼓點，豐富了整首作品，使得一把吉他也能玩得像fullband形式的作品！", difficulty: 5, year: 2015, link: "https://reurl.cc/odX8z3", img: "percussion2")
]

let jazz: [music] = [
    music(name: "Seventh #9", description: "此曲收錄於Sungha Jung的第六張專輯 - L’Atelier。這首曲子完美地展現了Sungha Jung有多麽地喜歡藍調音樂，裡頭中運用了許多他招牌的藍調lick，使得整首曲子充滿了滿滿的藍調味。而他曾在演奏會時解釋過這看似使眾人不明白的曲名，Seventh #9其實是指他一個以前鮮少使用過的和弦 - 屬七升九和弦，這看似不太重要的冷知識，其實解答了很多人心中的疑問呢！", difficulty: 4, year: 2016, link: "https://reurl.cc/GrD9dp", img: "jazz2"),
    
    music(name: "Isn't she lovely", description: "Sungha Jung在他的第七張專輯 - Mixtape中改編了許多經典老歌，其中Stevie Wonder的Isn't she lovely為這張專輯的第一首歌。喜愛爵士及藍調的Sungha Jung將Isn't she lovely改編地更有自己的味道也更豐富了整首歌的和弦色彩，讓經典老歌再度被大家看見，發行短短三年已在youtube累積近700萬點閱！", difficulty: 5, year: 2017, link: "https://reurl.cc/Q3D3e2", img: "jazz1")
]

let NeoSoul: [music] = [
    music(name: "Mellow Sunset", description: "此曲為Seigi Igusa的作品，Seigi Igusa對於和弦的運用及延伸音的想法都十分地精彩，這也是他作品多屬於NeoSoul風格的原因！而此曲正是運用了NeoSoul的特點，曲子中使用了大量的垂勾音來勾勒和弦的延伸音，使得整首歌的和弦色彩豐富許多，也使得聽感上上升了許多層次！", difficulty: 4, year: 2015, link: "https://reurl.cc/x0Xyle", img: "NeoSoul2"),
    
    music(name: "Like a star", description: "Like a star 的作者為正值18歲的天才吉他手Youngso Kim，他憑藉該曲獲得2019年日本Morris FingerPicking演奏大賽冠軍。\nLlke a star運用了許多炫酷的指彈技巧，後半段滑動移調夾的使用，不僅在技術上吸引人目光，也讓整首曲子的情感更加充沛。\nYoungso Kim稱《Llke a star》的創作靈感來源於日本動畫电影《你的名字》，電影中男女主角生活在不同的時空，也只能在特定的時空見面。在兩位主角相遇時，出現的的星空畫面和恰到好處的背景音樂，讓Youngso kim 產生了要「制作一首曲」的想法。", difficulty: 5, year: 2016, link: "https://reurl.cc/j5p51y", img: "NeoSoul1")
]
