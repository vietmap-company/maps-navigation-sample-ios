//
//  CustomUIView.swift
//  VietmapNavigationSample
//
//  Created by NhatPV on 23/05/2023.
//

import SwiftUI
import MapKit

@available(iOS 14.0, *)
struct CustomUIView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.331516, longitude: -122.030936), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
        
        var body: some View {
            VStack {
                Map(coordinateRegion: $region)
                    .frame(height: 300)
                
                Text("Current Location: \(region.center.latitude), \(region.center.longitude)")
                    .padding()
            }
            .navigationTitle("Map")
            .navigationBarTitleDisplayMode(.inline)
        }
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            if #available(iOS 14.0, *) {
                CustomUIView()
            } else {
                // Fallback on earlier versions
            }
        }
    }
}

struct CustomUIView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
