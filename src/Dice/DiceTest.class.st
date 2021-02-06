Class {
	#name : #DiceTest,
	#superclass : #TestCase,
	#category : #Dice
}

{ #category : #tests }
DiceTest >> testBetterCreationInterfaces [
	self shouldnt: [ Dice faces: 20 ] raise: Error
]

{ #category : #tests }
DiceTest >> testInitializeIsOk [
	self shouldnt: [Dice new] raise: Error 
]

{ #category : #tests }
DiceTest >> testRolling [
	| d |
	d := Dice new.
	1000 timesRepeat: [ self assert: (d roll between: 1 and: 6) ]
]
