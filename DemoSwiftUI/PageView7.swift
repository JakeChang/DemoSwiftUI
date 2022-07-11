//
//  PageView7.swift
//  DemoSwiftUI
//
//  Created by Jake on 2022/7/11.
//

import SwiftUI

struct PageView7: View {
    
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height

    var datas: [Int] = []
    
    init() {
        self.datas = setData()
    }
    
    var body: some View {
        VStack {
        LineView(datas: self.datas)
            .frame(width: width, height: 160)
        }
        .frame(width: width, height: height)
        .background(.pink)
    }
    
    func setData() -> [Int] {
        var array: [Int] = []
        for _ in 1...7 {
            array.append(Int.random(in: 0...100))
        }
        
        return array
    }
}

struct LineView: View {
    
    let datas: [Int]
    
    var body: some View {
        GeometryReader { geometry in
            let w = geometry.size.width  / CGFloat(datas.count - 1)
            
            Path { path in
                for i in 0..<datas.count {
                    let h = geometry.size.height - ((geometry.size.height) * CGFloat(datas[i])) / CGFloat(datas.max()!)
                    if i == 0 {
                        path.move(to: CGPoint(x: 0, y: h))
                    }
                    else {
                        path.addLine(to: CGPoint(x: w * CGFloat(i), y: h))
                    }
                }
            }
            .stroke(Color.white, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
        }
    }
}

struct PageView7_Previews: PreviewProvider {
    static var previews: some View {
        PageView7()
    }
}
