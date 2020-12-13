//
//  DetailScene.swift
//  SwiftUIMemo
//
//  Created by devming on 2020/11/27.
//

import SwiftUI

struct DetailScene: View {
    @ObservedObject var memo: MemoEntity
    
    @EnvironmentObject var store: CoreDataManager
    @EnvironmentObject var formatter: DateFormatter
    
    @State private var showEditSheet = false
    @State private var showDeleteAlert = false
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            ScrollView { // 기본 수직 스크롤
                VStack {
                    HStack {
                        Text(self.memo.content ?? "")
                            .padding()
                        Spacer()
                    } // 기본 여백
                    
                    Text("\(self.memo.insertDate ?? Date(), formatter: formatter)")
                        .padding()
                        .font(.footnote)
                        .foregroundColor(Color(.secondaryLabel))
                }
            }
            
            HStack {
                Button(action: {
                    self.showDeleteAlert.toggle()
                }, label: {
                    Image(systemName: "trash")
                        .foregroundColor(Color(UIColor.systemRed))
                })
                .padding()
                .alert(isPresented: $showDeleteAlert,
                       content: {
                        Alert(title: Text("삭제 확인"),
                              message: Text("메모를 삭제할까요?"),
                              primaryButton: .destructive(Text("삭제"),
                                                          action: {
                                                            self.store.delete(memo: memo)
                                                            self.presentationMode.wrappedValue.dismiss()
                                                            
                                                          }),
                              secondaryButton: .cancel())
                       })
                
                Spacer()
                
                Button(action: {
                    showEditSheet.toggle()
                }, label: {
                    Image(systemName: "square.and.pencil")
                })
                .padding()
                .sheet(isPresented: $showEditSheet, content: {
                    ComposeScene(showComposer: self.$showEditSheet, memo: self.memo)
                        .environmentObject(self.store)
                        .environmentObject(KeyboardObserver())
                })
            }
            .padding(.leading)
            .padding(.trailing)
        }
        .navigationTitle("메모 보기")
    }
}

struct DetailScene_Previews: PreviewProvider {
    static var previews: some View {
        DetailScene(memo: MemoEntity())
            .environmentObject(CoreDataManager.shared)
            .environmentObject(DateFormatter.memoDateFormatter)
    }
}
