module main

// taken from cli-boxes repo

fn get_boxes() map[string]Box {
	return {
		"single": Box{
			top_right: "┐",
			top_left: "┌",
			bottom_right: "┘",
			bottom_left: "└",
			horizontal: "─",
			vertical: "│"
		},
		"double": Box{
			top_right: "╗",
			top_left: "╔",
			bottom_right: "╝",
			bottom_left: "╚",
			horizontal: "═",
			vertical: "║"
		},
		"round": Box{
			top_right: "╮",
			top_left: "╭",
			bottom_right: "╯",
			bottom_left: "╰",
			horizontal: "─",
			vertical: "│"
		},
		"bold": Box{
			top_right: "┓",
			top_left: "┏",
			bottom_right: "┛",
			bottom_left: "┗",
			horizontal: "━",
			vertical: "┃"
		},
		"single_double": Box{
			top_right: "╖",
			top_left: "╓",
			bottom_right: "╜",
			bottom_left: "╙",
			horizontal: "─",
			vertical: "║"
		},
		"double_single": Box{
			top_right: "╕",
			top_left: "╒",
			bottom_right: "╛",
			bottom_left: "╘",
			horizontal: "═",
			vertical: "│"
		},
		"classic": Box{
			top_right: "+",
			top_left: "+",
			bottom_right: "+",
			bottom_left: "+",
			horizontal: "-",
			vertical: "|"
		},
		"hidden": Box{
			top_right: "+",
			top_left: "+",
			bottom_right: "+",
			bottom_left: "+",
			horizontal: " ",
			vertical: " "
		}
	}
}