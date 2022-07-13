//
//  PageView10.swift
//  DemoSwiftUI
//
//  Created by Jake on 2022/7/13.
//

import SwiftUI

struct PageView10: View {
    
    var progress: Float = 50
    
    var body: some View {
        
        VStack {
            ZStack {
                Circle()
                    .trim(from: 0, to: 0.8)
                    .stroke(.gray.opacity(0.2), style: StrokeStyle(lineWidth: 20, lineCap: .round))
                    .rotationEffect(.degrees(126))
                    .frame(width: 160, height: 160)
                    .padding(.top, 40)
                /*
                 trim 的每 0.25 佔掉 45 角度
                 .trim(from: 0, to: 0.75)
                 .rotationEffect(.degrees(90+45))
                 
                 所以表示 45/25 = 1.8 。每 1 角度 佔掉 1.8
                 .trim(from: 0, to: 0.75+0.05)
                 .rotationEffect(.degrees(90+45-1.8*5))
                 */
                
                Circle()
                    .trim(from: 0, to: 0.8 * CGFloat(progress/100))
                    .stroke(.pink, style: StrokeStyle(lineWidth: 20, lineCap: .round))
                    .rotationEffect(.degrees(126))
                    .frame(width: 160, height: 160)
                    .padding(.top, 40)
            }
            
            Spacer()
        }
    }
}

struct PageView10_Previews: PreviewProvider {
    static var previews: some View {
        PageView10()
    }
}
