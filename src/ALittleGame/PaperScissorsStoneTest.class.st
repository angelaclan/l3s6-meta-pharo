Class {
	#name : #PaperScissorsStoneTest,
	#superclass : #TestCase,
	#category : #ALittleGame
}

{ #category : #tests }
PaperScissorsStoneTest >> testScissorsDraw [
	self assert: (Scissors new play: Scissors new) equals: #draw 
]

{ #category : #tests }
PaperScissorsStoneTest >> testScissorsLose [
	self assert: (Scissors new play: Stone new) equals: #Stone
]

{ #category : #tests }
PaperScissorsStoneTest >> testScissorsWin [
	self assert: (Scissors new play: Paper new) equals: #Scissors
]

{ #category : #tests }
PaperScissorsStoneTest >> testStoneDraw [
	self assert: (Stone new play: Stone new) equals: #draw 
]

{ #category : #tests }
PaperScissorsStoneTest >> testStoneLose [
	self assert: (Stone new play: Paper new) equals: #paper
]

{ #category : #tests }
PaperScissorsStoneTest >> testStoneWin [
	self assert: (Stone new play: Scissors new) equals: #stone
]
