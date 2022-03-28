//
//  Model3List.swift
//  TDB
//
//  Created by Trevor Bays on 7/11/21.
//

import SwiftUI

struct ProductListView: View {


    @Environment(\.presentationMode) var presentationMode
    @GestureState private var dragOffset = CGSize.zero

    @StateObject var deeplinkNotif = DeeplinkNotif.shared

    @State var yearCellSelected: Int?
    @State var matchProductIdx: Int
    
    let productList: ProductList

    init(matchIndex: Int, products: ProductList) {
        self._matchProductIdx = State(initialValue: matchIndex)
        self.productList = products
    }

    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack(spacing: 0) {
                ForEach(0..<self.productList.products.count) { (index) in
                    let matchIndex = index
                    let productViewDest = ProductView(matchProd: self.matchProductIdx, matchYear: matchIndex, productData: self.productList.products[index], modelId: self.productList.productID)
                    
                    if (index >= 1) {
                        Divider().padding([.leading, .trailing], 15)
                    }
                    NavigationLink(destination: productViewDest, tag: index, selection: $yearCellSelected) {
                        ProductCell(matchIndex: self.matchProductIdx, cellIndex: index, product: self.productList.products[index])
                    }
                }
            }
            .padding(.top, 5)
        }
        /// Deeplink load year cell
        .onReceive(self.deeplinkNotif.$year, perform: { year in
            if (!year.isEmpty) {
                self.yearCellSelected = self.productList.years[year]
//                print("YEARSECOND \(year)")
            }
        })
        .navigationBarTitle("Years")
        .navigationBarTitleDisplayMode(.inline)

        // MARK: - Hackish way of doing custom back buttons, no text can be used because the slide in animation doesnt work with this method
        // TODO: - Dont know whether or not to use "Back" on button, or leave just chevron
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: BackButtonCustom(size: 14, text: "", action: {self.presentationMode.wrappedValue.dismiss()} ))
        .gesture(DragGesture().updating($dragOffset, body: { (value, state, transaction) in
            if(value.startLocation.x < 20 && value.translation.width > 90) {
                self.presentationMode.wrappedValue.dismiss()
            }
        }))
//        .navigationBarTitle(self.productList.products[0].title.nameShort)
//        .toolbar {
//            ToolbarShare(buttonAction: { shareProductList() })
//        }
    }

    // TODO: Use created share link later
    func shareProductList() {
        formDeeplinkProductList(modelId: self.productList.productID)
    }
}

struct Model3List_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView(matchIndex: 0, products: MODEL_3_PRODUCTS)
            .preferredColorScheme(.dark)
    }
}
