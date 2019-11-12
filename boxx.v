module boxx

import thecodrr.crayon

const (
	nl = '\n'
	//sep = seperator; sp = spacing; ln = line; os = odd_space; s = space
	center_align = '{sep}{sp}{ln}{os}{sp}{sep}'
	left_align = '{sep}{px}{ln}{os}{sp}{s}{sep}'
	right_align = '{sep}{sp}{os}{s}{ln}{px}{sep}'
)

pub struct Boxx {
	top_right string
	top_left string
	vertical string
	horizontal string
	bottom_right string
	bottom_left string
	
	mut:
	config Config
}

pub enum Align {
	left,
	right,
	center
}

pub struct Config {
	pub mut:
	py int
	px int
	content_align Align
	color string //name or rbg
	typ string
}

// Create a new box instance with the given config
pub fn new(config Config) Boxx {
	boxes := get_boxes()
	mut box := boxes[config.typ]
	box.config = config
	return &box
}

// Print the box with the given text & title (optional)
pub fn (b &Boxx) print(text, title string) {
	mut lines := []string
	if title != '' {
		lines << [title, '']
	}
	lines << text.split(nl)
	println(b.str(title, lines))
}

/* PRIVATE METHODS */

fn (b &Boxx) str(title string, lines []string) string {
	px := repeat(' ', b.config.px)

	longest_line := max(lines)

	// get half of the total padding (so just one side)
	padding_count := (b.config.px + b.config.px) / 2

	// n is the number of chars that will create the bottom and top bars
	n := longest_line + padding_count + (padding_count * 2)

	// create top and bottom bars 
	bar := repeat(b.horizontal, n - 2)
	mut top_bar := '${b.top_left}${bar}${b.top_right}'
	mut bottom_bar := '${b.bottom_left}${bar}${b.bottom_right}'

	// apply styles if available
	if b.config.color != '' {
		top_bar = crayon.color('{${b.config.color} $top_bar}')
		bottom_bar = crayon.color('{${b.config.color} $bottom_bar}')
	}

	if top_bar.len != bottom_bar.len {
		panic('Cannot create a box with different size top and bottom bars.')
	}

	// create lines to print
	mut texts := []string

	texts << b.add_vert_padding(n)

	for i, line in lines {
		length := line.len
		
		// use later
		mut space := ''
		mut odd_space := ''

		// if current text is shorter than the longest one
		// center the text, so it looks better
		if length < longest_line {
			// difference between longest and current one
			diff := longest_line - length

			// the spaces to add on each side
			to_add := diff / 2
			space = repeat(' ', to_add)

			// if the difference between the longest and current one
			// is odd, we have to add one additional space before the last vertical separator
			if diff % 2 != 0 {
				odd_space = ' '
			}
		}
		spacing := space + px
		mut format := if b.config.content_align == .center {center_align} else if b.config.content_align == .right {right_align} else {left_align}
		
		// if it's title center align it
		if i < 1 && title != '' {format = center_align}
		
		// check & apply styles
		sep := if b.config.color != '' {crayon.color('{${b.config.color} ${b.vertical}}')} else {b.vertical}

		texts << format.replace('{sep}', sep)
					   .replace('{sp}', spacing)
					   .replace('{ln}', line)
					   .replace('{os}', odd_space)
					   .replace('{s}', space)
					   .replace('{px}', px)
	}
	texts << b.add_vert_padding(n)
	
	return '$top_bar$nl' + texts.join(nl) + '$nl$bottom_bar$nl'
}

fn (b &Boxx) add_vert_padding(length int)[]string {
	padding := repeat(' ', length - 2)

	//check and apply styles
	sep := if b.config.color != '' {crayon.color('{${b.config.color} ${b.vertical}}')} else {b.vertical}
	
	mut texts := []string
	mut i := 0
	for {
		i++
		if i > b.config.py {break}
		texts << sep + padding + sep	
	}
	return texts
}