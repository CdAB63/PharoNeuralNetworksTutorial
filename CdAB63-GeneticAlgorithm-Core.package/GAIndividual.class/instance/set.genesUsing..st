as yet unclassified
set: numberOfGenes genesUsing: geneBlockFactory

	self checkForRandomNumber.
	self genes: ((1 to: numberOfGenes)
							collect: [ :index | geneBlockFactory cull: random cull: index cull: self ])