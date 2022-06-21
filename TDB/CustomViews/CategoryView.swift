//
//  CategoryView.swift
//  TDB
//
//  Created by Trevor Bays on 3/20/22.
//

import SwiftUI

struct CategoryView: View {

    @StateObject var deeplinkNotif = DeeplinkNotif.shared
    @State var modelCellSelected: Int?
    
    private var categoryHeader: String
    private var categoryRows: [ProductList]

    init(header: String, rows: [ProductList]) {
        self.categoryHeader = header
        self.categoryRows   = rows
    }

    var body: some View {
        EmptyView()

//        Section(header: CategoryHeader(useText: self.categoryHeader)) {
////            List {
//                ForEach(0..<self.categoryRows.count) { (index) in
//                    let modelDisabled = self.categoryRows[index].model_disabled
////                    if (index >= 1) {
////                        Divider()
////                    }
//
//                    if (self.categoryRows[index].products.count <= 1) {
//                        NavigationLink(destination: ProductView(productData: self.categoryRows[index].products[0], modelId: self.categoryRows[index].productID), tag: index, selection: $modelCellSelected) {
//                            ModelCellList(list: self.categoryRows[index], disabled: modelDisabled, dot: false)
//    ////                                    ModelCellGrid(list: self.useModels[index], disabled: modelDisabled, dot: false)
//                        }
//                        .disabled(modelDisabled)
//                        .opacity(modelDisabled ? 0.35 : 1.0)
//                    } else {
//                        NavigationLink(destination: ProductListView(products: self.categoryRows[index]), tag: index, selection: $modelCellSelected) {
//                            ModelCellList(list: self.categoryRows[index], disabled: modelDisabled, dot: false)
//    ////                                    ModelCellGrid(list: self.useModels[index], disabled: modelDisabled, dot: false)
//                        }
//                        .disabled(modelDisabled)
//                        .opacity(modelDisabled ? 0.35 : 1.0)
//                    }
//                }
////            }
//        }
//        .padding(.leading, 20).padding(.trailing, 20)
////        .padding(.bottom, 20)
//        .cornerRadius(15)
////        .background(.red.opacity(0.3))
//
//        /// Deeplink load model cell
//        .onReceive(self.deeplinkNotif.$model, perform: { model in
//            if (model != -1) {
//                print("MODELFIRST \(model)")
//                self.modelCellSelected = model
//            }
//        })
    }
}

struct CategoryHeader: View {

    let useText: String

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(useText.localized())
                .font(.system(size: 14))
                .foregroundColor(.secondary)
        }
//        .padding(.horizontal)
        .padding(.leading, -3)
//        .padding(.trailing, 20)
        .padding(.top, 25)
        .padding(.bottom, 5)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(Binding.constant(0), matchProd: 0, matchYear: 0, curRow: 0, header: "Header", rows: [ProductRow(title: "Title", values: ["Value1", "Value2"])])
    }
}
