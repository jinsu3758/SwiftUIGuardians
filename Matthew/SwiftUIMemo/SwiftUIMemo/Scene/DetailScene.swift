//
//  DetailScene.swift
//  SwiftUIMemo
//
//  Created by devming on 2020/11/27.
//

import SwiftUI

struct DetailScene: View {
    @ObservedObject var memo: Memo
    
    @EnvironmentObject var store: MemoStore
    @EnvironmentObject var formatter: DateFormatter
    
    var body: some View {
        VStack {
            ScrollView { // 기본 수직 스크롤
                VStack {
                    HStack {
                        Text(self.memo.content)
                            .padding()
                        Spacer()
                    } // 기본 여백
                    
                    Text("\(self.memo.insertDate, formatter: formatter)")
                        .padding()
                        .font(.footnote)
                        .foregroundColor(Color(.secondaryLabel))
                }
            }
        }
        .navigationTitle("메모 보기")
    }
}

struct DetailScene_Previews: PreviewProvider {
    static var previews: some View {
        DetailScene(memo: Memo(content: "SwiftUI"))
            .environmentObject(MemoStore())
            .environmentObject(DateFormatter.memoDateFormatter)
    }
}
