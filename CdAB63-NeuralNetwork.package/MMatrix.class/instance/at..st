accessing
at: aPoint

	^ self array at: ((aPoint x - 1) * self nbColumns + (aPoint y - 1)) + 1