//
//  ContentView.swift
//  Webm Quicklook
//
//  Created by ZZS on 18/02/2024.
//
@main
struct NetronViewerApp: App {
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .frame(minWidth: 600, minHeight: 400)
                .onAppear {
                                                    NSApp.appearance = NSAppearance(named: .darkAqua)
                    NSApp.windows.first?.title = "Quicklook Netron"}


                
                
                                          .onDisappear {
                      NSApplication.shared.terminate(nil)}

                    }  }
        }
import SwiftUI
import QuickLookUI

struct ContentView: View {
     let sampleFileURL = Bundle.main.url(forResource: "sample", withExtension: "onnx")!
         public  var buttonpressed = Bool()

  var body: some View {
              Text(" ")
//                    .font(.title2)
//                              .padding()

    Button(action:{ QuickLookPanel(url: sampleFileURL).dfdfdefd() }){
    Image(nsImage: NSApplication.shared.applicationIconImage)
     //   .resizable()
       // .scaledToFit()
        //.frame(width: 128, height: 128)
        
        }
            .buttonStyle(.borderless)
                           .keyboardShortcut(KeyEquivalent.space, modifiers: [])
//                .padding()
      VStack {


         Text("Quicklook Netron's registered! Click the icon or press space to check sample neural network.")
          .font(.title2)
         Text("You can quit the app now. It also terminates automatically when this window is closed.")
          .font(.footnote)
                 }
        //.hidden()
      .padding(40)

        
//    QuickLookPanel(url: sampleFileURL)



      VStack {if #available(macOS 13.3, *) {
                  Text("If you are updating, remove or replace the older app in the same location.")
              .monospaced()
              .font(.footnote)

          } else {
          Text("If you are updating, replace/remove the older app.")
          }

        if #available(macOS 13.3, *) {
          Text(" ")
//          Text("App terminates automatically when this window is closed.")
            .monospaced()
               .font(.footnote)
        } else {
          Text("App terminates automatically when this window is closed.")
        }
      }
    VStack{
      HStack{
            Text("Quicklook Netron version 1.0")
               .font(.footnote)
               
        Link("Github.com repositery",
             destination: URL(string: "https://github.com/Oil3/Quicklook-Netron")!)
             .font(.footnote)
        .help("github.com/Oil3/Quicklook-Netron")
               }
               



                    }
                .frame(minWidth: 100, idealWidth: 200, minHeight: 50, idealHeight: 100)
.onDisappear {
              NSApplication.shared.terminate(nil) }
                        //.frame(idealWidth: 100, maxWidth:200, idealHeight: 100, maxHeight: 200)
//        VStack {
//            Image(systemName: "puzzlepiece.extension")
//            Image(systemName: "powerplug")
//            
//            Text("february 2025 latest stable version")
//   
//           // .frame(width: 0, height: 0)
//            .onDisappear {
//              NSApplication.shared.terminate(nil) 
//            }
//            
//            }}
            
            
          

    }
            
}


struct QuickLookPreview: NSViewRepresentable {
    var url: URL
    var autostarts: Bool = true

    func makeNSView(context: Context) -> QLPreviewView {
        let preview = QLPreviewView()
        preview.autostarts = autostarts
        return preview
    }

    func updateNSView(_ nsView: QLPreviewView, context: Context) {
        nsView.previewItem = url as QLPreviewItem
    }
}
