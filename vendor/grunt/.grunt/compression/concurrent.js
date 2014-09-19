module.exports = {

	// Flows
	//////////////////////////////////////////////////////////////////////

	// Cleans up compiled files
	clean: ['clean:local', 'clean:front', 'compass:clean'],

	// Build the assets
	build: ['css', 'js', 'svg', 'copy'],

	// Compression
	//////////////////////////////////////////////////////////////////////

	// Compresses images
	images: ['newer:svgmin', 'newer:tinypng'],

	// Filetypes
	//////////////////////////////////////////////////////////////////////

	js: [
		'newer:nggettext_compile',
		'newer:shell:routes',
		'newer:typescript',
	],

};
