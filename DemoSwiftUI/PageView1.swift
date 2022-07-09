//
//  ContentView.swift
//  DemoSwiftUI
//
//  Created by Jake on 2022/7/1.
//

import SwiftUI

struct PageView1: View {
    
    let width = UIScreen.main.bounds.width
    
    @State var email = ""
    @State var pwd = ""
    
    var body: some View {
        VStack {
            Text("Login")
                .font(.title)
                .padding()
            
            TextField("Email", text: $email)
                .font(.system(size: 18))
                .padding([.trailing, .leading], 20)
                .textFieldStyle(.roundedBorder)
            SecureField("Password", text: $pwd)
                .font(.system(size: 18))
                .padding([.leading, .trailing], 20)
                .textFieldStyle(.roundedBorder)
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Text("Login")
                    .frame(width: width - 40, height: 50)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(16)
            })
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PageView1()
    }
}
