//
//  PageView5.swift
//  DemoSwiftUI
//
//  Created by Jake on 2022/7/11.
//

import SwiftUI

struct PageView5: View {
    
    @State var progress: Double
    
    var body: some View {
        VStack() {
            CircleProgressView(progress: self.progress)
                .frame(width: 250, height: 250)
                .padding()
            
            Spacer()
            
            Button(action: {
                if self.progress >= 1 {
                    self.progress = 0
                }
                else {
                    self.progress = 1
                }
            }, label: {
                Text("START")
                    .frame(width: 300, height: 50)
                    .font(.title2)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(20)
            })
        }
    }
}

struct CircleProgressView: View {
    
    let progress: Double
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(
                    Color.pink.opacity(0.5), lineWidth: 30)
            Circle()
                .trim(from: 0, to: progress)
                .stroke(
                    Color.pink,
                    style: StrokeStyle(
                        lineWidth: 30,
                        lineCap: .round
                    )
                )
                .rotationEffect(.degrees(-90))
                .animation(.easeOut(duration: 2), value: progress)
        }
    }
}

struct PageView5_Previews: PreviewProvider {
    static var previews: some View {
        PageView5(progress: 0)
    }
}
