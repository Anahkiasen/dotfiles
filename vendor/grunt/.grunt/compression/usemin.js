module.exports = {
	options: {
		blockReplacements: {
			css: function (block) {
				return '{{ HTML.style("' + block.dest + '")|raw }}';
			},
			js : function (block) {
				return '{{ HTML.script("' + block.dest + '")|raw }}';
			},
		},
	},

	html: '<%= views %>/**/*.twig',
};
