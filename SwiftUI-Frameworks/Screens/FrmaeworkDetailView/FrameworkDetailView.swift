//
//  FrameworkDetailView.swift
//  SwiftUI-Frameworks
//
//  Created by KyoungSoo Kim on 6/22/24.
//

import SwiftUI

struct FrameworkDetailView: View {
	
	var framework: Framework
	@State private var isShowingSafariView = false
	
	var body: some View {
		VStack {
			
			FrameworkTitleView(framework: framework)
			
			Text(framework.description)
				.font(.body)
				.padding()
			
			Spacer()
			
			Button {
				isShowingSafariView = true
			} label: {
//				AFButton(title: "Learn More")
				Label("Learn More", systemImage: "book.fill")
			}
			.buttonStyle(.borderedProminent)
			.controlSize(.large)
//			.foregroundStyle(.blue)
//			.buttonBorderShape(.capsule)
			.tint(.blue)
			
				Spacer()
			}
//		.sheet - modal / .fullScreenCover - Full page
		.fullScreenCover(isPresented: $isShowingSafariView, content: {
			SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
		})
		}
	}


#Preview {
	FrameworkDetailView(framework: MockData.sampleFramework)
}
