//
//  MeetingHeaderView.swift
//  Scrum
//
//  Created by Ilia Skliaruk on 19.10.2022.
//

import SwiftUI

struct MeetingHeaderView: View {
    let secondsElapsed: Int
    let secondsRemaining: Int
    let theme: Theme
    
    
    private var totalSeconds: Int {
        secondsElapsed + secondsRemaining
    }
    
    private var progress: Double {
            guard totalSeconds > 0 else { return 1 }
            return Double(secondsElapsed) / Double(totalSeconds)
        }
    
    private var minutesRemaining: Int {
            secondsRemaining / 60
        }
    var body: some View {
        VStack {
            ProgressView(value: progress)
                .progressViewStyle(ScrumProgressViewStyle(theme: theme))
            HStack{
                VStack {
                    Text("Seconds Elapsed").font(.caption)
                    Label("\(secondsElapsed)", systemImage: "hourglass.bottomhalf.fill")
                    
                }
                Spacer()
                VStack {
                    Text("Seconds Remaining").font(.caption)
                    Label("\(secondsRemaining)", systemImage: "hourglass.tophalf.fill")
                    
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            .accessibilityValue("\(minutesRemaining) minutes")
            .padding([.top, .horizontal])
        }
        
    }
}

struct MeetingHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingHeaderView(secondsElapsed: 60, secondsRemaining: 180, theme: .bubblegum)
                   .previewLayout(.sizeThatFits)
    }
}
