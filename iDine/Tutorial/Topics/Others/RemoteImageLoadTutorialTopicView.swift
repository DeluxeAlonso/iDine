//
//  RemoteImageLoadTutorialTopicView.swift
//  iDine
//
//  Created by Alonso on 28/01/24.
//

import SwiftUI

fileprivate struct RemoteImage: View {
    private enum LoadState {
        case loading, success, failure
    }

    private class Loader: ObservableObject {
        var data = Data()
        var state = LoadState.loading

        init(url: String) {
            guard let parsedURL = URL(string: url) else {
                fatalError("Invalid URL: \(url)")
            }
            URLSession.shared.dataTask(with: parsedURL) { data, response, error in
                DispatchQueue.main.async {
                    if let data = data, data.count > 0 {
                        self.data = data
                        self.state = .success
                    } else {
                        self.state = .failure
                    }

                    self.objectWillChange.send()
                }
            }.resume()
        }
    }

    @ObservedObject private var loader: Loader
    var loading: Image
    var failure: Image

    init(url: String,
         loading: Image = Image(systemName: "photo"),
         failure: Image = Image(systemName: "multiply.circle")) {
        self.loader = Loader(url: url)
        self.loading = loading
        self.failure = failure
    }

    var body: some View {
        selectImage()
            .resizable()
    }

    private func selectImage() -> Image {
        switch loader.state {
        case .loading: return loading
        case .failure: return failure
        case .success:
            if let image = UIImage(data: loader.data) {
                return Image(uiImage: image)
            } else {
                return failure
            }
        }
    }
}

struct RemoteImageLoadTutorialTopicView: View {
    var body: some View {
        RemoteImage(url: "https://www.hackingwithswift.com/img/app-store@2x.png")
            .aspectRatio(contentMode: .fit)
            .frame(width: 200)
    }
}

struct RemoteImageLoadTutorialTopicView_Previews: PreviewProvider {
    static var previews: some View {
        RemoteImageLoadTutorialTopicView()
    }
}
