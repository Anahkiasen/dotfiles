module.exports = {
	css: {
		files: {
			'<%= paths.compiled.css %>/styles.css': [
				'<%= files.css %>',
			],
		},
	},
	js: {
		files: {
			'<%= paths.compiled.js %>/scripts.js': [
				'<%= files.js %>',
			],
		},
	}
};