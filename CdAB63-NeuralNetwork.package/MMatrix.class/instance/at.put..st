accessing
at: aPoint put: aValue

	^ self array at: ((aPoint x - 1) * self nbColumns + (aPoint y - 1)) + 1 put: aValue asFloat