//
//  ContentView.swift
//  SwiftUIHorizontalCollectionView
//
//  Created by Angelos Staboulis on 23/9/22.
//

import SwiftUI

struct ContentView: View {
    @State var selectedNumber:Int!=0
    var body: some View {
        HStack{
            Text("SwiftUI Horizontal CollectionView")
        }.position(x: UIScreen.main.bounds.width / 2.0, y: 30)
        ScrollView(.horizontal){
          
            HStack{
                ForEach(0..<100){number in
                    Text(String(describing:number)).background(selectedNumber == number ? Rectangle().foregroundColor(.red) : Rectangle().foregroundColor(.white))
                        .onTapGesture {
                            selectedNumber  = number
                        }
                }.position(x: 0, y: 30)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
