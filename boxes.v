module boxx

// taken from cli-boxes repo

fn get_boxes() map[string]Boxx {
	return {
		"single": Boxx{
			top_right: "┐",
			top_left: "┌",
			bottom_right: "┘",
			bottom_left: "└",
			horizontal: "─",
			vertical: "│"
		},
		"double": Boxx{
			top_right: "╗",
			top_left: "╔",
			bottom_right: "╝",
			bottom_left: "╚",
			horizontal: "═",
			vertical: "║"
		},
		"round": Boxx{
			top_right: "╮",
			top_left: "╭",
			bottom_right: "╯",
			bottom_left: "╰",
			horizontal: "─",
			vertical: "│"
		},
		"bold": Boxx{
			top_right: "┓",
			top_left: "┏",
			bottom_right: "┛",
			bottom_left: "┗",
			horizontal: "━",
			vertical: "┃"
		},
		"single_double": Boxx{
			top_right: "╖",
			top_left: "╓",
			bottom_right: "╜",
			bottom_left: "╙",
			horizontal: "─",
			vertical: "║"
		},
		"double_single": Boxx{
			top_right: "╕",
			top_left: "╒",
			bottom_right: "╛",
			bottom_left: "╘",
			horizontal: "═",
			vertical: "│"
		},
		"classic": Boxx{
			top_right: "+",
			top_left: "+",
			bottom_right: "+",
			bottom_left: "+",
			horizontal: "-",
			vertical: "|"
		},
		"hidden": Boxx{
			top_right: "+",
			top_left: "+",
			bottom_right: "+",
			bottom_left: "+",
			horizontal: " ",
			vertical: " "
		}
	}
}