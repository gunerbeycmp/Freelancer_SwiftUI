//
//  MainView.swift
//  freelancerDesign
//
//  Created by Emir Güner on 16.10.2023.
//

import SwiftUI
struct MainView: View {
    
    
    @Binding var name: String
    @Binding var surname: String
    @Binding var email: String
    @Binding var username: String
    @Binding var password: String
    @Binding var job: String
    @Binding var phone: String
    @Binding var about: String
    @Binding var changeView: Bool
    
    @Binding var tfUsername: String
    @Binding var tfPassword: String
    
    @State var editableTF: Bool = true
    @State var editBtnText: String = "Edit"
    
    @State var passwordShow: Bool = false
    
    @State var isTaskView: Bool = false
    
    var body: some View {
        if(isTaskView) {
            TbView()
        } else {
            content
        }
    }
    
    var content: some View {
        ScrollView {
            VStack {
                Rectangle()
                    .fill(.mint)
                    .frame(width: UIScreen.main.bounds.width, height: 200)
                    .ignoresSafeArea()
                    .offset(y: -150)
                
                Menu("MENU") {
                    Button("Profile", action: {})
                            Button("TO-DO", action: {
                                isTaskView.toggle()
                            })
                            Button("Log Out", action: {
                                changeView.toggle()
                                tfUsername = ""
                                tfPassword = ""
                            })
                        } primaryAction: {
//
                        }.offset(x: -150, y: -200)
            }
            
            VStack {
                Image("coding_img")
                    .resizable()
                    .frame(width: 180, height: 180)
                    .cornerRadius(100)
                    .overlay(RoundedRectangle(cornerRadius: 100)
                                .stroke(Color.mint, lineWidth: 4))
    //                        .shadow(radius: 10)
                    .offset(x: 0, y: -200)
                
                Text(username)
                    .font(.largeTitle)
                    .offset(y: -190)
            }
            
            //section1
            HStack {
                VStack {
                    Text("Name")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                        .offset(y: -160)
                    
                    TextField(text: $name, label: {Text("Name")})
                        .padding()
                        .background(Color.black.opacity(0.1))
                        .cornerRadius(15)
                        .disableAutocorrection(true)
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .disabled(editableTF)
                        .padding(.bottom)
                        .padding(.trailing)
                        .padding(.leading)
                        .offset(y: -160)
                }
                
                VStack {
                    Text("Surname")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                        .offset(y: -160)
                    
                    TextField(text: $surname, label: {Text("Surname")})
                        .padding()
                        .background(Color.black.opacity(0.1))
                        .cornerRadius(15)
                        .disableAutocorrection(true)
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .disabled(editableTF)
                        .padding(.bottom)
                        .padding(.trailing)
//                        .padding(.leading)
                        .offset(y: -160)
                }
            }
            
            //section2
            HStack {
                VStack {
                    Text("Username")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                        .offset(y: -160)
                    
                    TextField(text: $username, label: {Text("username")})
                        .padding()
                        .background(Color.black.opacity(0.1))
                        .cornerRadius(15)
                        .disableAutocorrection(true)
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .disabled(editableTF)
                        .padding(.bottom)
                        .padding(.trailing)
                        .padding(.leading)
                        .offset(y: -160)
                }
                
                VStack {
                    Text("Job")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                        .offset(y: -160)
                    
                    TextField(text: $job, label: {Text("job")})
                        .padding()
                        .background(Color.black.opacity(0.1))
                        .cornerRadius(15)
                        .disableAutocorrection(true)
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .disabled(editableTF)
                        .padding(.bottom)
                        .padding(.trailing)
                        .offset(y: -160)
                }
            }
            
            VStack {
                Text("Password")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                    .offset(y: -160)
                Group {
                    ZStack {
                        if(passwordShow) {
                            TextField(text: $password, label: {Text("Password")})
                                .padding()
                                .background(Color.black.opacity(0.1))
                                .cornerRadius(15)
                                .disableAutocorrection(true)
                                .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                                .disabled(editableTF)
                                .padding(.bottom)
                                .padding(.trailing)
                                .padding(.leading)
                                .offset(y: -160)
                        } else {
                            SecureField(text: $password, label: {Text("Password")})
                                .padding()
                                .background(Color.black.opacity(0.1))
                                .cornerRadius(15)
                                .disableAutocorrection(true)
                                .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                                .disabled(editableTF)
                                .padding(.bottom)
                                .padding(.trailing)
                                .padding(.leading)
                                .offset(y: -160)
                        }
                        
                        Button(action: {
                            passwordShow.toggle()
                        }, label: {
                            Text("Show")
                        }).offset(x: -20, y:-167).padding(.trailing).frame(maxWidth: .infinity, alignment: .trailing)
                    }
                }
            }
            
            //section3
            VStack {
                Text("E-mail")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                    .offset(y: -160)
                
                TextField(text: $email, label: {Text("E-mail")})
                    .padding()
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(15)
                    .disableAutocorrection(true)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .disabled(editableTF)
                    .padding(.bottom)
                    .padding(.trailing)
                    .padding(.leading)
                    .offset(y: -160)
            }
            
            //section4
            VStack {
                Text("Phone")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                    .offset(y: -160)
                
                TextField(text: $phone, label: {Text("Phone")})
                    .padding()
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(15)
                    .disableAutocorrection(true)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .disabled(editableTF)
                    .padding(.bottom)
                    .padding(.trailing)
                    .padding(.leading)
                    .offset(y: -160)
            }
            
            //section5
            VStack {
                Text("About")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                    .offset(y: -160)
                
                TextField(text: $about, axis: .vertical, label: {Text("About")})
                    .padding()
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(15)
                    .disableAutocorrection(true)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .disabled(editableTF)
                    .padding(.bottom)
                    .padding(.trailing)
                    .padding(.leading)
                    .offset(y: -160)
                    .lineLimit(5...10)
            }
            
            VStack {
                Button(action: {
                    editTextField()
                }, label: {Text(editBtnText)})
                .offset(y: -160)
            }
        }
    }
    
    func editTextField() {
        editableTF.toggle()
        if(editableTF == false) {
            editBtnText = "Save"
        } else {
            editBtnText = "Edit"
        }
    }
}

#Preview {
    MainView(name: .constant(""), surname: .constant(""), email: .constant(""), username: .constant(""), password: .constant(""), job: .constant(""), phone: .constant(""), about: .constant(""), changeView: .constant(true), tfUsername: .constant(""), tfPassword: .constant(""))
}
