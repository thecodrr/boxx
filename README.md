<div align="center">
<h1>📦 Boxx</h1>
</div>

<p align="center">
Create highly customizable terminal boxes that also look great!
</p>

<p align="center">
<img src="https://raw.githubusercontent.com/thecodrr/boxx/master/Screenshots/example.png"/>
</p>

## Installation:

Install using `vpkg`

```bash
vpkg get https://github.com/thecodrr/boxx
```

Install using `V`'s builtin `vpm`:

```bash
v install thecodrr.boxx
```

Install using `git`:

```bash
cd path/to/your/project
git clone https://github.com/thecodrr/boxx
```

All the awesome **color support** is made possible by [thecodrr.crayon](https://github.com/thecodrr/crayon) so install it:

```
v install thecodrr.crayon
```

Then in the wherever you want to use it:

```v
import boxx
```

And that's it!

## Usage

### boxx.new(`Config`)

Initializes a new `Box` with the specified `Config`

```v
boxx.new({px: 2, py: 1, typ: "single"})
```

### `Config`

`px`: Horizontal Padding

`py`: Vertical Padding

`content_align`: Content Alignment inside the box

`color` :`rgb` or named (see [Crayon](https://github.com/thecodrr/crayon) for possible values & usage)

`typ`: The type of box (see Box Types below)

`title_position`: choose from one of `inside`, `top` or `bottom`

#### Box Types:

**1. `single`**

<p align="center">
<img src="https://raw.githubusercontent.com/thecodrr/boxx/master/Screenshots/square.png"/>
</p>

**2. `single_double`**

<p align="center">
<img src="https://raw.githubusercontent.com/thecodrr/boxx/master/Screenshots/single_double.png"/>
</p>

**3. `double_single`**

<p align="center">
<img src="https://raw.githubusercontent.com/thecodrr/boxx/master/Screenshots/double_single.png"/>
</p>

**4. `bold`**

<p align="center">
<img src="https://raw.githubusercontent.com/thecodrr/boxx/master/Screenshots/bold.png"/>
</p>

**5. `round`**

<p align="center">
<img src="https://raw.githubusercontent.com/thecodrr/boxx/master/Screenshots/round.png"/>
</p>

**6. `classic`**

<p align="center">
<img src="https://raw.githubusercontent.com/thecodrr/boxx/master/Screenshots/classic.png"/>
</p>

**7. `hidden`**

<p align="center">
<img src="https://raw.githubusercontent.com/thecodrr/boxx/master/Screenshots/hidden.png"/>
</p>

**8. `double`**

<p align="center">
<img src="https://raw.githubusercontent.com/thecodrr/boxx/master/Screenshots/double.png"/>
</p>

#### Title Positions:

**1. `inside`**

<p align="center">
<img src="https://raw.githubusercontent.com/thecodrr/boxx/master/Screenshots/square.png"/>
</p>

**2. `top`**

<p align="center">
<img src="https://raw.githubusercontent.com/thecodrr/boxx/master/Screenshots/top.png"/>
</p>

**3. `bottom`**

<p align="center">
<img src="https://raw.githubusercontent.com/thecodrr/boxx/master/Screenshots/bottom.png"/>
</p>

### Boxx `struct`

You can create your own boxes as well if you want using the following values:

```v
struct Boxx {
    top_right string //the top right corner symbol
    top_left string //the top left corner symbol
    vertical string //the symbol used for the vertical bars
    horizontal string  //the symbol used for the horizontal bars
    bottom_right string //the bottom right corner symbol
    bottom_left string //the bottom left corner symbol
}
```

**Example:**

```v
box := &boxx.Boxx {
    top_right: "x"
    top_left: "x"
    bottom_right: "x"
    bottom_left: "x"
    vertical: "+"
    horizontal: "+"
}
```

#### Boxx.print(`string`, `string`)

Print the box according to the specified config.

**Params:**

`text`: The text that is to appear inside the box

`title`: The title at the top of the box. It is always center aligned. (optional)

### Find this library useful? :heart:

Support it by joining **[stargazers](https://github.com/thecodrr/boxx/stargazers)** for this repository. :star:or [buy me a cup of coffee](https://ko-fi.com/thecodrr)
And **[follow](https://github.com/thecodrr)** me for my next creations! 🤩

### Much thanks to the developers of these repos:

1. [Atrox/box](https://github.com/Atrox/box)
2. [sindresorhus/cli-boxes](https://github.com/sindresorhus/cli-boxes)

### License

```
MIT License

Copyright (c) 2019 Abdullah Atta

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

```
