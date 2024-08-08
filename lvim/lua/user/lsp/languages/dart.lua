lvim.builtin.telescope.on_config_done = function(telescope)
	telescope.load_extension("flutter")
end
lvim.builtin.which_key.mappings["F"] = {
	name = "+Flutter",
	c = { "<cmd>Telescope flutter commands<cr>", "Open Flutter Commans" },
	d = { "<cmd>FlutterDevices<cr>", "Flutter Devices" },
	e = { "<cmd>FlutterEmulators<cr>", "Flutter Emulators" },
	r = { "<cmd>FlutterReload<cr>", "Hot Reload App" },
	R = { "<cmd>FlutterRestart<cr>", "Hot Restart app" },
	q = { "<cmd>FlutterQuit<cr>", "Quit running application" },
	v = { "<cmd>Telescope flutter fvm<cr>", "Flutter version" },
}
