//
//  ContentView.swift
//  freelancerDesign
//
//  Created by Emir Güner on 16.10.2023.
//

import SwiftUI


struct ContentView: View {
    @AppStorage("INT_KEY_NAME") var ID = 0
    @AppStorage("STRING_KEY_NAME") var name = ""
    @AppStorage("STRING_KEY_SURNAME") var surname = ""
    @AppStorage("STRING_KEY_EMAIL") var email = ""
    @AppStorage("STRING_KEY_USERNAME") var username = ""
    @AppStorage("STRING_KEY_PASSWORD") var password = ""
    @AppStorage("STRING_KEY_JOB") var job = ""
    @AppStorage("STRING_KEY_PHONE") var phone = ""
    @AppStorage("STRING_KEY_ABOUT") var about = ""
    
//    @State var name: String = ""
//    @State var surname: String = ""
//    @State var email: String = ""
//    @State var username: String  = ""
//    @State var password: String = ""
//    @State var job: String = ""
//    @State var phone: String = ""
//    @State var about: String = ""
    
    
    
    @State private var tfUsername = ""
    @State private var tfPassword = ""
    
    @State private var changeView = false
    
    @State var isSignUp = false
    
    @State var isShowingPassword: Bool = false
    @State var wrongData: Bool = false
    @State var emptyTF: Bool = false
    
    
    var body: some View {
        if(changeView) {
            MainView(name: $name, surname: $surname, email: $email, username: $username, password: $password, job: $job, phone: $phone, about: $about, changeView: $changeView , tfUsername: $tfUsername, tfPassword: $tfPassword)
        } else {
            content
        }
}
    
    var content: some View {
        print("USERNAME: " + username + " " + "PASSWORD: " + password)
        return ScrollView {
            
            ZStack {
                Image("coding_img")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .offset(y: -170)
                    .ignoresSafeArea()
            }
            
            VStack {
                Text("Login")
                    .font(.largeTitle)
                    .offset(y: -160)
                Group {
                    TextField("username", text: $tfUsername)
                        .padding()
                        .background(Color.black.opacity(0.1))
                        .cornerRadius(15)
                        .disableAutocorrection(true)
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .padding(.bottom)
                        .padding(.trailing)
                        .padding(.leading)
                        .offset(y:-140)
                    ZStack {
                        if isShowingPassword {
                            TextField("password", text: $tfPassword)
                                    .padding()
                                    .background(Color.black.opacity(0.1))
                                    .cornerRadius(15)
                                    .disableAutocorrection(true)
                                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                                    .padding(.bottom)
                                    .padding(.trailing)
                                    .padding(.leading)
                                    .offset(y:-140)
                        } else {
                            SecureField("password", text: $tfPassword)
                                    .padding()
                                    .background(Color.black.opacity(0.1))
                                    .cornerRadius(15)
                                    .disableAutocorrection(true)
                                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                                    .padding(.bottom)
                                    .padding(.trailing)
                                    .padding(.leading)
                                    .offset(y:-140)
                        }

                        Button(action: {
                            isShowingPassword.toggle()
                        }, label: {
                            Text("Show")
                        }).offset(x: -20, y:-147).padding(.trailing).frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    
                }
                
                
                
                Button{
                    if(tfPassword == password && tfUsername == username && tfPassword != "" && tfUsername != "") {
                        changeView = true
                    } else {
                        changeView = false
                        wrongData = false
                        emptyTF = false
                        if(tfPassword != password || tfUsername != username) {
                            wrongData = true
                        } else if(tfPassword == "" || tfUsername == "") {
                            emptyTF = true
                        } else {
                            wrongData = false
                            emptyTF = false
                        }
                    }
                } label: {
                    Text("Login")
                }.offset(y: -120).alert("Please check username or password. It's wrong.", isPresented: $wrongData) {
                    Button("OK", role: .cancel) { }
                }.alert("Please fill username or password blank. It's empty.", isPresented: $emptyTF) {
                    Button("OK", role: .cancel) { }
                }
                
                Button ("You don't have an account"){
                    isSignUp.toggle()
                } .sheet(isPresented: $isSignUp) {
                    signUpView(name: $name, surname: $surname, email: $email, username: $username, password: $password, job: $job, phone: $phone, about: $about, isSignUp: $isSignUp)
                }.offset(y: -100)
                
                
                
            }
        }
    }
}
    


#Preview {
    ContentView()
}
