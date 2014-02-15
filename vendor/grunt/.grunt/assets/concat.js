module.exports = {
	css: {
		files: {
			'<%= paths.compiled.css %>/styles.css': [
				'<%= paths.original.css %>/**/*.css',
			],
		},
	},
	js: {
		files: {
			'<%= paths.compiled.js %>/scripts.js': [
				'<%= paths.original.js %>/**/*.js',
			],
		},
	}
};