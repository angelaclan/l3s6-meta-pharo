Class {
	#name : #Scissors,
	#superclass : #PSSElement,
	#category : #ALittleGame
}

{ #category : #'as yet unclassified' }
Scissors >> play: anElement [
	^ anElement playAgainstScissors: self 
]

{ #category : #'as yet unclassified' }
Scissors >> playAgainstPaper: aScissors [

	^ #scissors 
]

{ #category : #'as yet unclassified' }
Scissors >> playAgainstScissors: aScissors [

	^ #draw 
]

{ #category : #'as yet unclassified' }
Scissors >> playAgainstStone: aScissors [

	^ #stone 
]
