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
            .navigationBarTitle("새 메모", displayMode: .inline)
            .navigationBarItems(leading: DismissButton(show: $showComposer),
                                trailing: SaveButton(show: $showComposer, content: $content))
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
    
    var body: some View {
        Button(action: {
            self.store.insert(memo: self.content)
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
