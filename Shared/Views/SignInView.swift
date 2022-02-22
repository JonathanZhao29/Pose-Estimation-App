//
//  SignInView.swift
//  Pose Estimation App
//
//  Created by John Huang on 2/13/22.
//

import SwiftUI

struct SignInView: View {
    @State var email = ""
    @State var password = ""
    @State var errorMsg = ""
    
    var onFailureString = "Incorrect email or password"
    
    @EnvironmentObject var viewModel: AppUserModel
    
    var body: some View {
        VStack {
            Text("Pose Estimation Logo")
                .padding()
            VStack {
                TextField("Email Address", text: $email)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(64)
                SecureField("Password", text: $password)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(64)
                Text(errorMsg)
                    .foregroundColor(Color.red)
                Button(action: {
                    guard  !email.isEmpty, !password.isEmpty else {
                        errorMsg = onFailureString
                        return
                    }
                    
                    viewModel.signIn(email: email, password: password, onFail: {
                        errorMsg = onFailureString
                    }, onSucess: {
                        errorMsg = ""
                    })
                    
                }, label: {
                    Text("Sign In")
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50)
                        .background(Color.blue)
                }).cornerRadius(8)
                
                NavigationLink("Create Account", destination: SignUpView())
                    .padding()
            }
            Spacer()
        }
        .padding()
        .navigationTitle("Sign In")
    }
    
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
