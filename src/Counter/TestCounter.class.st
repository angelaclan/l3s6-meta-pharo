Class {
	#name : #TestCounter,
	#superclass : #TestCase,
	#instVars : [
		'count'
	],
	#category : #Counter
}

{ #category : #tests }
TestCounter >> testCounterIsSetAndRead [
	| c |
	c := Counter new.
	c count: 7.
	self assert: c count equals: 7
]

{ #category : #tests }
TestCounter >> testDecrement [
	| c |
	c := Counter new.
	c count: 2.
	c decrement; decrement.
	self assert: c count equals: 0
]

{ #category : #tests }
TestCounter >> testIncrement [
	| c |
	c := Counter new.
	c count: 2.
	c increment; increment.
	self assert: c count equals: 4
]

{ #category : #tests }
TestCounter >> testInitialize [ 
|c|
c := Counter new.
self assert: c count equals: 0
]
