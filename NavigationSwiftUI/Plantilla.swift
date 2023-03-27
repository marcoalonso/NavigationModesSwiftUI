//
//  Plantilla.swift
//  NavigationSwiftUI
//
//  Created by Marco Alonso Rodriguez on 26/03/23.
//

import SwiftUI

struct ExamppleView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        Button("Regresar") {
            self.presentationMode.wrappedValue.dismiss()
        }
    }
}
