module.exports = function(grunt) {

	////////////////////////////////////////////////////////////////////
	/////////////////////////////// COMMANDS ///////////////////////////
	////////////////////////////////////////////////////////////////////

	grunt.registerTask('default', 'Build assets for local', [
		'concurrent:build',
	]);

	grunt.registerTask('rebuild', 'Rebuild all assets from scratch', [
		'concurrent:clean',
		'concurrent:build',
	]);

	grunt.registerTask('production', 'Build assets for production', [
		'concurrent:images',
		'rebuild',
		'ngAnnotate',
		'shell:assets',
		'useminPrepare',
		'ngtemplates',
		'concat',
		'copy',
		'concurrent:minify',
		'usemin',
	]);

	// Flow
	////////////////////////////////////////////////////////////////////

	grunt.registerTask('lint', 'Lint the files', [
		'phplint',
		'tslint',
		'scsslint',
		'csslint',
		'csscss',
	]);

	// By filetype
	////////////////////////////////////////////////////////////////////

	grunt.registerTask('md', 'Build contents', [
		'newer:concat:md',
		'newer:markdown',
		'newer:prettify',
	]);

	grunt.registerTask('css', 'Build stylesheets', [
		'newer:compass:compile',
		'newer:autoprefixer',
	]);

}