//
//  signUpView.swift
//  freelancerDesign
//
//  Created by Emir Güner on 21.10.2023.
//

import SwiftUI

struct signUpView: View {
    
    @Binding var name: String
    @Binding var surname: String
    @Binding var email: String
    @Binding var username: String
    @Binding var password: String
    @Binding var job: String
    @Binding var phone: String
    @Binding var about: String
    
    @State var newName = ""
    @State var newSurname = ""
    @State var newEmail = ""
    @State var newUsername = ""
    @State var newPassword = ""
    @State var newJob = ""
    @State var newPhone = ""
    @State var newAbout = ""
    
    @Binding var isSignUp: Bool
    
    var body: some View {
        if(isSignUp == false) {
//            ContentView(username: username, password: password, isSignUp: isSignUp)
        } else {
            content
        }
}
    
    var content: some View {
        
        ScrollView {
            
            ZStack {
                Rectangle()
                    .fill(.mint)
                    .frame(width: UIScreen.main.bounds.width, height: 200)
                    .ignoresSafeArea()
                    .offset(y: -130)
                
                Text("Sign Up")
                    .font(.largeTitle)
                    .offset(x: -120,y: -60)
                    
            }
            
            HStack {
                TextField(text: $newName, label: {Text("Name")})
                    .padding()
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(15)
                    .disableAutocorrection(true)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .padding(.bottom)
                    .padding(.trailing)
                    .padding(.leading)
                    .offset(y: -120)
                
                TextField(text: $newSurname, label: {Text("Surname")})
                    .padding()
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(15)
                    .disableAutocorrection(true)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .padding(.bottom)
                    .padding(.trailing)
                    .padding(.leading)
                    .offset(y: -120)
            }
            
            VStack {
                TextField(text: $newEmail, label: {Text("email")})
                    .padding()
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(15)
                    .disableAutocorrection(true)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .padding(.bottom)
                    .padding(.trailing)
                    .padding(.leading)
                    .offset(y: -120)
            }
            
            HStack {
                TextField(text: $newUsername, label: {Text("username")})
                    .padding()
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(15)
                    .disableAutocorrection(true)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .padding(.bottom)
                    .padding(.trailing)
                    .padding(.leading)
                    .offset(y: -120)
                
                TextField(text: $newPassword, label: {Text("password")})
                    .padding()
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(15)
                    .disableAutocorrection(true)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .padding(.bottom)
                    .padding(.trailing)
                    .padding(.leading)
                    .offset(y: -120)
            }
            
            HStack {
                TextField(text: $newJob, label: {Text("job")})
                    .padding()
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(15)
                    .disableAutocorrection(true)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .padding(.bottom)
                    .padding(.trailing)
                    .padding(.leading)
                    .offset(y: -120)
                
                TextField(text: $newPhone, label: {Text("phone")})
                    .padding()
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(15)
                    .disableAutocorrection(true)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .padding(.bottom)
                    .padding(.trailing)
                    .padding(.leading)
                    .offset(y: -120)
            }
            
            VStack{
                TextField(text: $newAbout, axis: .vertical, label: {Text("About")})
                    .padding()
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(15)
                    .disableAutocorrection(true)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .padding(.bottom)
                    .padding(.trailing)
                    .padding(.leading)
                    .offset(y: -120)
                    .lineLimit(5...10)
            }
            
            VStack {
                Button(action: {
                    name = newName
                    surname = newSurname
                    email = newEmail
                    username = newUsername
                    password = newPassword
                    job = newJob
                    phone = newPhone
                    about = newAbout
                    if(name != "" && surname != "" && email != "" && username != "" && password != "" && job != "" && phone != "" && about != "") {
                        isSignUp.toggle()
                    }
    //                ContentView(username: username, password: password)
                }, label: {
                    Text("Sign Up")
                }).offset(y: -110)
            }
        }

    }
}

#Preview {
    signUpView(name: .constant(""), surname: .constant(""), email: .constant(""), username: .constant(""), password: .constant(""), job: .constant(""), phone: .constant(""), about: .constant(""),  isSignUp: .constant(true))
}
