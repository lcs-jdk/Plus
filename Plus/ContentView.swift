//
//  ContentView.swift
//  Plus
//
//  Created by kim heejun on 2/12/25.
//


import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    @State var first: Int = 1
    @State var second: Int = 1
    // MARK: Computed properties
    var final: Int {
        return first + second
    }
    
    
    
    var body: some View {
        
        VStack{
            VStack {
                
                Spacer()
                
                HStack(alignment: .top) {
                    
                    
                    Text("\(first)")
                        .font(.system(size: 80))
                        .lineLimit(1)
                        .minimumScaleFactor(0.5)
                    
                }
                
                
                Stepper(value: $first, label: {
                    Text("select first number")
                })
                
                
                
                Spacer()
            }
            
            VStack {
                
            
                
                HStack(alignment: .top) {
                    
                    
                    Text("\(second)")
                        .font(.system(size: 80))
                        .lineLimit(1)
                        .minimumScaleFactor(0.5)
                    
                }
                
                
                Stepper(value: $second, label: {
                    Text("select second number")
                })
                
                
                
                Spacer()
            }
            
        }
        
        .padding()
        
        
        Text("\(final)")
        font(.system(size: 80))
        .lineLimit(1)
        .minimumScaleFactor(0.5)
        
        
        
        
    }
}

#Preview {
    ContentView()
}

