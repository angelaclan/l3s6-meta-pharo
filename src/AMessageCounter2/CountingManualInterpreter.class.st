Class {
	#name : #CountingManualInterpreter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #AMessageCounter2
}

{ #category : #visiting }
CountingManualInterpreter >> visitArrayNode: aRBArrayNode [
	^ self
]

{ #category : #visiting }
CountingManualInterpreter >> visitAssignmentNode:  anAssignmentNode [
	anAssignmentNode value acceptVisitor: self
]

{ #category : #visiting }
CountingManualInterpreter >> visitLiteralValueNode: aRBLiteralValueNode [
	^ self
]

{ #category : #visiting }
CountingManualInterpreter >> visitMessagedNode: aRBMessageNode [
count := count + 1.
aRBMessageNode receiver acceptVisitor: self.
aRBMessageNode arguments do: [ :each | each acceptVisitor: self ]
]

{ #category : #visiting }
CountingManualInterpreter >> visitMethodNode: aMethodNode [
	aMethodNode statements do: [ :each | each acceptVisitor: self ]
]

{ #category : #visiting }
CountingManualInterpreter >> visitSelfNode: aRBMethodNode [
	^ self
]

{ #category : #visiting }
CountingManualInterpreter >> visitVariableNode: anVariableNode [
	^ self
]
