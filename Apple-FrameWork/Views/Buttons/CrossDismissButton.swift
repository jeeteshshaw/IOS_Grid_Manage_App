//
//  CrossDismissButton.swift
//  Apple-FrameWork
//
//  Created by Jeetesh Shaw on 09/03/24.
//

import SwiftUI

struct CrossDismissButton: View {
    
    @Binding var isShowingDetailsView: Bool
    
    
    
    var body: some View {
        HStack {
            Spacer()
            Button{
                isShowingDetailsView = false
            }label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
                    
            }
            
        }
        .padding()
    }
}

struct CrossDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        CrossDismissButton(isShowingDetailsView: .constant(false))
    }
}
