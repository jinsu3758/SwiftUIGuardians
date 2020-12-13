//
//  MemoCell.swift
//  SwiftUIMemo
//
//  Created by devming on 2020/11/12.
//

import SwiftUI

struct MemoCell: View {
    @ObservedObject var memo: MemoEntity
    @EnvironmentObject var formatter: DateFormatter
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(memo.content ?? "")
                .font(.body)
                .lineLimit(1)
            
            Text("\(memo.insertDate ?? Date(), formatter: self.formatter)")
                .font(.caption)
                .foregroundColor(.secondary)
        }
    }
}

struct MemoCell_Previews: PreviewProvider {
    static var previews: some View {
        MemoCell(memo: MemoEntity())
            .environmentObject(DateFormatter.memoDateFormatter)
    }
}
