//
//  BarGraph.swift
//  Graphics
//
//  Created by Mohamed Hegab on 23.12.20.
//

import SwiftUI

struct BarGraph: View {
    let reports: [Report]

    var body: some View {
        VStack {
            HStack(alignment: .lastTextBaseline){
                Spacer()

                ForEach(reports, id: \.year) { report in
                    BarView(report: report)
                }
                Spacer()

            }
        }
    }
}

struct BarGraph_Previews: PreviewProvider {
    static var previews: some View {
        BarGraph(reports: Report.all())
    }
}


struct BarView: View {
    let report: Report
    @State private var showGraph: Bool = false

    var body: some View {
        let value = report.revenue / 500
        let yValue = Swift.min(value * 20, 500)
        VStack {
            Text(String(format: "$%.2f", report.revenue))
            Rectangle()
                .fill(Color.green)
                .frame(height: self.showGraph ?  CGFloat(yValue) : 0.0)
                .padding()
                .onAppear {
                    withAnimation(.spring()) {
                        self.showGraph = true
                    }
                }
            Text(report.year)
        }

    }
}
