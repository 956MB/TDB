//
//  SceneKitOnSwiftUIView.swift
//  TDB
//
//  Created by Trevor Bays on 3/19/22.
//

import SwiftUI
import SceneKit

struct SceneKitOnSwiftUIView: View {

    @State var modelName: String

    var body: some View {
        WrappedSceneKit1View(modelName: modelName)
    }
}

struct SceneKitOnSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SceneKitOnSwiftUIView(modelName: "roadster.dae")
    }
}


struct WrappedSceneKit1View: UIViewRepresentable {

    @State var modelName: String

    typealias UIViewType = SCNView

    init(modelName: String) {
        self.modelName = modelName
    }

    func makeUIView(context: Context) -> SCNView {

        let scene = SCNScene(named: self.modelName)
        let scnView = SCNView()
        scnView.scene = scene

//        // 2: Add camera node
//        let cameraNode = SCNNode()
//        cameraNode.camera = SCNCamera()
//        // 3: Place camera
//        cameraNode.position = SCNVector3(x: 0, y: 10, z: 7.5)
////        cameraNode.position.z = 40
//        cameraNode.camera?.fieldOfView = 2.0
//        cameraNode.worldPosition.z = 7.5
//        // 4: Set camera on scene
//        scene?.rootNode.addChildNode(cameraNode)

//        /// test camera
//        let cameraEye = SCNNode()
//        let cameraFocus = SCNNode()
//
//        cameraEye.name = "Camera Eye"
//        cameraFocus.name = "Camera Focus"
//
//        cameraFocus.isHidden = true
//        cameraFocus.position  =  SCNVector3(x: 0, y: 50, z: 30)
//
//        cameraEye.camera = SCNCamera()
//        cameraEye.constraints = []
//        cameraEye.position = SCNVector3(x: 80, y: 15, z: 75.6)
//
//        let vConstraint = SCNLookAtConstraint(target: cameraFocus)
//        vConstraint.isGimbalLockEnabled = false
//        cameraEye.constraints = [vConstraint]
//
//        scene?.rootNode.addChildNode(cameraEye)
//        scene?.rootNode.addChildNode(cameraFocus)


//        let camera = SCNNode()
//        camera.name = "Camera"
//        camera.position = SCNVector3(x: 0.0, y: 0.0, z: 0.0)
//        camera.camera = SCNCamera()
//        scene?.rootNode.addChildNode(camera)


        // 5: Adding light to scene
        let lightNode = SCNNode()
        lightNode.light = SCNLight()
        lightNode.light?.type = .omni
        lightNode.position = SCNVector3(x: 0, y: 10, z: 35)
        scene?.rootNode.addChildNode(lightNode)

        // 6: Creating and adding ambient light to scene
        let ambientLightNode = SCNNode()
        ambientLightNode.light = SCNLight()
        ambientLightNode.light?.type = .ambient
        ambientLightNode.light?.color = UIColor.white
        ambientLightNode.light?.castsShadow = true
//        ambientLightNode.light?.intensity = 60
        scene?.rootNode.addChildNode(ambientLightNode)

        // Allow user to manipulate camera
        scnView.allowsCameraControl = true

        // Show FPS logs and timming
//        scnView.showsStatistics = true

        // Set background color
        scnView.backgroundColor = UIColor.clear

        // Allow user translate image
        scnView.cameraControlConfiguration.allowsTranslation = false

        // Set scene settings
        scnView.scene = scene

        return scnView
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {

    }
}
