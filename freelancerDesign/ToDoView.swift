//
//  ToDoView.swift
//  freelancerDesign
//
//  Created by Emir Güner on 25.10.2023.
//

import SwiftUI

struct ToDoView: View {
    
    @State var isAddTask: Bool = false
    @State var isTaskName: Bool = false
    
    @State var taskNameTF: String = ""
    @State var newTask: String = ""
    
    @State var emptyName: String = "Please enter your task name"
    
    @State var tasks = [
        TASK(name: "Task_1"),
        TASK(name: "Task_2"),
        TASK(name: "Task_3")
    ]
    
    var body: some View {
        
        VStack {
            HStack {
                Button("", systemImage: "plus", action: {
                    isAddTask.toggle()
                    taskNameTF = ""
                }).alert("Task Name: ", isPresented: $isAddTask) {
                    TextField("task name", text: $taskNameTF)
                        .textInputAutocapitalization(.never)
                    Button("OK", action: {
                        if(taskNameTF != "") {
                            newTask = taskNameTF
                            tasks.append(TASK(name: newTask))
                        } else {
                            emptyName = "please fill the task name"
                        }
                    })
                    Button("Cancel", role: .cancel) { }
                } message: {
                    Text("Please enter your task name")
                }
                    .font(.title2)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                    .offset(y: 0)
                    .padding(.bottom)
                    .padding(.top)
                
                Text("TO-DO")
                    .font(.title2)
                    .padding(.bottom)
                    .padding(.top)
                
                Button("edit", action: {})
                    .font(.title2)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.trailing)
                    .offset(y: 0)
                    .padding(.bottom)
                    .padding(.top)
            }
            
            VStack {
                List(tasks) { task in
                            Text(task.name)
                }.listStyle(InsetGroupedListStyle())
            }
        }
    }
}

struct TASK: Identifiable {
    var id = UUID()
    var name : String
}

#Preview {
    ToDoView()
}
