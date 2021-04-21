//
//  ContentView.swift
//  AReality
//
//  Created by Александр Волков on 15.04.2021.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    var body: some View {
        ZStack {
            ARViewContainer().edgesIgnoringSafeArea(.all)
        VStack {
           Spacer()
           Spacer()
//            Button(action: {
//                print("Edit button was tapped")
//            }) {
//                Image("TankRight")
//                    
//            }.padding()
            .background(RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.white).opacity(0.7))
        }
     }
        
        
       
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadBox()
//        let tankAnchor = try! TinyToyTank.load_TinyToyTank()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
