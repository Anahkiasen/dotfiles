module.exports = {
	options: {
		livereload: true,
		interrupt : true,
	},

	grunt: {
		files: ['Gruntfile.js', '<%= grunt %>/**/*'],
		tasks: 'default',
	},
	api: {
		files: ['<%= paths.docs.api %>/blueprint/*.apib'],
		tasks: 'api',
	},
	img  : {
		files: '<%= paths.original.img %>/**/*',
		tasks: 'copy',
	},
	js   : {
		files: ['<%= files.ts %>', '<%= paths.original.templates %>/**/*'],
		tasks: 'js',
	},
	css  : {
		files: '<%= files.sass %>',
		tasks: 'css',
	},
};
