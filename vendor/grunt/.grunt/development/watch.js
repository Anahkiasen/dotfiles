module.exports = {
	options: {
		livereload : true,
		interrupt  : true,
	},

	grunt: {
		files: ['Gruntfile.js', '.grunt/**/*'],
		tasks: 'default',
	},
	images: {
		files: '<%= paths.original.img %>/**/*',
		tasks: 'copy',
	},
	scripts: {
		files: '<%= paths.original.js %>/**/*',
		tasks: 'js',
	},
	stylesheets: {
		files: '<%= paths.original.sass %>/**/*',
		tasks: 'css',
	},
};