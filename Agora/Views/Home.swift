//
//  ContentView.swift
//  Agora
//
//  Created by James Florence on 2/2/25.
//
import SwiftUI

struct Home: View {
    @StateObject private var viewModel = IssueViewModel()

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    // Title
                    Text("Agora")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.top, 16)
                        .padding(.horizontal)

                    HStack {
                        Spacer()
                        NavigationLink(destination: CreateIssueView()) {
                            Text("Create")
                                .font(.headline)
                                .padding()
                                .frame(width: UIScreen.main.bounds.width / 3)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                        Spacer()
                    }

                    // Issues List or No Issues Message
                    if viewModel.issues.isEmpty {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("There are no issues yet.")
                                .font(.title3)
                                .padding(.top, 20)

                            NavigationLink(destination: CreateIssueView()) {
                                Text("Be the first to create one →")
                                    .font(.headline)
                                    .foregroundColor(.blue)
                            }
                        }
                        .padding(.horizontal)
                    } else {
                        ForEach(viewModel.issues) { issue in
                            VStack(alignment: .leading, spacing: 4) {
                                Text(issue.title)
                                    .font(.headline)
                                if let description = issue.description {
                                    Text(description)
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                }
                            }
                            .padding()
                            .background(Color(UIColor.secondarySystemBackground))
                            .cornerRadius(8)
                            .padding(.horizontal)
                        }
                    }

                    Spacer(minLength: 0)
                }
                .frame(maxWidth: .infinity, alignment: .topLeading)
            }
            .navigationBarHidden(true)
            .task {
                await viewModel.loadIssues()
            }
        }
    }
}

#Preview {
    Home()
}
