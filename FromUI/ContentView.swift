//
//  ContentView.swift
//  FromUI
//
//  Created by Tsabit Farel on 03/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Form {
                // Profile Section
                Section() {
                    NavigationLink(destination: Profile()) {
                        HStack {
                            // Profile Image and Text
                            Image("profile")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            
                            VStack(alignment:.leading) {
                                Text("Jackson Vibe").font(.headline)
                                Text("Simple Man").font(.caption)
                            }
                        }
                        .padding(.top,10)
                        .padding(.bottom,10)
                    }
                }
                
                // General Settings Section
                Section(header: Text("General Settings").textCase(nil)) {
                    
                    NavigationLink(destination: Starred()){
                        HStack(spacing: 20) {
                            Image(systemName: "star.fill")
                                .frame(width:35, height:35)
                                .background(Color.orange)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            
                            Text("Starred Messages")
                                .font(.callout)
                        }
                    }
           
                    NavigationLink(destination: Web()) {
                        HStack(spacing: 20) {
                            Image(systemName: "tv")
                                .frame(width:35, height:35)
                                .background(Color.green)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            
                            Text("Whatsapp Web")
                                .font(.callout)
                        }
                    }
          
                }
                
                // Account Settings Section
                Section(header: Text("Account Settings").textCase(nil)) {
                    
                    NavigationLink(destination: Account()) {
                        HStack(spacing: 20) {
                            Image(systemName: "person.fill")
                                .frame(width:35, height: 35)
                                .background(Color.blue)
                                .foregroundColor(Color.white)
                                .cornerRadius(10)
                            
                            Text("Account")
                                .font(.callout)
                        }
                    }
             
                    NavigationLink(destination: Chat()) {
                        HStack(spacing: 20) {
                            Image(systemName: "phone.circle")
                                .frame(width:35, height: 35)
                                .background(Color.green)
                                .foregroundColor(Color.white)
                                .cornerRadius(10)
                            
                            Text("Chats")
                                .font(.callout)
                        }
                    }
                }
            
            }.navigationBarTitle("Settings")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// Profile Page
struct Profile: View {
    var body: some View {
        Text("Profile Page")
    }
}

// Starred Page
struct Starred: View {
    var body: some View {
        Text("Starred Page")
    }
}

// Web View
struct Web: View {
    var body: some View {
        Text("Web Page")
    }
}

// Account View
struct Account: View {
    var body: some View {
        Text("Account Page")
    }
}

// Chat View
struct Chat: View {
    var body: some View {
        Text("Chat Page")
    }
}
