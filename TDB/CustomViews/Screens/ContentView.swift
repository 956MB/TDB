//
//  ContentView.swift
//  TDB
//
//  Created by Trevor Bays on 7/8/21.
//

import SwiftUI

struct ContentView: View {

    @StateObject var deeplinkNotif = DeeplinkNotif.shared

    let useModels : [ProductList] = [MODEL_S_PRODUCTS, MODEL_3_PRODUCTS, MODEL_X_PRODUCTS, MODEL_Y_PRODUCTS, CYBERTRUCK_PRODUCTS, ATV_PRODUCTS, ROADSTER_PRODUCTS, SEMI_PRODUCTS, SOLAR_ROOF_PRODUCTS, SOLAR_PANELS_PRODUCTS, POWERWALL_PRODUCTS, AUTOPILOT_PRODUCTS]

    let spaceName = "scroll"
    @State var modelCellSelected: Int?
    @State var wholeSize: CGSize = .zero
    @State var scrollViewSize: CGSize = .zero

    var body: some View {
        NavigationView {
            ChildSizeReader(size: $wholeSize) {
                ScrollView(.vertical, showsIndicators: true) {
                    ChildSizeReader(size: $scrollViewSize) {
                        VStack(spacing: 0) {
                            ForEach(0..<self.useModels.count) { (index) in
                                let modelDisabled = self.useModels[index].productDisabled
                                let matchIndex = index

                                if (!self.useModels[index].useHeader.isEmpty) {
                                    CategoryHeader(useText: self.useModels[index].useHeader)
                                } else {
                                    Divider()
                                }

                                if (self.useModels[index].products.count <= 1) {
                                    // ONLY ONE MODEL, SKIP MODELS VIEW
                                    NavigationLink(destination: ProductView(matchProd: matchIndex, matchYear: 0, productData: self.useModels[index].products[0], modelId: self.useModels[index].productID), tag: index, selection: $modelCellSelected) {
                                        ModelCellList(index: matchIndex, list: self.useModels[index], disabled: modelDisabled, dot: (Int.random(in: 0..<2) != 0) ? true : false)
                ////                                    ModelCellGrid(list: self.useModels[index], disabled: modelDisabled, dot: true)
                                    }
                                    .disabled(modelDisabled)
                                } else {
                                    NavigationLink(destination: ProductListView(matchIndex: matchIndex, products: self.useModels[index]), tag: index, selection: $modelCellSelected) {
                                        ModelCellList(index: matchIndex, list: self.useModels[index], disabled: modelDisabled, dot: (Int.random(in: 0..<2) != 0) ? true : false)
                ////                                    ModelCellGrid(list: self.useModels[index], disabled: modelDisabled, dot: true)
                                    }
                                    .disabled(modelDisabled)
                                }
                            }
                        }
                        .padding([.leading, .trailing], 15)
                        
                        /// Deeplink load model cell
                        .onReceive(self.deeplinkNotif.$model, perform: { model in
                            if (model != -1) {
                                self.modelCellSelected = model
//                                print("MODELFIRST \(model)")
                            }
                        })
                        /// Scrollview reader
                        .background(
                            GeometryReader { proxy in
                                Color.clear.preference(
                                    key: ViewOffsetKey.self,
                                    value: -1 * proxy.frame(in: .named(spaceName)).origin.y
                                )
                            }
                        )
                        ///
//                        .onPreferenceChange(
//                            ViewOffsetKey.self,
//                            perform: { value in
//                                print("offset: \(value)") // offset: 1270.3333333333333 when User has reached the bottom
//                                print("height: \(scrollViewSize.height)") // height: 2033.3333333333333
//
//                                if value >= (scrollViewSize.height - wholeSize.height) - 48 {
//                                    print("User has reached the bottom of the ScrollView.")
//                                } else {
//                                    print("not reached.")
//                                }
//                            }
//                        )
                    }
                }
                .padding(.top, -10)
                .coordinateSpace(name: spaceName)
//                .safeAreaInset(edge: .top, spacing: 0) {
//                    Color.black.frame(height: 48)
//                }
//                .navigationBarTitle("Models")
                .toolbar {
                    HStack(alignment: .center, spacing: 15) {
                        ToolbarButton(buttonImage: "questionmark", buttonSize: 17, buttonAction: {  })
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(false)
                .edgesIgnoringSafeArea(.bottom)
            }
            .onChange(
                of: scrollViewSize,
                perform: { value in
                    print(value)
                }
            )
        }
    }
}


// MARK: Scroll view reading
//
struct ViewOffsetKey: PreferenceKey {
  typealias Value = CGFloat
  static var defaultValue = CGFloat.zero
  static func reduce(value: inout Value, nextValue: () -> Value) {
    value += nextValue()
  }
}
struct ChildSizeReader<Content: View>: View {
  @Binding var size: CGSize

  let content: () -> Content
  var body: some View {
    ZStack {
      content().background(
        GeometryReader { proxy in
          Color.clear.preference(
            key: SizePreferenceKey.self,
            value: proxy.size
          )
        }
      )
    }
    .onPreferenceChange(SizePreferenceKey.self) { preferences in
      self.size = preferences
    }
  }
}
struct SizePreferenceKey: PreferenceKey {
  typealias Value = CGSize
  static var defaultValue: Value = .zero

  static func reduce(value _: inout Value, nextValue: () -> Value) {
    _ = nextValue()
  }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
