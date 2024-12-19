//
//  Arrange_ScreensApp.swift
//  Arrange Screens
//
//  Created by Tyler Kennedy on 12/18/24.
//

import SwiftUI

@main
struct Arrange_ScreensApp: App {
    // The main scene
    var body: some Scene {
        // Creates a menu bar item with a dropdown menu
        MenuBarExtra("Arrange Screens", systemImage: "desktopcomputer") {
            Button {
                if let scriptPath = Bundle.main.path(forResource: "side-by-side-screens", ofType: "app") {
                    runApp(at: scriptPath)
                }
            } label: {
                Label("Side by Side", systemImage: "arrow.left.arrow.right")
            }

            Button {
                if let scriptPath = Bundle.main.path(forResource: "stack-screens", ofType: "app") {
                    runApp(at: scriptPath)
                }
            } label: {
                Label("Stack", systemImage: "arrow.up.arrow.down")
            }


            Divider()

            Button("Quit") {
                NSApplication.shared.terminate(nil)
            }
        }
    }
    
    // Function to run automation .app files
    func runApp(at path: String) {
        let process = Process()
        process.launchPath = "/usr/bin/open"
        process.arguments = [path]
        process.launch()
    }
}
