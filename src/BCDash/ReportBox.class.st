Class {
	#name : #ReportBox,
	#superclass : #Reports,
	#category : #'BCDash-Core'
}

{ #category : #rendering }
ReportBox >> renderContentOn: html [
	| chartData |
	chartData := Chart2dData
		xObjects: #(SLOC FC)
		function: [ :aPlayer | 
			ChartBoxPlotData
				lowest: 5 atRandom
				firstQuartile: (5 to: 10) atRandom
				median: (11 to: 15) atRandom
				thirdQuartile: (16 to: 20) atRandom
				highest: (21 to: 25) atRandom ].
	chartData chartType: ChartBoxPlot.
	html render: (ChartJsComponent data: chartData).

]