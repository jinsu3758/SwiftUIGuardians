//
//  DetailScene.swift
//  SwiftUIMemo
//
//  Created by 박진수 on 2020/11/18.
//

import SwiftUI

struct DetailScene: View {
    @ObservedObject var memo: Memo
    @EnvironmentObject var store: MemoStore
    @EnvironmentObject var formatter: DateFormatter
    
    @State private var showEditSheet: Bool = false
    
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    HStack {
                        Text(self.memo.content)
                            .padding()
                        
                        Spacer()
                    }
                    
                    Text("\(self.memo.insertDate, formatter: formatter)")
                        .padding()
                        .font(.footnote)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                }
                
                HStack {
                    Button(action: {
                        self.showEditSheet.toggle()
                    }, label: {
                        Image(systemName: "square.and.pencil")
                    })
                    .padding()
                }
            }
        }
        .navigationBarTitle("메모 보기", displayMode: .inline)
        
    }
}

struct DetailScene_Previews: PreviewProvider {
    static var previews: some View {
        DetailScene(memo: Memo(content: "SwiftUI"))
            .environmentObject(DateFormatter.memoDateFormatter)
            .environmentObject(MemoStore())
    }
}
