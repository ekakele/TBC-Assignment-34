//
//  MainViewModel.swift
//  Assignment-34
//
//  Created by Eka Kelenjeridze on 02.01.24.
//

import Foundation
import GenericNetworkManager

class MainViewModel: ObservableObject {
    // MARK: - Properties
    private var networkManager: GenericNetworkManager
    @Published var items: [Item] = []
    @Published var query: String = "saturn"
    
    // MARK: - Init
    init() {
        self.networkManager = GenericNetworkManager(baseURL: "https://images-api.nasa.gov/")
        fetchData()
    }
    
    //MARK: - Methods
    func fetchData() {
        let endpointString = "search?q=\(query)&media_type=video"
        networkManager.fetchData(endpoint: endpointString) { (result: Result<NASAModel, Error>) in
            switch result {
            case .success(let data):
                DispatchQueue.main.async {
                    self.items = data.collection.items.map { item in
                        
                        var newItem = item
                        newItem.href = generateVideoURL(originalURL: item.href) ?? ""
                        return newItem
                    }
                }
            case .failure(let error):
                print("Error fetching items: \(error.localizedDescription)")
            }
        }
    }
}
