# Vim keybindings

## Navigations

Motions

```
h
j
k
l
ctrl+f
ctrl+b
w, W => word forward
b, B => word bacward
gg
G
ctrl+g
g ctrl+g

:$
:<linenum>
set ruler
set noruler
set ruler!`

ctrl+w w


Ctrl+]  => Jumps to the definition of current keyword
Ctrl+o  => Jumps back to previous location
```

## Operations

Deleting
```
x
X
operation{motion}

dh
dl
dj
dk
d0
d$

3dd
5dw
```

# Terminal inside vim

```
:terminal
```

```
Ctrl+\ n ( ctrl + followed by n )
```

# Registers ( for delte, yank etc )

```
d, c, s, x and y operations
"" default register
"0 through "9 are 10 numbered registers
"a through "z are 26 named registers


"0 holds last yanked text
"1 holds last deleted text
Numbered registers shift with each d or c

Type :reg to list all registers

Following will list valies from registers 0, 1, 9 and z

:reg 1 z 9 0

Undo is u
Redo is Ctrl+R

```

# Other features
Browse Directory:

```
:E /path/of/directory
```

Create splits:

```
Horizontal split
:split
```

```
Vertical split
:vsplit 
```

Navigate Splits:

```
Ctrl+w -> (h,j,k,l or arrow keys) 

Close all but current buffer
Ctrl+w -> o
```

Exit from Terminal mode:

```
Ctrl+/ -> Ctrl+n
```




## Other Editors and IDEs

Other editors of interest:

 * Zed on Linux - https://www.youtube.com/watch?v=lLNA58Pkfqk , https://www.youtube.com/watch?v=5XG1JKoAnZU
 * Helix IDE - https://www.youtube.com/watch?v=HcuDmSb-JBU
 * LazyVim - 
 * Emacs with LLM -   Integrate Emacs with ChatGPT or any LLM - an intro to the gptel package  https://www.youtube.com/watch?v=V4M_9S_-2V4
 * Neovim Avante -  Avante: Add AI Chat, Code Edits, and MCP Support to Neovim  https://www.youtube.com/watch?v=pVlxaHYJIYM


