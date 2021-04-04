//
//  ContentView.swift
//  table
//
//  Created by Mehak Bansal on 22/02/21.
//
import MapKit
import SwiftUI

struct ContentView: View {
    @State var region = MKCoordinateRegion(
       center: CLLocationCoordinate2D(
        latitude: 20.5,
        longitude:78.96),
       span: MKCoordinateSpan(
           latitudeDelta: 40,
           longitudeDelta: 40))

    
    var body: some View {
        NavigationView{
            VStack{
                Map(coordinateRegion: $region)
   
                HStack{
    Button(action: {
        withAnimation{
            region.span = MKCoordinateSpan(
                latitudeDelta: 5,
                longitudeDelta: 5)}
                    
            }, label: {
                    Text("ZOOM IN").bold().font(.headline).frame(width: 150, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).foregroundColor(Color.white).background(Color.green).cornerRadius(10)
                })
                    Button(action: {
                        withAnimation{
                            region.span = MKCoordinateSpan(
                                latitudeDelta: 40,
                                longitudeDelta: 40)}
                                    
                            }, label: {
                                    Text("ZOOM OUT").bold().font(.headline).frame(width: 150, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).foregroundColor(Color.white).background(Color.green).cornerRadius(10)
                                })
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
