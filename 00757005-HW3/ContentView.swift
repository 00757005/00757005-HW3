//
//  ContentView.swift
//  00757005-HW3
//
//  Created by User15 on 2020/10/29.
//

import SwiftUI

struct ContentView: View {
    @State private var Name = ""
    @State private var showOptions = false
    @State private var showSheet = false
    @State private var showAlert = false
    @State private var showActionSheet = false
    @State private var Style = 0
    @State private var Difficulty = 0
    @State private var selectDate = Date()
    
    let today = Date()
    let startDate = Calendar.current.date(byAdding: .year,value: -30, to: Date())!
    var Year: Int {
        Calendar.current.component(.year, from: selectDate)
    }
    
    var body: some View {
        VStack {
            Text("享受純吉他演奏！")
                .fontWeight(.bold)
                .font(.system(size: 35))
                .padding()
            
            Image("sungha")
                .resizable()
                .scaledToFit()
                .frame(width: 350, height: 300)
            
            Form{
                TextField("使用者名字",text: $Name)
                    .font(.system(size: 20))
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 2))
                                    
                Toggle("來聽fingerstyle！", isOn: $showOptions.animation())
                
                if showOptions{
                    Text("                \(Name)你好！\n想聽什麼風格的fingerstyle呢？")
                        .offset(x:45)
                    
                    selectStyle(style: $Style)
                    
                    DatePicker("發行時間", selection: self.$selectDate, in: self.startDate...self.today, displayedComponents: .date)
                    
                    difficultyStepper(difficulty: $Difficulty)
                }
            }
            
            if showOptions{
                Button(action: {
                    if(Difficulty == 0){
                        showAlert = true
                    }
                    else if ((Style == 2 && Difficulty <= 3) || (Style == 3 && Difficulty <= 3)){
                        showActionSheet = true
                    }
                    else{
                        showSheet = true
                    }
                }){
                    Text("開聽音樂！")
                        .padding()
                        .background(Color(red:251/255, green:185/255, blue:29/255))
                        .cornerRadius(15)
                        .foregroundColor(.black)
                        .padding(5)
                }.sheet(isPresented: self.$showSheet) {
                    MusicView(name: $Name, style: $Style, difficulty: $Difficulty, year: Year)
                }
                .actionSheet(isPresented: $showActionSheet){
                    ActionSheet(title: Text("此曲風只收錄4和5顆🌟"),message: Text("請問你要"), buttons: [
                    .default(Text("兩首隨機擇一")){ showSheet = true },
                    .default(Text("重新選擇"))])
                }
                .alert(isPresented: $showAlert) { () -> Alert in
                    return Alert(title: Text("難易度不能0顆🌟哦！"),message: Text("請選擇難易度！"))
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct selectStyle: View {
    @Binding var style: Int
    
    let styles = ["抒情", "敲擊", "爵士＆藍調", "NeoSoul"]
    
    var body: some View {
        Picker("曲風", selection: $style){
            ForEach(0 ..< styles.count) { (index) in
                Text(self.styles[index])
            }
        }.pickerStyle(SegmentedPickerStyle())
    }
}

struct difficultyStepper: View {
    @Binding var difficulty: Int
    
    var body: some View {
        Stepper("難易度：" + "\(difficulty)顆🌟", value: $difficulty, in: 0 ... 5, step:1)
    }
}
