//
//  PageView2.swift
//  DemoSwiftUI
//
//  Created by Jake on 2022/7/9.
//

import SwiftUI

struct PageView2: View {
    
    @State var name = ""
    @State var birthday = Date()
    @State var sex = 1
    @State var height = 170
    @State var weight = 60

    var body: some View {
        
        
        Form {
            HStack {
                Text("姓名")
                TextField("姓名", text: $name)
                    .multilineTextAlignment(.trailing)
            }
            
            DatePicker("生日", selection: $birthday, displayedComponents: .date)
            
            HStack {
                Text("性別")
                Spacer()
                Picker("性別", selection: $sex, content: {
                    Text("男").tag(1)
                    Text("女").tag(0)
                })
                .frame(width: 200, alignment: .trailing)
                .pickerStyle(.segmented)
            }
            
            HStack {
                Text("身高")
                Spacer()
                Picker("", selection: $height, content: {
                    ForEach(100...200, id:\.self) { item in
                        Text("\(item) cm")
                    }
                })
                .pickerStyle(.menu)
            }
            
            HStack {
                Text("體重")
                Spacer()
                Picker("", selection: $weight, content: {
                    ForEach(10...200, id:\.self) { item in
                        Text("\(item) kg")
                    }
                })
                .pickerStyle(.menu)
            }

        }
    }
}

struct PageView2_Previews: PreviewProvider {
    static var previews: some View {
        PageView2()
    }
}
