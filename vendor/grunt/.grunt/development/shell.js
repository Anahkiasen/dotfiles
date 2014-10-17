module.exports = {
	options: {
		stdin: false,
	},

	twiglint: {
		command: 'php artisan twig:lint',
	},

	assets: {
		command: 'php artisan asset:replace',
	},
};
