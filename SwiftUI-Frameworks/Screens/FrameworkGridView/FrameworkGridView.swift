//
//  FrameworkGridView.swift
//  SwiftUI-Frameworks
//
//  Created by KyoungSoo Kim on 6/22/24.
//

import SwiftUI

struct FrameworkGridView: View {
	
	@StateObject var viewModel = FrameworkGridViewModel()
	
	var body: some View {
		NavigationStack {
			List {
				ForEach(MockData.frameworks) { framework in
					NavigationLink(value: framework) {
						FrameworkTitleView(framework: framework)
					}
				}
			}
			.navigationTitle("🍎 Frameworks")
			.navigationDestination(for: Framework.self) { framework in
				FrameworkDetailView(framework: framework)
			}
			
		}
		
	}
}

#Preview {
    FrameworkGridView()
}
