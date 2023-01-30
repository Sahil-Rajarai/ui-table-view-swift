//
//  MyCities.swift
//  UITableView_2
//
//  Created by Raja Rai Kedarnathsingh on 28/04/2022.
//

import SwiftUI

struct City {
    let title: String
    let imageName: String
}

struct MyCities: View {
    var data = [City]()

    init() {
        self.data = [
            City(title: "London", imageName: "london"),
            City(title: "Paris", imageName: "paris"),
            City(title: "Glasgow", imageName: "glasgow"),
            City(title: "Mauritius", imageName: "mu"),
            City(title: "Budapest", imageName: "budapest"),
            City(title: "Cape Town", imageName: "ca"),
            City(title: "Dubai", imageName: "dubai"),
            City(title: "Rio", imageName: "rio"),
            City(title: "Brastislava", imageName: "bratislava"),
            City(title: "Berlin", imageName: "berlin"),
            City(title: "London", imageName: "london"),
            City(title: "Paris", imageName: "paris"),
            City(title: "Glasgow", imageName: "glasgow"),
            
        ]

    }
    
    var body: some View {
        
        VStack {
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack {

                    ForEach(0..<self.data.count) { value in
                        CardView(img: self.data[value].imageName)
                    }
                    
                }
            }
        }
    }
}

struct CardView: View {
    var img = ""
    
    var body: some View {
        
        VStack {
//            Tex?t("test").padding(10)
            Image(img)
        }
        .frame(width: 150, height: 150)
        .cornerRadius(20)
        .padding(10)
    }
}

struct MyCities_Previews: PreviewProvider {
    static var previews: some View {
        MyCities()
    }
}

