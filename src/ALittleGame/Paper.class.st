Class {
	#name : #Paper,
	#superclass : #PSSElement,
	#category : #ALittleGame
}

{ #category : #'as yet unclassified' }
Paper >> play: anElement [ 

	^ anElement playAgainstPaper: self
]

{ #category : #'as yet unclassified' }
Paper >> playAgainstPaper: aPaper [

	^ #draw
]

{ #category : #'as yet unclassified' }
Paper >> playAgainstScissors: aPaper [

	^ #Scissors 
]

{ #category : #'as yet unclassified' }
Paper >> playAgainstStone: aPaper [

	^ #paper
]
