//
//  ContentView.swift
//  SwiftUITemplet
//
//  Created by Max Kai on 2022/11/16.
//

import SwiftUI

struct MenuIconView: View {
    @State var isRotating: Bool = false
    @State var isHidden: Bool = false
    
    var body: some View {
        VStack(spacing: 14) {
            Rectangle()
                .frame(width: 64, height: 10)
                .cornerRadius(4)
                .rotationEffect(isRotating ? Angle(degrees: 48) : Angle(degrees: 0), anchor: .leading)
            Rectangle()
                .frame(width: 64, height: 10)
                .cornerRadius(4)
                .scaleEffect(x: isHidden ? 0 : 1,
                             y: isHidden ? 0 : 1,
                             anchor: .leading)
            // 調整透明度
                .opacity(isHidden ? 0 : 1)
            Rectangle()
                .frame(width: 64, height: 10)
                .cornerRadius(4)
                .rotationEffect(isRotating ? Angle(degrees: -48) : Angle(degrees: 0), anchor: .leading)
        }
        .padding()
        .onTapGesture {
            // 讓他有點彈性的動畫
            withAnimation(.interpolatingSpring(stiffness: 300, damping: 15)) {
                isRotating.toggle()
                isHidden.toggle()
            }
        }
    }
}

struct MenuIconView_Previews: PreviewProvider {
    static var previews: some View {
        MenuIconView()
    }
}
