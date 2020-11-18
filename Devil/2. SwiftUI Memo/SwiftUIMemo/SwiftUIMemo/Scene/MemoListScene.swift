//
//  ContentView.swift
//  SwiftUIMemo
//
//  Created by 박진수 on 2020/11/06.
//

import SwiftUI

struct MemoListScene: View {
    @EnvironmentObject var store: MemoStore
    @EnvironmentObject var dateFormatter: DateFormatter
    
    @State var showComposer: Bool = false
    
    var body: some View {
        NavigationView {
            List(store.list) { memo in
                NavigationLink(destination: DetailScene(memo: memo)
                               , label: {
                                MemoCell(memo: memo)
                })
                    
                
                MemoCell(memo: memo)
            }
            .navigationBarTitle("Devil의 Memo")
            .navigationTitle("Devil의 Memo") // 뭐가 달라
            .navigationBarItems(trailing: ModalButton(show: $showComposer))
            .sheet(isPresented: $showComposer, content: {
                ComposeScene(showComposer: self.$showComposer)
                    .environmentObject(KeyboardObserver())
            })
            
        }
    }
}

fileprivate struct ModalButton: View {
    @Binding var show: Bool
    
    var body: some View {
        Button(action: {
            self.show = true
        }, label: {
            Image(systemName: "plus")
        })
    }
    
}

struct MemoListScene_Previews: PreviewProvider {
    static var previews: some View {
        MemoListScene()
            .environmentObject(MemoStore())
            .environmentObject(DateFormatter.memoDateFormatter)
    }
}



