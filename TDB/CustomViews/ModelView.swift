//
//  ModelView.swift
//  TDB
//
//  Created by Trevor Bays on 3/20/22.
//

import SwiftUI
import Model3DView

struct ModelView: View {

    // MARK: -
//    @Binding var isPresented: Bool
    @State private var modelLoaded = false

    @State private var modelName: String

    /**
     We position the (perspective) camera exactly where we want it.
     Angled slightly to add a bit more perspective.
     */
    // Zeroed: [0, 0, 0], fov: 17
    // Top down: [0, 0, 8.0], fov: 25
    // Downward angle: [0, 0, 8.0], fov: 15
    //                        +number = camera farther back ┐
    //                                                      │
    @State private var camera = PerspectiveCamera(position: [0, 0, 4.0], rotation: Euler(x: .degrees(0), y: .degrees(0), z: .degrees(0)), fov: .degrees(17)).lookingAt(center: [0, 0, 0])
    //    @State var camera = PerspectiveCamera()
//    @State var camera = PerspectiveCamera?
    @State private var cameraPos: Vector3
    @State private var cameraRot: Euler
    @State private var cameraFOV: CGFloat

    /**
     The rotation angle(s) of the model. This will change accordingly to `currentIndex`.
     Keep in mind we're rotating the model, *not* the camera.
     */
    // Zeroed: [0, 0, 0]
    // Top down: [-90, 0, 0]
    // Downward angle: [-60, 25, -15]
    //                                          y: +number = facing right ┐
    //                             x: +number = backflip ┐                │           z: ┌ +number = standing on left side
    //                                                   │                │              │
//    @State private var modelRotation = Euler(x: .degrees(0), y: .degrees(0), z: .degrees(0))
//    @State private var modelRotation = Euler(x: .degrees(-45), y: .degrees(45))
    @State private var modelRotation: Euler
    @State private var modelTranslation: Vector3

    @State private var lockZoom: Bool
    @State private var lockPitch: Bool

    init(modelName: String, cameraPos: Vector3, cameraRot: Euler, cameraFOV: CGFloat, modelRotation: Euler, modelTranslation: Vector3, lockZoom: Bool = false, lockPitch: Bool = false) {
        self.modelName = modelName
        self.cameraPos = cameraPos
        self.cameraRot = cameraRot
        self.cameraFOV = cameraFOV
        self.camera = PerspectiveCamera(position: cameraPos, rotation: cameraRot, fov: .degrees(cameraFOV))
        self.modelRotation = modelRotation
        self.modelTranslation = modelTranslation
        self.lockZoom = lockZoom
        self.lockPitch = lockPitch
    }

    var body: some View {
        ZStack {

            Model3DView(named: self.modelName) // 2022_Tesla_Roadster.usdz / model.dae
                .onLoad { state in
                    self.modelLoaded = state == .success
                }

                // Zeroed: [0, 0, 0]
                // Top down: [0, 500, 0]
                // Downward angle: [200, 450, 0]
                //                                 y: +number = up ┐
                //                          x: +number = left ┐    │ z: ┌ +number = model farther back
                //                                            │    │    │
                .transform(rotate: self.modelRotation, translate: self.modelTranslation)
                .cameraControls(OrbitControls(
                    camera: $camera,
                    sensitivity: 0.4,
                    minPitch: .degrees(self.lockPitch ? 0 : -89.9),
                    maxPitch: .degrees(self.lockPitch ? 0 : 89.9),
                    minZoom: self.lockZoom ? 4 : 1,
                    maxZoom: self.lockZoom ? 4 : 10,
                    friction: 0.9
                ))
        }
        /**
         Only show the contents once the model is fully loaded.
         */
        .opacity(modelLoaded ? 1 : 0)
        .background(Color.clear)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ModelView_Previews: PreviewProvider {
    static var previews: some View {
        ModelView(modelName: "2022_Tesla_Roadster.usdz", cameraPos: [0.0, 0.0, 4.0], cameraRot: Euler(x: .degrees(0), y: .degrees(0), z: .degrees(0)), cameraFOV: 17, modelRotation: Euler(x: .degrees(0), y: .degrees(0), z: .degrees(0)), modelTranslation: [0.0, 0.0, 0.0])
    }
}
