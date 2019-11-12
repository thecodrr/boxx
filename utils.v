module boxx

fn repeat(c string, n int) string {
	if n <= 0{
		return ''
	}
	mut out := []string
	for i := 0; i < n; i++{
		out << c
	}
	return out.join('')
}

fn max(arr []string) int {
	mut last_len := 0
	for _, key in arr {
		len := key.len
		if len > last_len {
			last_len = len
		}
	}
	return last_len
}