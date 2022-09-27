converting
asStructuredArray

	^ (1 to: self nbRows) collect: [ :i | self atRow: i ] as: Array