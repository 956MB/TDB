//
//  ModelCellGrid.swift
//  TDB
//
//  Created by Trevor Bays on 7/11/21.
//

import SwiftUI

struct ModelCellGrid: View {

    @StateObject var deeplinkNotif = DeeplinkNotif.shared
    
//    private let listView: ProductListView
    private let productList: ProductList
    @State var cellDisabled: Bool = false
    @State var cellDot: Bool = false


    init(list: ProductList, disabled: Bool, dot: Bool) {
        productList = list
        cellDisabled = disabled
        cellDot = dot
    }

    var body: some View {
//        NavigationLink(destination: listView) {
            VStack {
                ZStack {
                    /// MODEL THUMB
//                    Image(self.productList.products[0].thumbnail)
//                        .resizable()
//                        .scaledToFit()
////                        .aspectRatio(contentMode: .fit)
//                        .frame(height: CGFloat(self.productList.products[0].model_height))
//                        .opacity(0.18)
//                        .saturation(0.0)
//                        .clipped()

                    Color.blue.opacity(0.01)

                    /// MODEL SHORT
                    HStack {
                        Text(self.productList.products[0].title.nameShort)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.primary.opacity(self.cellDisabled ? 0.6 : 1.0))
                    }

                    /// NOTIFICATION DOT
                    if (!self.cellDisabled && self.cellDot) {
                        HStack {
                            Spacer()
                            VStack {
                                VStack(alignment: .trailing) {
                                    Circle()
                                        .fill(Color.green)
                                        .frame(width: 8, height: 8)
                                }
                                Spacer()
                            }.padding([.top, .trailing], 15)
                        }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    }

                }
//                .frame(maxWidth: .infinity, minHeight: 0, maxHeight: 180, alignment: .center)
            }
            .opacity(self.cellDisabled ? 0.35 : 1.0)
            .frame(height: 175, alignment: .center)
            .background(Color.primary.opacity(self.cellDisabled ? 0.04 : 0.05))
            .cornerRadius(15)
//        }
//            .disabled(self.cellDisabled)
//            .onTapGesture {
//                if (self.cellDisabled) {
//                    let generator = UINotificationFeedbackGenerator()
//                    generator.notificationOccurred(.error)
//                }
//            }
    }
}

struct RowThumbnailView_Previews: PreviewProvider {
    static var previews: some View {
        ModelCellGrid(list: MODEL_S_PRODUCTS, disabled: false, dot: false)
            .preferredColorScheme(.dark)
    }
}
