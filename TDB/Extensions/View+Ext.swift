//
//  View+Ext.swift
//  TDB
//
//  Created by Trevor Bays on 3/21/22.
//

import SwiftUI

struct DebugBackground: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(.red.opacity(0.2))
    }
}

extension View {
    func debugBackground() -> some View {
        modifier(DebugBackground())
    }
}

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))

        return path
    }
}
