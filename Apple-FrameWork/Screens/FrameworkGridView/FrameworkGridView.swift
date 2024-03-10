//
//  FrameworkGridView.swift
//  Apple-FrameWork
//
//  Created by Jeetesh Shaw on 09/03/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks
                            //                    id: \.id //if we have id name there than it's optional to write this line (identidfier)
                    ){ framework in
                        FrameworkTitleView(framework:framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
                .navigationTitle("🍎 Frameworks")
                .sheet(
                    isPresented: $viewModel.isShowingDetailsView){
                    FrameworkDetailsFile(
                        framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                        isShowingDetailsView: $viewModel.isShowingDetailsView
                    )
                }
            }
        }
        
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}



