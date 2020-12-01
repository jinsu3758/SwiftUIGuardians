//
//  ComposeScene.swift
//  SwiftUIMemo
//
//  Created by 박진수 on 2020/11/12.
//

import SwiftUI

struct ComposeScene: View {
    @EnvironmentObject var store: MemoStore
    @EnvironmentObject var keyboardObserver: KeyboardObserver
    @State private var content: String = ""
    
    @Binding var showComposer: Bool
    
    var memo: Memo?
    
    var body: some View {
        NavigationView {
            VStack {
                TextView(text: $content)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
//                    .padding(.bottom, keyboardObserver.context.height)
//                    .animation(.easeInOut(duration: keyboardObserver.context.animationDuration))
                    .background(Color.yellow)
                    
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .navigationBarTitle(memo != nil ? "메모 편집" : "새 메모", displayMode: .inline)
            .navigationBarItems(leading: DismissButton(show: $showComposer),
                                trailing: SaveButton(show: $showComposer, content: $content, memo: memo))
        }
        .onAppear { // 화면 초기화 코드 여기에 구현
            self.content = self.memo?.content ?? ""
        }
    }
}

fileprivate struct DismissButton: View {
    @Binding var show: Bool
    
    var body: some View {
        Button(action: {
            self.show = false
        }, label: {
            Text("취소")
        })
    }
}

fileprivate struct SaveButton: View {
    @Binding var show: Bool
    @Binding var content: String
    
    @EnvironmentObject var store: MemoStore
    
    var memo: Memo?
    
    var body: some View {
        Button(action: {
            if let memo = self.memo {
                self.store.update(memo: memo, content: content)
            }
            else {
                self.store.insert(memo: self.content)
            }
            
            self.show = false
        }, label: {
            Text("저장")
        })
    }
}

struct ComposeScene_Previews: PreviewProvider {
    static var previews: some View {
        ComposeScene(showComposer: .constant(false))
            .environmentObject(MemoStore())
            .environmentObject(KeyboardObserver())
    }
}
