//
//  SplashView.swift
//  TDB
//
//  Created by Trevor Bays on 5/8/22.
//

import SwiftUI

struct SplashView: View {

    @State private var loadingR = false
    @State private var logoT = false

    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .trim(from: 1/4, to: 1)
                    .stroke(style: StrokeStyle(lineWidth: 6, lineCap: .round, lineJoin: .round))
                    .fill(AngularGradient(gradient: .init(colors: [.black, .white.opacity(0.45)]), center: .center, startAngle: .init(degrees: 130), endAngle: .init(degrees: 380)))
                    .frame(width: 54, height: 54)
                    .rotationEffect(Angle.degrees(loadingR ? 360 : 0))
                    .animation(.linear(duration: 1.8).repeatForever(autoreverses: false), value: loadingR)

                Image("tesla_t")
                    .resizable()
                    .frame(width: 27, height: 27)
                    .opacity(logoT ? 0.45 : 0.06)
                    .animation(.easeOut(duration: 1.5).repeatForever(autoreverses: true), value: logoT)
                    .padding([.top], 3)
            }
            .padding(.bottom, 22)
            .onAppear {
                self.loadingR = true
                self.logoT = true
            }
        }
        .ignoresSafeArea()
        .background(.black)
    }
}

