Class {
	#name : #CountingVisitor,
	#superclass : #RBProgramNodeVisitor,
	#instVars : [
		'count'
	],
	#category : #AMessageCounter
}

{ #category : #visiting }
CountingVisitor >> visitMessageNode: aMessageNode [
	super visitMessageNode: aMessageNode.
	count := count + 1
]
