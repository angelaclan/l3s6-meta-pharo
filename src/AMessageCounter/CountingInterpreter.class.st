Class {
	#name : #CountingInterpreter,
	#superclass : #RBProgramNodeVisitor,
	#instVars : [
		'count'
	],
	#category : #AMessageCounter
}

{ #category : #initialization }
CountingInterpreter >> initialize [
	super initialize.
	count := 0
]
