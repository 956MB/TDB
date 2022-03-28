//
//  URL+Ext.swift
//  TDB
//
//  Created by Trevor Bays on 3/17/22.
//

import Foundation
import SwiftUI

enum ProductIdentifier: Int, Hashable {
    /// grid
//    case _s, _cybertruck, _3, _atv, _x, _roadster, _y, _semi
    /// list
    case _s=0, _3=1, _x=2, _y=3, _cybertruck=4, _atv=5, _roadster=6, _semi=7, _roof=8, _panels=9, _wall=10, _autopilot=11
}

//enum PowerIdentifier: Int, Hashable {
//    case _roof=0, _panels=1, _wall=2
//}
let modelStrings = [ ProductIdentifier._s:"F80F47E3A385", ProductIdentifier._3:"9591FCD651CE", ProductIdentifier._x:"2E499B1FEFB4", ProductIdentifier._y:"817677AB66B7", ProductIdentifier._cybertruck:"2680AF4B984E", ProductIdentifier._atv:"58A41D88F70D", ProductIdentifier._roadster:"F1C2DE94C57A", ProductIdentifier._semi:"921A0A098485", ProductIdentifier._roof:"8EA773BFB41B", ProductIdentifier._panels:"94AEA7F0923E", ProductIdentifier._wall:"E77FAC7CD93F", ProductIdentifier._autopilot:"425C10615782" ]
let modelEnums = [ "F80F47E3A385":ProductIdentifier._s, "9591FCD651CE":ProductIdentifier._3, "2E499B1FEFB4":ProductIdentifier._x, "817677AB66B7":ProductIdentifier._y, "2680AF4B984E":ProductIdentifier._cybertruck, "58A41D88F70D":ProductIdentifier._atv, "F1C2DE94C57A":ProductIdentifier._roadster, "921A0A098485":ProductIdentifier._semi, "8EA773BFB41B":ProductIdentifier._roof, "94AEA7F0923E":ProductIdentifier._panels, "E77FAC7CD93F":ProductIdentifier._wall, "425C10615782":ProductIdentifier._autopilot ]
let yearStrings = [ "2022":"6F21", "2021":"4E0D", "2020":"A45F", "2019":"A393", "2018":"1CC9", "2017":"0CE8", "2016":"C47E", "2015":"A85A", "2014":"7A65", "2013":"96F2", "2012":"6A8B", "2011":"151C", "2010":"A22E", "2009":"98B3", "2008":"BB4F", "2007":"BD78" ]

enum YearIdentifier: Hashable {
    case modelYearTrimItem(model: Int, year: String, trim: Int)
}


// MARK: - Deeplink handle
struct MyEnvironmentKey: EnvironmentKey {
    static let defaultValue: Int = -1
}
extension EnvironmentValues {
    var deeplinkModel: Int {
        get { self[MyEnvironmentKey.self] }
        set { self[MyEnvironmentKey.self] = newValue }
    }
    var deeplinkYear: Int {
        get { self[MyEnvironmentKey.self] }
        set { self[MyEnvironmentKey.self] = newValue }
    }
}


extension URL {
    var isDeeplink: Bool {
        return scheme == "tdb" // matches tdb://<rest-of-the-url>
    }

    var modelYearIdentifier: YearIdentifier? {
        guard isDeeplink else { return nil }

        var _model : Int?
        var _year  : String?
        var _trim  : Int?

        _model = modelEnums[host ?? "home"]?.rawValue

//        switch host {
//            case "s":           _model = ProductIdentifier._s.rawValue          // matches tdb://s/
//            case "3":           _model = ProductIdentifier._3.rawValue          // matches tdb://3/
//            case "x":           _model = ProductIdentifier._x.rawValue          // matches tdb://x/
//            case "y":           _model = ProductIdentifier._y.rawValue          // matches tdb://y/
//            case "cybertruck":  _model = ProductIdentifier._cybertruck.rawValue // matches tdb://cybertruck/
//            case "atv":         _model = ProductIdentifier._atv.rawValue        // matches tdb://atv/
//            case "roadster":    _model = ProductIdentifier._roadster.rawValue   // matches tdb://roadster/
//            case "semi":        _model = ProductIdentifier._semi.rawValue       // matches tdb://semi/
//            case "roof":        _model = ProductIdentifier._roof.rawValue       // matches tdb://roof/
//            case "panels":      _model = ProductIdentifier._panels.rawValue     // matches tdb://panels/
//            case "wall":        _model = ProductIdentifier._wall.rawValue       // matches tdb://wall/
//            default:            _model = ProductIdentifier._s.rawValue          // matches tdb://s/
//        }

//        guard let _ = _model, pathComponents.count > 1, let uuidYear = String(pathComponents[1]) else {
//            return .modelYearTrimItem(model: _model ?? -1, year: "-1", trim: -1)
//        }
        if (pathComponents.count > 1) {
            _year = pathComponents[1]
        } else { return .modelYearTrimItem(model: _model ?? -1, year: "", trim: -1) }
//        _year = uuidYear

//        guard let _ = _model, pathComponents.count > 2, let uuidTrim = Int(pathComponents[2]) else {
//            return .modelYearTrimItem(model: _model ?? -1, year: _year ?? "", trim: -1)
//        }
        if (pathComponents.count > 2) {
            _trim = Int(pathComponents[2])
        } else { return .modelYearTrimItem(model: _model ?? -1, year: _year ?? "", trim: -1) }
//        _trim = uuidTrim

        return .modelYearTrimItem(model: _model ?? -1, year: _year ?? "", trim: _trim ?? -1) // matches tdb://cybertruck/2022/0
    }
}


/// Returns corresponding model string from ModelIdentifier
/// - Parameter modelId: current model (ModelIdentifier)
/// - Returns: String (._cybertruck = "cybertruck")
func getModelString(modelId: ProductIdentifier) -> String {
    return modelStrings[modelId] ?? "home"
}
/// Returns corresponding year string from String
/// - Parameter year: current year (String)
/// - Returns: String ("2022" = "6F21")
func getYearString(year: String) -> String {
    return yearStrings[year] ?? "0"
}
/// Forms product list Deeplink from model
/// - Parameter modelId: model (AnyHashable)
func formDeeplinkProductList(modelId: ProductIdentifier) {
    let deeplink = "tdb://\(getModelString(modelId: modelId))/"
    print(deeplink)
}
/// Forms product view Deeplink from model, year, trim
/// - Parameters:
///   - modelId: model (ModelIdentifier)
///   - year: year (String)
///   - trim: trim (Int)
func formDeeplinkProductTrim(modelId: ProductIdentifier, year: String, trim: Int) -> String {
    let deeplink = "tdb://\(getModelString(modelId: modelId))/\(getYearString(year: year))/\(trim)"
    return deeplink
}
