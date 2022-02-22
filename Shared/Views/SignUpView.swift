//
//  SignUpView.swift
//  Pose Estimation App
//
//  Created by John Huang on 2/13/22.
//

import SwiftUI


struct SignUpView: View {
    @State var firstname = ""
    @State var lastname = ""
    @State var email = ""
    @State var password = ""
    
    @EnvironmentObject var viewModel: AppUserModel
    
    var body: some View {
        VStack {
            Text("Pose Estimation Logo")
                .padding()
            VStack {
                TextField("First Name", text: $firstname)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(64)
                TextField("Last Name", text: $lastname)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(64)
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
                Button(action: {
                    //TODO: validate fields
                    guard  !email.isEmpty, !password.isEmpty else {
                        return
                    }
                    
                    viewModel.signUp(data: [
                        "firstName" : firstname,
                        "lastName" : lastname,
                    ],
                                     email: email,
                                     password: password)
                    
                }, label: {
                    Text("Create Account")
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50)
                        .background(Color.blue)
                }).cornerRadius(8)
            }
            Spacer()
        }
        .padding()
        .navigationTitle("Create Account")
    }
    
}


struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
