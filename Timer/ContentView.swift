//
//  ContentView.swift
//  Timer
//
//  Created by Lasse von Pfeil on 13.05.22.
//

import SwiftUI

struct ContentView: View {
    
    @State var seconds = 10
    @State var timerRunning = false
    @State var process2 = 300.0
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            Button(action: {
                timerRunning = true
            }, label: {
                Text("\(seconds)")
                    .fontWeight(.heavy)
                    .padding()
                    .font(.system(size: 100))
                    .onReceive(timer) { _ in
                        if(seconds > 0 && timerRunning) {
                            seconds -= 1
                            withAnimation() {
                                process2 -= 30.1
                            }
                        } else {
                            timerRunning = false
                            seconds = 10
                            process2 = 300
                        }
                    }
            })
            
            ZStack(alignment: .leading) {
                Rectangle()
                    .fill(.green)
                    .frame(width: 300, height: 4)
                    .cornerRadius(10)
                
                Rectangle()
                    .fill(.black)
                    .frame(width: CGFloat(process2), height: 4)
                    .cornerRadius(10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
