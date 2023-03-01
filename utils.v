module boxx

import thecodrr.crayon
import strings

fn repeat(c string, n int) string {
	if n <= 0{
		return ''
	}
	mut builder := strings.new_builder(n)
	for i := 0; i < n; i++{
		builder.write_string(c)
	}
	str := builder.str()
	//builder.free()
	return str
}

fn repeat_with_string(c string, n int, str string) string {
	count := n - str.len - 2
	bar := repeat(c, count)
	str1 := ' $str $bar'
	return str1
}

fn max(arr []string) int {
	mut last_len := 0
	for _, key in arr {
		len := crayon.strip_text(key).len
		if len > last_len {
			last_len = len
		}
	}
	return last_len
}
