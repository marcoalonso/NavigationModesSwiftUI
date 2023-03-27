//
//  PantallaCompleta.swift
//  NavigationSwiftUI
//
//  Created by Marco Alonso Rodriguez on 26/03/23.
//

import SwiftUI

struct PantallaCompleta: View {
    
    @State var showFullScreenView = false
    
    var body: some View {
        Button {
            showFullScreenView = true
        } label: {
            Text("Show Full Screen View")
                .font(.system(size: 20))
                .foregroundColor(.white)
                .padding()
                .background(
                    Color.blue
                )
                .edgesIgnoringSafeArea(.all)
                .cornerRadius(12)
        }
        .fullScreenCover(isPresented: $showFullScreenView) {
            NextView()
        }

    }
}

struct PantallaCompleta_Previews: PreviewProvider {
    static var previews: some View {
        PantallaCompleta()
    }
}
