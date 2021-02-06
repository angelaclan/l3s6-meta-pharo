Class {
	#name : #Stone,
	#superclass : #PSSElement,
	#category : #ALittleGame
}

{ #category : #'as yet unclassified' }
Stone >> play: anElement [

	^  anElement playAgainstStone: self
]

{ #category : #'as yet unclassified' }
Stone >> playAgainstPaper: aStone [
	^ #Paper

]

{ #category : #'as yet unclassified' }
Stone >> playAgainstScissors: aStone [
	^ #Stone

]

{ #category : #'as yet unclassified' }
Stone >> playAgainstStone: aStone [
	^ #draw

]
