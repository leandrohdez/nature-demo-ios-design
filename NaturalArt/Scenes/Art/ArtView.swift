//
//  ArtView.swift
//  NaturalArt
//
//  Created by Leandro Hernandez on 15/3/22.
//

import SwiftUI

struct ArtView: View {
    
    let namespace: Namespace.ID
    
    var natural: Natural
    
    @State private var isLiked: Bool = false
    
    var close: (() -> Void)?
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    ZStack(alignment: .top) {
                        Image(self.natural.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 32, style: .continuous))
                            .matchedGeometryEffect(id: "img-\(self.natural.id.uuidString)", in: self.namespace)
                            
                        HStack {
                            Spacer()
                            Button {
                                self.close?()
                            } label: {
                                Image(systemName: "xmark.circle.fill")
                                    .font(.system(size: 32))
                                    .foregroundColor(.black.opacity(0.5))
                            }
                            .padding()
                        }

                    }
                    HStack {
                        VStack(alignment: .leading, spacing: 0) {
                            Text(self.natural.title)
                                .font(.title)
                                .foregroundColor(.white)
                                .matchedGeometryEffect(id: "title-\(self.natural.id.uuidString)", in: self.namespace)
                            Text("Lorem Ipsum es simplemente el texto de relleno")
                                .font(.system(size: 17))
                                .foregroundColor(.white.opacity(0.7))
                        }
                        .padding()
                        
                        Spacer()
                        
                        Button {
                            self.isLiked.toggle()
                        } label: {
                            Image(systemName: self.isLiked ? "heart.fill": "heart")
                                .font(.system(size: 24))
                                .matchedGeometryEffect(id: "like-\(self.natural.id.uuidString)", in: self.namespace)
                        }
                        .padding()
                        .frame(width: 44, height: 44)
                        .foregroundColor(self.isLiked ? .red : .white)
                        .cornerRadius(12)
                    }
                    
                    Text("Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est??ndar de las industrias desde el a??o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us?? una galer??a de textos y los mezcl?? de tal manera que logr?? hacer un libro de textos especimen. No s??lo sobrevivi?? 500 a??os, sino que tambien ingres?? como texto de relleno en documentos electr??nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci??n de las hojas Letraset, las cuales contenian pasajes de Lorem Ipsum, y m??s recientemente con software de autoedici??n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.")
                        .foregroundColor(.white.opacity(0.7))
                        .padding()
                                    
                    Spacer()
                }
                .padding()
            }
        }
        .navigationBarHidden(true)
        .preferredColorScheme(.dark)
    }
}
