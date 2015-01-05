module.exports = function (grunt) {

	// Load modules
	grunt.loadNpmTasks('grunt-newer');
	grunt.loadNpmTasks('grunt-concurrent');

	require('jit-grunt')(grunt, {
		ngtemplates  : 'grunt-angular-templates',
		useminPrepare: 'grunt-usemin',
		scsslint     : 'grunt-scss-lint',
	});

	/**
	 * Loads all available tasks options
	 *
	 * @param {String} folder
	 *
	 * @return {Object}
	 */
	function loadConfig(folder) {
		var glob = require('glob');
		var path = require('path');
		var key;

		glob.sync('**/*.js', {cwd: folder}).forEach(function (option) {
			key = path.basename(option, '.js');
			config[key] = require(folder + option);
		});
	}

	////////////////////////////////////////////////////////////////////
	//////////////////////////// CONFIGURATION /////////////////////////
	////////////////////////////////////////////////////////////////////

	var config = {
		pkg : grunt.file.readJSON('package.json'),
		name: '<%= pkg.name %>',

		grunt     : '.grunt',
		app       : 'public/app',
		builds    : 'public/builds',
		components: 'public/components',
		views     : 'app/views',

		paths: {
			original: {
				css      : '<%= app %>/css',
				js       : '<%= app %>/js',
				ts       : '<%= app %>/ts',
				sass     : '<%= app %>/sass',
				fonts    : '<%= app %>/fonts',
				img      : '<%= app %>/img',
				svg      : '<%= app %>/svg',
				templates: '<%= app %>/templates',
			},
			compiled: {
				css  : '<%= builds %>/css',
				js   : '<%= builds %>/js',
				fonts: '<%= builds %>/fonts',
				img  : '<%= builds %>/img',
				svg  : '<%= builds %>/svg',
			},
		},

		files: {
			css      : '<%= paths.original.css %>/**/*.css',
			sass     : '<%= paths.original.sass %>/**/*.scss',
			js       : '<%= paths.original.js %>/**/*.js',
			ts       : '<%= paths.original.ts %>/**/*.ts',
			templates: '<%= paths.original.templates %>/**/*.html',
		}
	};

	// Load all tasks
	var gruntPath = './' + config.grunt + '/';
	loadConfig(gruntPath);
	grunt.initConfig(config);

	// Load custom tasks
	require(gruntPath + 'tasks.js')(grunt);

};
