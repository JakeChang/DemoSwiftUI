//
//  PageView4.swift
//  DemoSwiftUI
//
//  Created by Jake on 2022/7/10.
//

import SwiftUI

struct PageView4: View {
    
    let width = UIScreen.main.bounds.width
    
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(1...10, id:\.self) { item in
                            Rectangle()
                                .fill(.orange)
                                .frame(width: 200, height: 100)
                                .cornerRadius(20)
                        }
                    }
                    .padding(16)
                }
                
                Spacer()
                
                VStack(spacing: 16) {
                    ForEach(1...20, id:\.self) { item in
                        let red = Double.random(in: 0.0...255.0) / 255.0
                        let green = Double.random(in: 0.0...255.0) / 255.0
                        let blue = Double.random(in: 0.0...255.0) / 255.0
                        
                        Rectangle()
                            .fill(Color(red: red, green: green, blue: blue))
                            .frame(width: width - 32, height: 200)
                            .cornerRadius(20)
                    }
                }
            }
        }
    }
}

struct PageView4_Previews: PreviewProvider {
    static var previews: some View {
        PageView4()
    }
}
