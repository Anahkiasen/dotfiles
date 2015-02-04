module.exports = {
	dist: {
		files    : {
			"<%= paths.docs.api %>/index.html": ["<%= paths.docs.api %>/blueprint/index.apib"]
		},
		theme    : "flatly-multi",
		seperator: "\n"
	}
};
