//
//  VistaModal.swift
//  NavigationSwiftUI
//
//  Created by Marco Alonso Rodriguez on 26/03/23.
//

import SwiftUI

struct VistaModal: View {
    
    @State var showModal = false
    
    var body: some View {
        Button {
            showModal = true
        } label: {
            Text("Show Modal View")
                .padding()
                .font(.system(size: 40))
                .foregroundColor(.white)
                .background(
                    Color.blue
                )
                .cornerRadius(12)
        }
        .sheet(isPresented: $showModal) {
            NextView()
        }

    }
}

struct VistaModal_Previews: PreviewProvider {
    static var previews: some View {
        VistaModal()
    }
}
