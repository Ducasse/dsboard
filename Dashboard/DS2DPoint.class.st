Class {
	#name : #DS2DPoint,
	#superclass : #Object,
	#instVars : [
		'data'
	],
	#category : #Dashboard
}

{ #category : #'instance creation' }
DS2DPoint class >> consumeFrom: aCollection [ 
	
	^ self new data: (Point new setX: aCollection first setY: aCollection second); yourself
]

{ #category : #accessing }
DS2DPoint >> data: aPoint [ 
	data := aPoint
]

{ #category : #accessing }
DS2DPoint >> type [
	^ self class
]

{ #category : #accessing }
DS2DPoint >> x [
	^ data x
]

{ #category : #accessing }
DS2DPoint >> y [
	^ data y
]
