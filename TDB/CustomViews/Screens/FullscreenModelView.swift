//
//  FullscreenModelView.swift
//  TDB
//
//  Created by Trevor Bays on 3/18/22.
//

import SwiftUI
import SceneKit
import Model3DView

struct FullscreenModelView: View {

    @Environment(\.presentationMode) var presentationMode

    @State var imageName : String
    @State var modelName = ""

    // MARK: - Fullscreen model starting values
    @State private var fullscreenCameraPos : Vector3 = [0.0, 0.0, 8.0]
    @State private var fullscreenCameraRot : Euler = Euler(x: .degrees(0), y: .degrees(0), z: .degrees(0))
    @State private var fullscreenCameraFOV : CGFloat = 25
    @State private var fullscreenModelRotation : Euler = Euler(x: .degrees(-60), y: .degrees(25), z: .degrees(-15))
    @State private var fullscreenModelTranslation : Vector3 = [0, 0, 0] // usdz: [200, 450, 0], dae: [0, 0, 0]

    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)

            /// SceneKit UIViewRepresentable version
//            SceneKitOnSwiftUIView(modelName: self.modelName)
//                .scaledToFit()
//                .edgesIgnoringSafeArea(.all)

            /// Model3DView package version
            ModelView(modelName: self.modelName, cameraPos: fullscreenCameraPos, cameraRot: fullscreenCameraRot, cameraFOV: fullscreenCameraFOV, modelRotation: fullscreenModelRotation, modelTranslation: fullscreenModelTranslation)

            HStack {
                Button(action: {
                    withAnimation(.spring()) {
                        presentationMode.wrappedValue.dismiss()
                    }
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .font(.system(size: 35))
                        .foregroundColor(.white.opacity(0.25))
                }
                .padding([.top, .leading], 30)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)

        }
        .statusBar(hidden: true) // << here !!
        .edgesIgnoringSafeArea(.all)
//        .onTapGesture {
//            withAnimation(.spring()) {
//                presentationMode.wrappedValue.dismiss()
//            }
//        }
    }
}

struct FullscreenModelView_Previews: PreviewProvider {
    static var previews: some View {
        FullscreenModelView(imageName: MODEL_3_PRODUCTS.products[0].thumbnail, modelName: "2022_Tesla_Roadster.usdz")
    }
}
