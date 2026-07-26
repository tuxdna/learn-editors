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

# Substituting text

```
~     => toggle case of current character
g~w   => change case until word ends from current position
guu   => make line lower case
gUU   => make line lower case
J     => combine current line with the next line
gJ    => combine current and next line with no spaces inserted in between

```

# Searching

```
f<char>   e.g. fa will search for a on the current line
fa;   will search for a next, then repeat the search by semicolon ; on the current line
fa,   will search for a previous, then repeat the search by semicolon , on the current line

t<char>   place cursor before <char> on current line
ta;   place cursor before 'a' forward and then repeat 
ta,   place cursor before 'a' backward and then repeat

T<char>   place cursor after <char> on current line
Ta;   place cursor after 'a' forward and then repeat 
Ta,   place cursor after 'a' backward and then repeat


/<text>   search for <text> forward
/and      search for 'and' forward, press 'n' to searcn forward, and 'N' to search backward

?<text>   search for <text> backward
?and      search for 'and' backward, press 'n' to searcn backward, and 'N' to search forward

*         search for current word forward
#         search for current word forward
n or N    repeat search in forward or bacward direction respectively

:set incsearch
:set hlsearch

```

# Search and Replace

```
:<range>s/<search>/<replace>/<flags>  

<range> could be line numbers separaed by comma
   current line is the default range
   or . for current line
   or $ for last line
   or % for entire file
   or pattern match e.g. /Global/,/Local/  -> here Replace between Global and Local
<flags> could be one of: 
   g means all occurences in the range

:/Global/,/Local/s/net/org/g

  => Search Globa and Local, then substitute net with org globaly in this range

:s#/var/spool#/usr/local#g 

  => Use # insted of / for search separator and then replace /var/spool with /usr/local on current line

:set number    # set state
:set nonumber  # unset state
:set nu!       # toggle state
:set number?   # check state

gUw and gUW => uppercase current word
80i*ESC  => write 80 asterisks
```

# Text objects

```
{operator}{a/i}{object}

Operator is one of: c y d
Object is one of: w " ' < > [ ] { } ( ) ` B 

Eg: 
    daw    => delete around word
    diw    => delete inner word
    caw    => change around word
    ciw    => change inner word

    das    => delete around sentence
    dis    => delete inner sentence
    cas    => change around sentence
    cis    => change inner sentence

    dap    => delete around paragraph
    dip    => delete inner paragraph
    cap    => change around paragraph
    cip    => change inner paragraph

    da[    => delete around block by square brackets
    di[    => delete inner block by square brackets
    ca[    => change around block by square brackets
    ci[    => change inner block by square brackets

    da(    => delete around block by parentheses
    di(    => delete inner block by parentheses
    ca(    => change around block by parentheses
    ci(    => change inner block by parentheses

Similarly

    yi<   => yank inner inside block surrounded by angle brackets 

Text: <h1>This is some headline</h1>

    cit   => Will change the text enclosed inside the tags by h1

```

# Macros

```
qa  => Start recording macro for name a
0 => Normalize the position
some keystrojes =>
j => For next line
q => End macro recording

@a  => Replay macro name a
@@  => Replay recent macro
.   => Repeat recent keystrokes


Example

s/<\/a><a/<\/a>\r<a/g

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


