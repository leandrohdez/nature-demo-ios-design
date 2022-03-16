//
//  MainView.swift
//  NaturalArt
//
//  Created by Leandro Hernandez on 15/3/22.
//

import SwiftUI

struct MainView: View {
    
    @State private var selectedItem: Natural? = nil
    
    @Namespace var namespaceTransition
    
    private let columnsScheme: [GridItem] = Array(repeating: .init(.flexible(), spacing: 16), count: 2)
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)

            if self.selectedItem == nil {
                ScrollView(.vertical, showsIndicators: false) {
                    
                    LazyVGrid(columns: self.columnsScheme, spacing: 16) {
                        ForEach(naturalArts) { item in

                            ZStack {
                                Image(item.image)
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                                    .matchedGeometryEffect(id: "img-\(item.id.uuidString)", in: self.namespaceTransition)
                                VStack {
                                    Spacer()
                                    HStack {
                                        Text(item.title)
                                            .font(.system(size: 13).bold())
                                            .foregroundColor(.black)
                                            .padding(.leading, 8)
                                            .padding(.vertical, 8)
                                            .matchedGeometryEffect(id: "title-\(item.id.uuidString)", in: self.namespaceTransition)
                                        Spacer()
                                        Image(systemName: "heart")
                                            .font(.system(size: 13))
                                            .padding(.trailing, 8)
                                            .foregroundColor(.black)
                                            .matchedGeometryEffect(id: "like-\(item.id.uuidString)", in: self.namespaceTransition)
                                    }
                                    .background(.ultraThinMaterial)
                                }
                                .clipShape(RoundedRectangle(cornerRadius: 16))
                            }
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    self.selectedItem = item
                                }
                            }
                        }
                    }
                    .padding()
                }
                
            } else {
                ArtView(namespace: self.namespaceTransition, natural: self.selectedItem!) {
                    withAnimation(.spring()) {
                        self.selectedItem = nil
                    }
                }
            }
        }
        .navigationBarHidden(true)
        .preferredColorScheme(.dark)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
