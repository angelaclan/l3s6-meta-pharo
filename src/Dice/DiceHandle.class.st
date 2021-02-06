Class {
	#name : #DiceHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #Dice
}

{ #category : #arithmetic }
DiceHandle >> + aDiceHandle [
	| handle |
	handle := self class new.
	dice do: [ :each | handle addDice: each ].
	aDiceHandle dice do: [ :each | handle addDice: each ].
	^ handle
]

{ #category : #arithmetic }
DiceHandle >> addDice: aDice [
	dice add: aDice
]

{ #category : #arithmetic }
DiceHandle >> dice [
	^ dice
]

{ #category : #arithmetic }
DiceHandle >> diceNumber [
	^ dice size
]

{ #category : #initialization }
DiceHandle >> initialize [
	super initialize.
	dice := OrderedCollection new
]

{ #category : #arithmetic }
DiceHandle >> maxValue [
	| res |
	res := 0.
	dice do: [ :each | res := res + each faces ].
	^ res
]

{ #category : #arithmetic }
DiceHandle >> roll [
	| res |
	res := 0.
	dice do: [ :each | res := res + each roll ].
	^ res
]
