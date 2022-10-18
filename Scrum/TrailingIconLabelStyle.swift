//
//  TrailingIconLabelStyle.swift
//  Scrum
//
//  Created by Ilia Skliaruk on 18.10.2022.
//

import SwiftUI

struct TrailingIconLabelStyle : LabelStyle{
    func makeBody(configuration: Configuration) -> some View {
        HStack{
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
