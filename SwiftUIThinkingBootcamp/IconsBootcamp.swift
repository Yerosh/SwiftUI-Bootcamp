//
//  IconsBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 02.09.2025.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original) //цветин как в оригинале делает
            .font(.largeTitle) //размерин автоматом поменяет
            .resizable() //через фрейм размерин озгерту ушин биринши осыны жазады
            .aspectRatio(contentMode: .fit) // фит и филл жазу тури 1
            .scaledToFit() // фит и филл жазу тури 2
            .scaledToFill() // фит и филл жазу тури 2
//            .font(.caption)
            .font(.system(size: 32)) //ручной коюга болады размерин
            .foregroundColor(.red) //цветин озгерту
            .frame(width: 100, height: 100) // размерин озгерту
            .clipped() //размери артык болса чем указано во фрейме обрезает
    }
}

#Preview {
    IconsBootcamp()
}
