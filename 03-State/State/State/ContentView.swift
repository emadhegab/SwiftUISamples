//
//  ContentView.swift
//  State
//
//  Created by Mohamed Hegab on 22.12.20.
//

import SwiftUI

struct ContentView: View {
    @State var tasks = [Task]()
    @State var isDone = false
    var body: some View {

        List {
            Toggle(isOn: $isDone) {
                Text("Done Tasks")
                    .font(.title)
            }
            Button(action: addTask) {
                Text("add Task")
            }

            ForEach(tasks.filter({ $0.done == isDone})) { task in
                let isDone = task.done ? "true" : "false"
                HStack {
                    Text(task.name)
                    Spacer()
                    Text(isDone)
                }
            }
        }
    }

    private func addTask() {
        let isDone = Int.random(in: 1...2) == 1
        tasks.append(Task(name: "wash the car!", done: isDone))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
