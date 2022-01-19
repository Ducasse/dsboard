Class {
	#name : #DSCompositeDomain,
	#superclass : #DSDomain,
	#category : #Dashboard
}

{ #category : #'instance creation' }
DSCompositeDomain class >> data: aCollection for: aCollection2 [ 
	"aCollection is a tuple of data represented by a list of domain description"
	
	^ self new
			data: (DSBuilder consume: aCollection asDimensions: aCollection2 );
			yourself 		
]

{ #category : #'instance creation' }
DSCompositeDomain class >> example [ 
	<sampleInstance>
	
	^ (DSBuilder 
		consumeCollection: 
			#(
			(2.4 true 'rain')
			(0.5 true 'rain')
			(-1.2 true 'snow')
			(-2.3 false '-')
			(3.2 true 'rain')	) 
		asElementOf: { DSTemperature . DSBoolean . DSEnumerated }) first
]

{ #category : #accessing }
DSCompositeDomain >> data: aCollection [ 
	data := aCollection
]

{ #category : #accessing }
DSCompositeDomain >> first [
	^ data first
]

{ #category : #accessing }
DSCompositeDomain >> second [
	^ data second
]

{ #category : #accessing }
DSCompositeDomain >> third [
	^ data third
]
