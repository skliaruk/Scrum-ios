//
//  ScrumApp.swift
//  Scrum
//
//  Created by Ilia Skliaruk on 18.10.2022.
//

import SwiftUI

@main
struct ScrumApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ScrumsView(scrums:$scrums)
            }
            
        }
    }
}
