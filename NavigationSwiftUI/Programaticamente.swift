//
//  Programaticamente.swift
//  NavigationSwiftUI
//
//  Created by Marco Alonso Rodriguez on 26/03/23.
//

import SwiftUI

struct Programaticamente: View {
    @State var isActive = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 100) {
                
                Button("Go to next view") {
                    isActive = true
                }
                
                NavigationLink(destination: NextView(), isActive: $isActive) {
                    EmptyView()
                }
                
                NavigationLink(destination: NextView()) {
                    Text("Mostrar Detalles")
                }
            }
            .navigationBarTitle("Navegacion")
        }
    }
}

struct Programaticamente_Previews: PreviewProvider {
    static var previews: some View {
        Programaticamente()
    }
}
