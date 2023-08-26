//
//  ActivetiView.swift
//  thre
//
//  Created by الوليد خشيم on 04/02/1445 AH.
import SwiftUI

struct ActivetiView: View {
    enum ActivityCategory: String, CaseIterable {
        case all
        case replies
        case mentioned
        case veritied
        var title: String {
            switch self {
            case .all: return"All"
            case .replies:return "Replies"
            case .mentioned:return "Mentioned"
            case .veritied: return "Verified"
            }
        }
    }
    
    @State var currentSelectedCategory: ActivityCategory = .all
    var body: some View {
        NavigationView{
            VStack{
                ScrollView(.horizontal,showsIndicators: false){
                    HStack{
                        ForEach(ActivityCategory.allCases,id: \.self) {
                            category in
                            Button(
                                action: {
                                    currentSelectedCategory=category
                                },
                                label: {
                                    if currentSelectedCategory == category{
                                        Text (category.title)
                                            .frame(width:84)
                                            .padding(.horizontal, 16)
                                            .padding (.vertical, 8)
                                            .foregroundColor(.white)
                                            .background (
                                                RoundedRectangle(cornerRadius:12.5)
                                                    .fill(.black)
                                            )
                                    }else{
                                        Text (category.title)
                                            .frame(width:84)
                                            .padding(.horizontal, 16)
                                            .padding (.vertical, 8).background (
                                                RoundedRectangle(cornerRadius:12.5)
                                                    .stroke(.gray.opacity(0.25))
                                            )
                                    }
                                    
                                }
                            )
                            .buttonStyle(.plain)
                        }
                    }
                    .padding(.horizontal)
                }
                ScrollView{
                    ForEach(0..<10,id: \ .self){_ in
                        CardSearsh()
                        Divider()
                    }
                }
                .padding(.top)
            }
            
            
            .navigationBarTitleDisplayMode(.inline)
            .toolbar { // <2>
                ToolbarItem(placement: .principal) { // <3>
                    HStack {
                        Text("Activeti").font(.title).bold()
                        Spacer()
                    }.padding(.bottom)
                }
            }
        }}
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivetiView()
    }
}
//
//import SwiftUI
//
//struct ActivetiView: View {
//    var body: some View {
//       VStack {
//           ScrollView(.horizontal){
//               Text("f")
//           }
//           ScrollView{
//               CardActivity()
//               CardActivity()
//               CardActivity()
//               CardActivity()
//               CardActivity()
//               CardActivity()
//               CardActivity()
//               CardActivity()
//
//           }
//        }
//    }
//}
//
//struct ActivetiView_Previews: PreviewProvider {
//    static var previews: some View {
//        ActivetiView()
//    }
//}
