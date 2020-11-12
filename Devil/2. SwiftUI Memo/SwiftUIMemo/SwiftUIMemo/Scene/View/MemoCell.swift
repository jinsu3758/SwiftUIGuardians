//
//  MemoCell.swift
//  SwiftUIMemo
//
//  Created by 박진수 on 2020/11/11.
//

import SwiftUI

struct MemoCell: View {
    @ObservedObject var memo: Memo
    // 신기하네???
    @EnvironmentObject var dateFormatter: DateFormatter
        
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(memo.content)
                .font(.body)
                .lineLimit(1)
            
            Text("\(memo.insertDate, formatter: dateFormatter)")
                .font(.caption)
                .foregroundColor(.secondary)
            
            
        }
    }
}

struct MemoCell_Previews: PreviewProvider {
    static var previews: some View {
        MemoCell(memo: Memo(content: "Test"))
            .environmentObject(DateFormatter.memoDateFormatter)
    }
}
