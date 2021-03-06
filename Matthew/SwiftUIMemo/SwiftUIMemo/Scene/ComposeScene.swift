//
//  ComposeScene.swift
//  SwiftUIMemo
//
//  Created by devming on 2020/11/12.
//

import SwiftUI

struct ComposeScene: View {
//    @EnvironmentObject var keyboard: KeyboardObserver
    @EnvironmentObject var store: CoreDataManager
    @State private var content: String = ""
    
    @Binding var showComposer: Bool
    
    var memo: MemoEntity? = nil
    
    var body: some View {
        NavigationView {
            VStack {
                TextView(text: $content)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
//                    .padding(.bottom, keyboard.context.height)
//                    .animation(.easeInOut(duration: keyboard.context.animation))
                    .background(Color.yellow)
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .navigationBarTitle(memo != nil ? "메모 편집" : "새 메모" , displayMode: .inline)
            .navigationBarItems(leading: DismissButton(show: $showComposer) ,trailing: SaveButton(show: $showComposer, content: $content, memo: memo))
        }
        .onAppear { // UI 초기화 시점에 수행할 코드
            self.content = self.memo?.content ?? ""
        }
    }
}

fileprivate struct DismissButton: View {
    @Binding var show: Bool
    var body: some View {
        Button(action: {
            show = false
            print("취소")
        }, label: {
            Text("취소")
        })
    }
}

fileprivate struct SaveButton: View {
    @Binding var show: Bool
    
    @EnvironmentObject var store: CoreDataManager
    @Binding var content: String
    
    var memo: MemoEntity? = nil
    
    var body: some View {
        Button(action: {
                if let memo = memo {
                    self.store.update(memo: memo, content: content)
                } else {
                    self.store.addMemo(content: content)
                }
                
                show = false
            },
            label: {
                Text("저장")
            }
        )
        
    }
}

struct ComposeScene_Previews: PreviewProvider {
    static var previews: some View {
        ComposeScene(showComposer: .constant(false))
            .environmentObject(CoreDataManager.shared)
//            .environmentObject(KeyboardObserver())
    }
}
