//
//  FitnessPageView.swift
//  BodyRhythm
//
//  Created by Homayoun Salimi Manjili on 11/12/23.
//

import SwiftUI

struct FitnessPageView: View {
    var body: some View {
        //background color
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.color4, .color3, .color2, .color1]),
                startPoint: .bottomLeading,
                endPoint: .topTrailing
            )
            .edgesIgnoringSafeArea(.all)

            ScrollView {
                VStack (alignment: .leading, spacing: 5) {
                    //section for fitness
                    Text("Fitness")
                        .font(.title)
                        .bold()
                    WorkoutBoxView()
                    
                    
                    
                    //section for weekly activity summary
                    Text("Weekly Activity Summary")
                        .font(.title)
                        .padding(.top, 15)
                        .bold()
                    HStack {
                        Spacer()
                        WeeklyActivitySummaryView()
                            .frame(width: 340, height: 201)
                        Spacer()
                    }
                    
                    
                    //section for workout playlist
                    Text("Workout Playlist")
                        .font(.title)
                        .padding(.top, 20)
                        .bold()
                    Spacer()
                    SleepMusicBoxView()
                        .padding()
                }
                .padding()
                .brightness(0.2)
            }
        }
    }
}


struct FitnessPageView_Previews: PreviewProvider {
    static var previews: some View {
        FitnessPageView()
    }
}

