//
//  ObservableObjects.swift
//  TDB
//
//  Created by Trevor Bays on 3/18/22.
//

import Foundation

public class DeeplinkNotif: ObservableObject {
    static let shared = DeeplinkNotif()

    @Published var model : Int = -1
    @Published var year : String = ""
    @Published var trim : Int = -1
}

public class NewContentNotif: ObservableObject {
    static let shared = NewContentNotif()

    @Published var newContentList : [NewContent] = [ NewContent(1, 0, [0, 1, 2, 10]), NewContent(6, 1, [1, 2]) ]

    /// Checks if supplied productIndex has NewContent.
    /// - Parameter prodIndex: product index (Int)
    /// - Returns: True/False (Bool)
    func containsProduct(_ prodIndex: Int) -> Bool {
        let prodFound = newContentList.filter{ $0.productIndex == prodIndex }.count > 0
        return prodFound
    }

    /// Checks if supplied yearIndex and matching productIndex has NewContent.
    /// - Parameters:
    ///   - prodIndex: product index (Int)
    ///   - yearIndex: year index (Int)
    /// - Returns: True/False (Bool)
    func containsProductAndYear(_ prodIndex: Int, _ yearIndex: Int) -> Bool {
        let prodFound = newContentList.filter{ $0.productIndex == prodIndex }
        if (prodFound.count > 0) {
            let yearFound = prodFound.filter{ $0.yearIndex == yearIndex }.count > 0
            return yearFound
        }
        return false
    }

    /// Checks if supplied rowIndex with matching productIndex and yearIndex has NewContent.
    /// - Parameters:
    ///   - prodIndex: product index (Int)
    ///   - yearIndex: year index (Int)
    ///   - rowIndex: row index (Int)
    /// - Returns: True/False (Bool)
    func containsProductAndYearAndRow(_ prodIndex: Int, _ yearIndex: Int, _ rowIndex: Int) -> Bool {
        let prodFound = newContentList.filter{ $0.productIndex == prodIndex }
        if (prodFound.count > 0) {
            let yearFound = prodFound.filter{ $0.yearIndex == yearIndex }
            if (yearFound.count > 0) {
                let rowFound = yearFound.filter{ $0.rowsIndexes.contains(rowIndex) }.count > 0
                return rowFound
            }
        }
        return false
    }

    /// Removes entire NewContent entry from productIndex. Used after ProductView is exited.
    /// - Parameter prodIndex: product index (Int)
    /// - Parameter yearIndex: year index (Int)
    func removeNewContentEntry(_ prodIndex: Int, _ yearIndex: Int) {
        let prodFound = newContentList.filter{ $0.productIndex == prodIndex }
        if (prodFound.count > 0) {
            let yearFound = prodFound.filter{ $0.yearIndex == yearIndex }
            if (yearFound.count >= 1) {
                self.newContentList.removeAll{ $0 == yearFound[0] }
            }
        }
    }
}
