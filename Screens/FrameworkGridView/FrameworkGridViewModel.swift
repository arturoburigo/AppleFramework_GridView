//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Arturo Burigo on 4/29/23.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
}
