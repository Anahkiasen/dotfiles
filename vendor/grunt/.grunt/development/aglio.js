module.exports = {
	dist: {
		options: {
			theme    : "flatly-multi",
			seperator: "\n"
		},

		files    : {
			"<%= paths.docs.api %>/index.html": ["<%= paths.docs.api %>/index.apib"]
		},
	}
};
