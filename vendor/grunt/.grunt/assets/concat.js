module.exports = {
	apib: {
		files: {
			'<%= paths.docs.api %>/index.apib': '<%= paths.docs.api %>/blueprint/**/*.apib'
		}
	},
	css: {
		files: {
			'<%= paths.compiled.css %>/styles.css': [
				'<%= files.css %>',
			],
		},
	},
	js : {
		files: {
			'<%= paths.compiled.js %>/scripts.js': [
				'<%= files.js %>',
			],
		},
	}
};
