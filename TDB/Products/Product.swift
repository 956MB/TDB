//
//  Product.swift
//  TDB
//
//  Created by Trevor Bays on 7/9/21.
//

import SwiftUI

struct ProductTitle: Hashable {
    let nameFull: String
    let nameShort: String
    let year: String
}

struct ProductSection: Hashable {
    let header: String
    let rows: [ProductRow]
}

struct ProductRow: Hashable {
    let title: String
    let values: [String]
}

struct ProductTrim: Hashable {
    let title: String
    let index: Int
}

struct CategoriesList: Hashable {
    let headers: [Int]
    let productList: [ProductList]
}

struct ProductList: Hashable {
    let products: [Product]
    let years: [String:Int]
    let yearsSpan: String
    let productDisabled: Bool
    let useHeader: String
    let productID: ProductIdentifier
    let categoryImage: String
}

struct Product: Hashable {
    let title: ProductTitle
    let thumbnail: String
    let model_dae: String
    let model_usdz: String
    let model_height: Int
    let preview_w: CGFloat
    let preview_h: CGFloat
    let header_min_h: CGFloat
    let previews: [String]
    let trims: [ProductTrim]
    let sections: [ProductSection]
}

struct NewContent: Hashable {
    let productIndex: Int
    let yearIndex: Int
    let rowsIndexes: [Int]

    init(_ productI: Int, _ yearI: Int, _ rowsI: [Int]) {
        self.productIndex = productI
        self.yearIndex = yearI
        self.rowsIndexes = rowsI
    }
}
