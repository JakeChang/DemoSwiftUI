//
//  PageView8.swift
//  DemoSwiftUI
//
//  Created by Jake Chang on 2022/7/12.
//

import SwiftUI

struct PageView8: View {
    
    let width = UIScreen.main.bounds.width
    
    var body: some View {
        ZStack {
            Color.gray.opacity(0.2).edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack {
                    HStack(spacing: 16) {
                        ZStack {
                            Rectangle()
                                .fill(.white)
                                .cornerRadius(10)
                            VStack() {
                                Text("Title 1")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.largeTitle)
                                    .padding()
                                
                                CircleProgressView(progress: 0.3)
                                    .frame(maxWidth: .infinity)
                                    .padding([.leading, .trailing], 30)
                            }
                        }
                        .frame(width: (width - 16 * 3)/2, height: 260)
                        
                        ZStack {
                            Rectangle()
                                .fill(.white)
                                .cornerRadius(10)
                            VStack() {
                                Text("Title 2")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.largeTitle)
                                    .padding()
                                
                                CharbarView(datas: [10, 2, 30, 12])
                                    .frame(maxWidth: .infinity)
                                    .padding([.leading, .trailing], 10)
                                    .padding([.top, .bottom], 15)
                                
                            }
                        }
                        .frame(width: (width - 16 * 3)/2, height: 260)
                        
                    }
                }
            }
        }
    }
}

struct PageView8_Previews: PreviewProvider {
    static var previews: some View {
        PageView8()
    }
}
