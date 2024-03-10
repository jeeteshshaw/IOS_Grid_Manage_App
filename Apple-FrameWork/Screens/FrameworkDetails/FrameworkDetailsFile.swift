//
//  FrameworkDetailsFile.swift
//  Apple-FrameWork
//
//  Created by Jeetesh Shaw on 09/03/24.
//

import SwiftUI

struct FrameworkDetailsFile: View {
    
    let framework: Framework
    @Binding var isShowingDetailsView: Bool
    @State private var isShowSafariView = false
    
    var body: some View {
        VStack {
            
            CrossDismissButton(
                isShowingDetailsView: $isShowingDetailsView
            )
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                isShowSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
        }
        .sheet(isPresented: $isShowSafariView, content:{
            SafariView(
                url: URL(string: framework.urlString)
                ?? URL(string: "https://apple.com")!
            )
        })
//        to get it on full screen
//        .fullScreenCover(isPresented: $isShowSafariView, content:{
//            SafariView(url: URL(string: framework.urlString) ?? URL(string: "https://apple.com")!)
//        })
    }
}

struct FrameworkDetailsFile_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailsFile(framework: MockData.sampleFramework,
                             isShowingDetailsView: .constant(false)
        )
        .preferredColorScheme(.dark)
    }
}
