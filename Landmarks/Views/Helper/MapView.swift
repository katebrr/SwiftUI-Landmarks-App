//
//  MapView.swift
//  Landmarks
//
//  Created by Kateryna BRYLINSKA on 28/12/2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var coordinate: CLLocationCoordinate2D
    
    var body: some View {
        /*
         Use a .constant() binding here because MapView doesn’t need to detect when someone changes the position by interacting with the map.
         */
        Map(position: .constant(.region(region)))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011286, longitude: -116.166_868))
}
