//
//  PageView6.swift
//  DemoSwiftUI
//
//  Created by Jake on 2022/7/11.
//

import SwiftUI

struct PageView6: View {
    
    var datas: [Int] = [3, 20, 50, 70, 100, 90, 20]
    
    var body: some View {
        CharbarView(datas: self.datas)
            .frame(width: 300, height: 400)
    }
}

struct CharbarView: View {
    
    let datas: [Int]
    
    var body: some View {
        GeometryReader { geometry in
            let w = (geometry.size.width - CGFloat(datas.count + 1) * 8) / CGFloat(datas.count)
    
            HStack(alignment: .bottom) {
                ForEach(datas, id:\.self) { item in
                    let h = ((geometry.size.height - 20) * CGFloat(item)) / CGFloat(datas.max()!)
                    VStack(spacing: 0) {
                        Rectangle()
                            .fill(.pink.opacity(0.5))
                            .frame(width: w, height: h)
                        Text("\(item)")
                            .frame(height: 20)
                    }
                }
            }
            .padding([.leading, .trailing], 8)
        }
    }
}

struct PageView6_Previews: PreviewProvider {
    static var previews: some View {
        PageView6()
    }
}
