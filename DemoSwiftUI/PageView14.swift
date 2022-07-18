//
//  PageView14.swift
//  DemoSwiftUI
//
//  Created by Jake on 2022/7/18.
//

import SwiftUI

struct PageView14: View {
    
    @State var isButton = true
    
    var body: some View {
        
        HStack(spacing: 0) {
            Text("Open")
                .foregroundColor(isButton ? .white : .black)
                .padding(.horizontal, 32)
                .padding(.vertical, 10)
                .background(isButton ? .blue :  .blue.opacity(0.1))
                .clipShape(Capsule())
                .onTapGesture {
                    self.isButton = true
                }
            Text("Close")
                .foregroundColor(isButton ? .black : .white)
                .padding(.horizontal, 32)
                .padding(.vertical, 10)
                .background(isButton ? .blue.opacity(0.1) : .blue)
                .clipShape(Capsule())
                .onTapGesture {
                    self.isButton = false
                }
        }
        .background(.blue.opacity(0.1))
        .clipShape(Capsule())
        
    }
}

struct PageView14_Previews: PreviewProvider {
    static var previews: some View {
        PageView14()
    }
}
