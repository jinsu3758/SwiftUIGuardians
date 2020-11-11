//
//  Memo.swift
//  SwiftUIMemo
//
//  Created by 박진수 on 2020/11/06.
//

import SwiftUI

class Memo: Identifiable, ObservableObject {
    let id: UUID
    let insertDate: Date
    @Published var content: String
    
    init(id: UUID = UUID(), content: String, insertDate: Date = Date()) {
        self.id = id
        self.insertDate = insertDate
        self.content = content
    }
}

extension Memo: Equatable {
    static func == (lhs: Memo, rhs: Memo) -> Bool {
        return lhs.id == rhs.id
    }
}
