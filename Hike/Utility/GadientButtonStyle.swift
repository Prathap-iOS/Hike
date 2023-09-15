//
//  GadientButtonStyle.swift
//  Hike
//
//  Created by Prathap Reddy on 15/09/23.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                
                // Conditiona Statement with Nil Coalescing
                // Condition ? A : B
                configuration.isPressed ?
                // A: When User pressed the Button
                LinearGradient(colors: [.customGreyMedium, .customGreyLight], startPoint: .top, endPoint: .bottom)
                :
                // B: When the Button is not pressed
                LinearGradient(colors: [.customGreyLight, .customGreyMedium], startPoint: .top, endPoint: .bottom)
            )
            .cornerRadius(40)
    }
}
