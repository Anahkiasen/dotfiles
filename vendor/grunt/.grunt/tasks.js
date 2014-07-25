module.exports = function(grunt) {

	////////////////////////////////////////////////////////////////////
	/////////////////////////////// COMMANDS ///////////////////////////
	////////////////////////////////////////////////////////////////////

	grunt.registerTask('default', 'Build assets for local', [
		'css',
		'js',
		'copy',
	]);

	grunt.registerTask('rebuild', 'Rebuild all assets from scratch', [
		'clean',
		'compass:clean',
		'default',
	]);

	grunt.registerTask('production', 'Build assets for production', [
		'js',
		'concat:css',
		'copy',
		'minify'
	]);

	// Flow
	////////////////////////////////////////////////////////////////////

	grunt.registerTask('minify', 'Minify assets', [
		'newer:cssmin',
		'newer:uglify',
	]);

	grunt.registerTask('images', 'Recompress images', [
		'newer:svgmin',
		'newer:tinypng',
	]);

	grunt.registerTask('lint', 'Lint the files', [
		'tslint',
		'scssint',
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

	grunt.registerTask('js', 'Build scripts', [
		'newer:typescript',
		'newer:concat:js',
	]);

	grunt.registerTask('css', 'Build stylesheets', [
		'newer:compass:compile',
		'newer:autoprefixer',
		'newer:concat:css',
	]);

}