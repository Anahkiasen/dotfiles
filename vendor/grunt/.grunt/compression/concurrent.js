module.exports = {

	// Flows
	//////////////////////////////////////////////////////////////////////

	// Cleans up compiled files
	clean: ['clean:local', 'clean:front', 'compass:clean'],

	// Build the assets
	build: ['api', 'css', 'js', 'copy'],

	// Filetypes
	//////////////////////////////////////////////////////////////////////

	js: [
		'newer:typescript',
	],

};
