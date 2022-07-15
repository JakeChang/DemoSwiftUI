//
//  PageView12.swift
//  DemoSwiftUI
//
//  Created by Jake on 2022/7/15.
//

import SwiftUI

struct PageView12: View {
    var body: some View {
        
        ZStack {
            Circle()
                .stroke(.gray.opacity(0.3), lineWidth: 20)
            
            Circle()
                .trim(from: 0, to: 0.75)
                .stroke(
                    LinearGradient(colors: [Color(red: 0, green: 229.0/255.0, blue: 1), Color(red: 18.0/255.0, green: 0, blue: 1)], startPoint: .top, endPoint: .bottom),
                    style: StrokeStyle(
                        lineWidth: 30,
                        lineCap: .round
                    )
                )
                .rotationEffect(.degrees(-90))
        }
        .frame(width: 200, height: 200)
    }
}

struct PageView12_Previews: PreviewProvider {
    static var previews: some View {
        PageView12()
    }
}
