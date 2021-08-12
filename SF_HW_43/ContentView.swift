//
//  ContentView.swift
//  SF_HW_43
//
//  Created by Mykhailo Romanovskyi on 12.08.2021.
//

import SwiftUI
private let carList: [CarListModel] = [
    CarListModel(name: "E1", title: "Nice cheap car", aboutTheCar: "Its a vire nice city car. You are in a first step to HAN! Good Luck!!"),
    CarListModel(name: "E2", title: "Have more money take this one", aboutTheCar: "Its a vire nice city and not far city car. You are in a second step to HAN! Good Luck!!"),
    CarListModel(name: "E3", title: "Nice choice", aboutTheCar: "Its a vire nice city and not far city car. You are in a second step to HAN! Good Luck!!"),
    CarListModel(name: "YUAN", title: "Big family?!", aboutTheCar: "Yes, you have a famoily and money. But need something fast - next step and you will get THE HAN!!!"),
    CarListModel(name: "HAN", title: "You are THE MAN!!", aboutTheCar: "You are THE MAN! DO I NEED TO SAY MORE?!"),
]

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(carList) { car in
                NavigationLink(
                    destination: DetailScreen(car: car)) {
                    Text("\(car.name) - \(car.title)")
                        .font(.title2)
                        .padding(.trailing)
                }
            }.navigationTitle("Good Cars")
        }
    }
}

struct DetailScreen: View {
    let car: CarListModel
    var body: some View {
        VStack {
            Image("\(car.name)")
                .resizable()
                .scaledToFit()
                .padding()
            Text("\(car.aboutTheCar)")
                .font(.title2)
                .padding()
            Spacer()
        }
        .navigationBarTitle("\(car.name)", displayMode: .inline)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
