//
//  PageView11.swift
//  DemoSwiftUI
//
//  Created by Jake on 2022/7/13.
//

import SwiftUI

struct PageView11: View {
    
    let width = UIScreen.main.bounds.width
    
    var body: some View {
        VStack {
            ZStack {
                LinearGradient(colors: [Color(red: 0, green: 229.0/255.0, blue: 1), Color(red: 18.0/255.0, green: 0, blue: 1)], startPoint: .topLeading, endPoint: .bottomTrailing)
                
                VStack {
                    Text("Title")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                    
                    Spacer()
                    
                    HStack {
                        Text("Description ........")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.subheadline)
                            .foregroundColor(.white)
                            .padding()
                        Button(action: {
                            
                        }, label: {
                            Text("Button")
                                .frame(width: 100, height: 30)
                                .font(.subheadline)
                                .background(.blue)
                                .foregroundColor(.white)
                                .cornerRadius(6)
                        })
                        .padding()
                    }
                }
            }
            .frame(width: width - 32, height: 160)
            .cornerRadius(20)
            
            Spacer()
        }
    }
}

struct PageView11_Previews: PreviewProvider {
    static var previews: some View {
        PageView11()
    }
}
