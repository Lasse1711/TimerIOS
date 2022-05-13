//
//  processBar.swift
//  Timer
//
//  Created by Lasse von Pfeil on 13.05.22.
//

import SwiftUI

struct processBar: View {
    var process: CGFloat
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .fill(.green)
                .frame(width: 300, height: 4)
                .cornerRadius(10)
            
            Rectangle()
                .fill(.black)
                .frame(width: process, height: 4)
                .cornerRadius(10)
        }
    }
}

struct processBar_Previews: PreviewProvider {
    static var previews: some View {
        processBar(process: 0)
    }
}
