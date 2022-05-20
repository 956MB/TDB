//
//  ProductView.swift
//  TDB
//
//  Created by Trevor Bays on 7/9/21.
//

import SwiftUI
import Model3DView

struct ProductView: View {

    @Environment(\.presentationMode) var presentationMode
    @GestureState private var dragOffset = CGSize.zero
    
    @StateObject var deeplinkNotif = DeeplinkNotif.shared
    @StateObject var newContentNotif = NewContentNotif.shared

    @State var matchProductIdx: Int
    @State var matchYearIdx: Int
    var product: Product
    var modelId: ProductIdentifier

    @State var index       = 0
    @State var pickerIndex = 0
    @State var favorite = false
    @State private var fullscreenPresented = false
    @State private var showingPopover = false

    // MARK: - Preview model starting values
    @State private var fullscreenCameraPos : Vector3 = [0.0, 0.0, 4.0]
    @State private var fullscreenCameraRot : Euler = Euler(x: .degrees(0), y: .degrees(0), z: .degrees(0))
    @State private var fullscreenCameraFOV : CGFloat = 17
    @State private var fullscreenModelRotation : Euler = Euler(x: .degrees(0), y: .degrees(0), z: .degrees(0))
    @State private var fullscreenModelTranslation : Vector3 = [0.0, -20.0, 0.0] // usdz: y:-50.0, dae: y: -20.0

    init(matchProd: Int, matchYear: Int, productData: Product, modelId: ProductIdentifier) {
        self._matchProductIdx = State(initialValue: matchProd)
        self._matchYearIdx = State(initialValue: matchYear)
        self.product = productData
        self.modelId = modelId

        UITableView.appearance().separatorStyle = .none
    }

    var body: some View {
        var rowCount = 0
        
        ScrollView(.vertical, showsIndicators: true) {
            VStack(spacing: 0) {

//                ZStack {
//                    StickyHeader(minHeight: self.product.header_min_h) {
////                        Image(self.product.previews[0])
////                            .resizable()
////                            .scaledToFill()
////                            .frame(width: self.product.preview_w, height: self.product.preview_h, alignment: .top)
////                            .clipped()
////                            .saturation(0.0)
//
//                        /// SceneKit UIViewRepresentable version
////                        SceneKitOnSwiftUIView(modelName: self.product.model_dae)
////                            .edgesIgnoringSafeArea(.all)
//
//                        /// Model3DView package version
//                        ModelView(modelName: self.product.model_dae, cameraPos: fullscreenCameraPos, cameraRot: fullscreenCameraRot, cameraFOV: fullscreenCameraFOV, modelRotation: fullscreenModelRotation, modelTranslation: fullscreenModelTranslation, lockZoom: true, lockPitch: true)
////                            .edgesIgnoringSafeArea(.all)
//                    }
//
////                    Color.blue.opacity(0.01)
//                }
//                .onTapGesture {
//                    withAnimation(.spring()) {
//                        self.fullscreenPresented.toggle()
//                    }
//                }

                VStack(spacing: 0) {
                    TitleView(title: self.product.title)
                        .padding(.leading, 15).padding(.trailing, 15)

                    /// PICKER: only visible if 1 or more trims
                    if (self.product.trims.count >= 1) {
                        VStack(spacing: 0) {
                            Picker("Options", selection: $pickerIndex) {
                                ForEach(0 ..< self.product.trims.count) {
                                    Text(self.product.trims[$0].title)
                                }
                            }.pickerStyle(SegmentedPickerStyle())
                        }.padding(.leading, 15).padding(.trailing, 15).padding(.top, 20).padding(.bottom, 5)
                    }

                    VStack(spacing: 0) {
                        ForEach(0..<self.product.sections.count) { (index) in
                            SectionView(self.$pickerIndex, matchProd: self.matchProductIdx, matchYear: self.matchYearIdx, curRow: rowCount, header: self.product.sections[index].header.localized(), rows: self.product.sections[index].rows)

                            Execute {
                                rowCount += self.product.sections[index].rows.count
                            }
                        }
                    }.padding(.bottom, 40)
                }
//                .debugBackground()
            }
            .padding(.top, 105) // TODO: ONLY IF NO IMAGES

            .toolbar {
                HStack(alignment: .center, spacing: 15) {
//                    ToolbarButton(buttonImage: "arrow.up.left.and.arrow.down.right", buttonSize: 17, buttonAction: { withAnimation(.spring()) { self.fullscreenPresented.toggle() } })
//                        .padding(.top, 1)
                    ToolbarButton(isMenu: true, buttonImage: "square.and.arrow.up", buttonSize: 17, buttonAction: {  }, shareLink: self.copyProductViewLink())
                }
            }
        }

        .ignoresSafeArea(.container, edges: .vertical)
        // MARK: - Hackish way of doing custom back buttons, no text can be used because the slide in animation doesnt work with this method
        // TODO: - Dont know whether or not to use "Back" on button, or leave just chevron
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: BackButtonCustom(size: 14, text: "", action: {self.presentationMode.wrappedValue.dismiss()} ))
        .gesture(DragGesture().updating($dragOffset, body: { (value, state, transaction) in
            if(value.startLocation.x < 20 && value.translation.width > 90) {
                self.presentationMode.wrappedValue.dismiss()
            }
        }))

        /// 3D: Fullscreen cover view for 3D models
//        .statusBar(hidden: true) // << here !!
//        .fullScreenCover(isPresented: $fullscreenPresented) {
//            // TODO: - get model3dview values before opening fullscreen view, that way we can pass the rotation values from the small preview onto the fullscreen one
//            FullscreenModelView(imageName: self.product.previews[0], modelName: self.product.model_dae)
////            FullscreenModelView(imageName: self.product.previews[0], modelName: self.product.model_usdz)
//        }

        /// Deeplink load trim
        .onReceive(self.deeplinkNotif.$trim, perform: { trim in
            if ((trim != -1) && (trim < self.product.trims.count)) {
//                print("TRIMSECOND_SET \(trim)")
                self.pickerIndex = trim
            } else {
//                print("TRIMSECOND_RE \(trim)")
                self.pickerIndex = 0
            }
        })
        /// Remove new content entry after leaving ProductView
        .onDisappear(perform: {
            self.newContentNotif.removeNewContentEntry(self.matchProductIdx, self.matchYearIdx)
        })
    }

    // TODO: Use created share link later
    func copyProductViewLink() -> String {
        return formDeeplinkProductTrim(modelId: self.modelId, year: self.product.title.year, trim: self.pickerIndex)
    }


    // MARK: Better sticky header
    // TODO: Mess around with sticky header height, car image needs to be a bit smaller and farther away from top of screen
//    struct StickyHeader<Content: View>: View {
//
//        var minHeight: CGFloat
//        var content: Content
//
//        init(minHeight: CGFloat = 250, @ViewBuilder content: () -> Content) {
//            self.minHeight = minHeight
//            self.content = content()
//        }
//
//        var body: some View {
//            GeometryReader { geo in
//                if(geo.frame(in: .global).minY <= 0) {
//                    content
//                        .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
//                } else {
//                    content
//                        .offset(y: -geo.frame(in: .global).minY)
//                        .frame(width: geo.size.width, height: geo.size.height + geo.frame(in: .global).minY)
//                }
//            }.frame(minHeight: minHeight)
//        }
//    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(matchProd: 0, matchYear: 0, productData: SOLAR_ROOF_PRODUCT, modelId: ProductIdentifier._roof)
            .preferredColorScheme(.dark)
    }
}
