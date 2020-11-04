//
//  MusicView.swift
//  00757005-HW3
//
//  Created by User15 on 2020/10/29.
//

import SwiftUI

struct MusicView: View {
    @Binding var name: String
    @Binding var style: Int
    @Binding var difficulty: Int
    var year: Int
    
    var body: some View {
        ScrollView{
            VStack{
                Text("嘿 \(name) "+"！ 這首如何呢？")
                    .font(.system(size: 23))
                detail(style: self.style, year: self.year, difficulty: self.difficulty)
            }
        }
    }
}

struct detail: View {
    var style: Int
    var year: Int
    var difficulty: Int

    var body: some View {
        
        let selection = self.select(type: style, year: year, difficulty: difficulty)
        
        return VStack{
            if style == 0 {
                nextView(selection: selection, type: 0)
            }
            else if style == 1 {
                nextView(selection: selection, type: 1)
            }
            else if style == 2 {
                nextView(selection: selection, type: 2)
            }
            else if style == 3 {
                nextView(selection: selection, type: 3)
            }
        }
        .background(Color(red:255/255, green:250/255, blue:205/255))
    }

    func select(type: Int, year: Int, difficulty: Int) -> Int{
        let pickindex = 0
        var choice : Int
        
        if style == 0{
            for i in 0 ..< lyric.count {
                if lyric[i].difficulty == difficulty {
                    return i
                }
            }
        }
        else if style == 1{
            for i in 0 ..< percussion.count {
                if percussion[i].difficulty == difficulty {
                    return i
                }
            }
        }
        else if style == 2{
            for i in 0 ..< jazz.count {
                if jazz[i].difficulty == difficulty {
                    return i
                }
            }
            if difficulty <= 3{
                choice = Int.random(in: 0..<jazz.count)
                return choice
            }
        }
        else if style == 3{
            for i in 0 ..< NeoSoul.count {
                if NeoSoul[i].difficulty == difficulty {
                    return i
                }
            }
            if difficulty <= 3{
                choice = Int.random(in: 0..<NeoSoul.count)
                return choice
            }
        }
        return pickindex
    }
}

struct nextView: View{
    let selection: Int
    let type: Int
    let style = [lyric, percussion, jazz, NeoSoul]
    @State private var showImg = true
    
    var body: some View {
        VStack{
            Image(style[type][selection].img)
                .resizable()
                .scaledToFit()
                .padding()
                .frame(width:400, height:400)
                .transition(.opacity)
            VStack{
                Text(style[type][selection].name)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                    .foregroundColor(.black)
                Section(header: CustomHeader(name: "難易度")){
                    Text("\(style[type][selection].difficulty)"+"顆🌟")
                }

                Section(header: CustomHeader(name: "發行年份")){
                    Text("\(style[type][selection].year)")
                        .font(.system(size: 20))
                }
                
                Section(header: CustomHeader(name: "作品介紹")){
                    Text(style[type][selection].description)
                        .font(.system(size: 15))
                }
                
                Button("youtube觀看大神！"){
                    if let url = URL(string: self.style[self.type][self.selection].link) {
                        if UIApplication.shared.canOpenURL(url) {
                            UIApplication.shared.open(url, options: [:])
                        }
                    }
                }
                .frame(width:180,height:20)
                .padding()
                .font(.system(size: 20))
                .background(Color(red:251/255, green:185/255, blue:29/255))
                .cornerRadius(15)
                .foregroundColor(.black)
                .padding(5)
                Spacer()
            }
            .offset(y:-60)
        }
        .animation(.easeInOut(duration:1.5))
    }
}

struct CustomHeader: View {
    let name: String
    var body: some View {
        ZStack {
            Color(red:251/255, green:185/255, blue:29/255).edgesIgnoringSafeArea(.all)
            HStack {
                Text(name)
                    .font(.system(size: 25))
                    .bold()
                    .foregroundColor(Color.black)
                Spacer()
            }
            .frame(width: 370)
            Spacer()
        }.frame(width:410, height: 33)
    }
}
