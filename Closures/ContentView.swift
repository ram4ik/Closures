//
//  ContentView.swift
//  Closures
//
//  Created by Ramill Ibragimov on 01.03.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let myClosure = {
        print("From close")
    }
    
    let myOtherClosure = { (a: Int, b: Int) -> Int in
        return a * b
    }
    
    var body: some View {
        VStack {
            Text("Hello, World!")
        }.onAppear() {
            self.myClosure()
            
            let result = self.myOtherClosure(42, 42)
            print("Result is: \(result)")
            
            self.doSomeThing { (a, b) in
                print("This is summary of a * b: \(a * b)")
            }
        }
    }
    
    func doSomeThing(action: (Int, Int) -> Void) {
        action(42, 19)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
