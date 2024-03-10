//
//  FrameworkGridViewModel.swift
//  Apple-FrameWork
//
//  Created by Jeetesh Shaw on 09/03/24.
//

import SwiftUI

final class FrameworkGridViewModel : ObservableObject {
    
    var selectedFramework: Framework?{
        // didset will be trigger when we update/initilize selectedfrramework
        didSet {isShowingDetailsView = true}
    }
    
    
    
    @Published var isShowingDetailsView: Bool = false
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
}
