Class {
	#name : #Dice,
	#superclass : #Object,
	#instVars : [
		'faces'
	],
	#category : #Dice
}

{ #category : #'as yet unclassified' }
Dice class >> faces: anInterger [
	| d |
	d := Dice new.
	d faces: anInterger.
	^ d
]

{ #category : #'as yet unclassified' }
Dice >> faces [
	^ faces
]

{ #category : #'as yet unclassified' }
Dice >> faces: anInterger [
	faces:= anInterger.
]

{ #category : #'as yet unclassified' }
Dice >> initialize [
	super initialize.
	faces := 6
]

{ #category : #'as yet unclassified' }
Dice >> printOn: aStream [ 
	super printOn: aStream.
	aStream nextPutAll: ' (', faces printString , ') '
]

{ #category : #'as yet unclassified' }
Dice >> roll [
	^ faces atRandom 
]
