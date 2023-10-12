//
//  RMSearchViewViewModel.swift
//  RickAndMorty
//
//  Created by Rita on 30.09.2023.
//

import Foundation

final class RMSearchViewViewModel {
    
    let config: RMSearchViewController.Config
    private var optionMap: [RMSearchInputViewViewModel.DynamicOption: String] = [:]
    private var searchText = ""
        
    private var optionMapUpdateBlock: (((RMSearchInputViewViewModel.DynamicOption, String)) -> Void)?
    
    private var searchResultHandler: (() -> Void)?
    
    // MARK: - Init
    
    init(config: RMSearchViewController.Config) {
        self.config = config
        
    }
    
    // MARK: - Public
    
    public func registerSearchResultHandler(_ block: @escaping () -> Void) {
        self.searchResultHandler = block
    }
    
    public func executeSearch() {
        
        searchText = "Rick"
        
        var queryParams: [URLQueryItem] = [
        URLQueryItem(name: "name", value: searchText)
        ]
//        switch config.type.endpoint {
//        case .character, .episode:
//            searchText = "Rick"
//            queryParams.append(URLQueryItem(name: "name", value: searchText))
////            queryParams(RMGetAllCharactersResponse.self, request: request)
////        case .episode:
////            queryParams(RMGetAllEpisodesResponse.self, request: request)
//        case .location:
//            queryParams.append(URLQueryItem(name: "location", value: searchText))
////            queryParams(RMGetAllLocationsResponse.self, request: request)
//        }
        
        queryParams.append(contentsOf: optionMap.enumerated().compactMap({ _, element in
            let key: RMSearchInputViewViewModel.DynamicOption = element.key
            let value: String = element.value
            return URLQueryItem(name: key.queryArgument , value: value)
        }))
        
        let request = RMRequest(
            endpoint: config.type.endpoint,
            queryParameters: queryParams
        )
        
        RMService.shared.execute(request, expepecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print(model.results.count)
            case .failure:
                print("f")
            }
        }
    }
        
        public func set(query text: String) {
            self.searchText = text
        }
        
        public func set(value: String, for option: RMSearchInputViewViewModel.DynamicOption) {
            optionMap[option] = value
            let tuple = (option, value)
            optionMapUpdateBlock?(tuple)
        }
        
        public func registerOptionChangeBlock(_ block: @escaping ((RMSearchInputViewViewModel.DynamicOption, String)) -> Void ) {
            self.optionMapUpdateBlock = block
        }
    }
