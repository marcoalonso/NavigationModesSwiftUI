//
//  NextView.swift
//  NavigationSwiftUI
//
//  Created by Marco Alonso Rodriguez on 26/03/23.
//

import SwiftUI

struct NextView: View {
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        
        VStack (spacing: 100){
            Text("Next View")
                .font(.system(size: 40, design: .rounded))
                .bold()
                
         
            Image(systemName: "cloud.fill")
                .resizable()
                .frame(width: 300, height: 200)
                .foregroundColor(.blue)
                .shadow(radius: 20)
            
            Button("Regresar") {
                self.presentationMode.wrappedValue.dismiss()
            }
            .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(25)
            
            Spacer()
        }
    }
}

struct NextView_Previews: PreviewProvider {
    static var previews: some View {
        NextView()
    }
}
