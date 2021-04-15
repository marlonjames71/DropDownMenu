//
//  SmoothRoundedCorners.swift
//  DropDownMenu-Starter
//
//  Created by Marlon Raskin on 3/29/21.
//

import SwiftUI

struct SmoothRoundedCorners: ViewModifier {
    let cornerRadius: CGFloat
    let roundedCornerStyle: RoundedCornerStyle

    init(_ cornerRadius: CGFloat, roundedCornerStyle: RoundedCornerStyle = .continuous) {
        self.cornerRadius = cornerRadius
        self.roundedCornerStyle = roundedCornerStyle
    }

    func body(content: Content) -> some View {
        content
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius, style: roundedCornerStyle))
    }
}

extension View {
    func smoothRoundedCorners(_ cornerRadius: CGFloat = 10.0) -> some View {
        modifier(SmoothRoundedCorners(cornerRadius))
    }
}
