//
//  PageView9.swift
//  DemoSwiftUI
//
//  Created by Jake on 2022/7/13.
//

import SwiftUI

struct PageView9: View {
    
    let width = UIScreen.main.bounds.width
    
    var body: some View {
        VStack {
            Text("My Header")
                .font(.largeTitle)
                .padding([.top, .bottom], 20)
            CircleView()
                .frame(width: 200, height: 200)
                .padding()
            
            ZStack {
                Rectangle()
                    .fill(.green)
                    .cornerRadius(10)
                HStack {
                    Text("Green")
                        .foregroundColor(.white)
                        .font(.title3)
                        .padding()
                    Spacer()
                    Text("540")
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                    Text("80%")
                        .foregroundColor(.white)
                        .padding()
                }
            }
            .frame(width: width - 32, height: 60)
            
            ZStack {
                Rectangle()
                    .fill(.yellow)
                    .cornerRadius(10)
                HStack {
                    Text("Yellow")
                        .foregroundColor(.white)
                        .font(.title3)
                        .padding()
                    Spacer()
                    Text("200")
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                    Text("50%")
                        .foregroundColor(.white)
                        .padding()
                }
            }
            .frame(width: width - 32, height: 60)
            
            ZStack {
                Rectangle()
                    .fill(.red)
                    .cornerRadius(10)
                HStack {
                    Text("Green")
                        .foregroundColor(.white)
                        .font(.title3)
                        .padding()
                    Spacer()
                    Text("100")
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                    Text("20%")
                        .foregroundColor(.white)
                        .padding()
                }
            }
            .frame(width: width - 32, height: 60)
            
            Spacer()
        }
    }
}

struct CircleView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Circle()
                    .stroke(.gray.opacity(0.2), lineWidth: 16)
                Circle()
                    .trim(from: 0, to: 0.8)
                    .stroke(.green, style: StrokeStyle(lineWidth: 16, lineCap: .round))
                    .rotationEffect(.degrees(-90))
                
                Circle()
                    .stroke(.gray.opacity(0.2), lineWidth: 16)
                    .frame(width: geometry.size.width - 45, height: geometry.size.width - 45)
                Circle()
                    .trim(from: 0, to: 0.5)
                    .stroke(.yellow, style: StrokeStyle(lineWidth: 16, lineCap: .round))
                    .rotationEffect(.degrees(-90))
                    .frame(width: geometry.size.width - 45, height: geometry.size.width - 45)
                
                Circle()
                    .stroke(.gray.opacity(0.2), lineWidth: 16)
                    .frame(width: geometry.size.width - 90, height: geometry.size.width - 90)
                Circle()
                    .trim(from: 0, to: 0.2)
                    .stroke(.red, style: StrokeStyle(lineWidth: 16, lineCap: .round))
                    .rotationEffect(.degrees(-90))
                    .frame(width: geometry.size.width - 90, height: geometry.size.width - 90)
            }
        }
    }
}

struct PageView9_Previews: PreviewProvider {
    static var previews: some View {
        PageView9()
    }
}
