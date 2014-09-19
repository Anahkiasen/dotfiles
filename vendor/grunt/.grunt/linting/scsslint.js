module.exports = {
	options: {
		config : '<%= grunt %>/.scss-lint.yml',
		compact: true,
	},

	dist: {
		src: [
			'<%= files.sass %>',
		],
	}
};
