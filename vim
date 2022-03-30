---
tags [ vim ]
---

# File management

:e              reload file
:q              quit
:q!             quit without saving changes
:w              write file
:w {file}       write new file
:x              write file and exit

# Movement

    k
  h   l         basic motion
    j

w               next start of word
W               next start of whitespace-delimited word
e               next end of word
E               next end of whitespace-delimited word
b               previous start of word
B               previous start of whitespace-delimited word
0               start of line
$               end of line
gg              go to first line in file
G               go to end of file
gk		move down one displayed line
gj		move up one displayed line

# Insertion
#   To exit from insert mode use Esc or Ctrl-C
#   Enter insertion mode and:

a               append after the cursor
A               append at the end of the line
i               insert before the cursor
I               insert at the beginning of the line
o               create a new line under the cursor
O               create a new line above the cursor
R               enter insert mode but replace instead of inserting chars
:r {file}       insert from file

# Editing

u               undo
yy              yank (copy) a line
y{motion}       yank text that {motion} moves over
p               paste after cursor
P               paste before cursor
<Del> or x      delete a character
dd              delete a line
d{motion}       delete text that {motion} moves over
gU<movement iw> Toggle to uppercase 
gu<movement>    Toggle to lowercase

# Search and replace with the `:substitute` (aka `:s`) command

:s/foo/bar/	replace the first match of 'foo' with 'bar' on the current line only
:s/foo/bar/g	replace all matches (`g` flag) of 'foo' with 'bar' on the current line only
:%s/foo/bar/g	replace all matches of 'foo' with 'bar' in the entire file (`:%s`)
:%s/foo/bar/gc	ask to manually confirm (`c` flag) each replacement 

# Preceding a motion or edition with a number repeats it 'n' times
# Examples:
50k         moves 50 lines up
2dw         deletes 2 words
5yy         copies 5 lines
42G         go to line 42

# Multiple windows
:e filename      - edit another file
:split filename  - split window and load another file
ctrl-w up arrow  - move cursor up a window
ctrl-w ctrl-w    - move cursor to another window (cycle)
ctrl-w_          - maximize current window
ctrl-w=          - make all equal size
10 ctrl-w+       - increase window size by 10 lines
:vsplit file     - vertical split
:sview file      - same as split, but readonly
:hide            - close current window
:only            - keep only this window open
:ls              - show current buffers
:.! <command>    - shell out

# Buffers
# move to N, next, previous, first last buffers
:bn              - goes to next buffer
:bp              - goes to prev buffer
:bf              - goes to first buffer
:bl              - goes to last buffer
:b 2             - open buffer #2 in this window
:new             - open a new buffer
:vnew            - open a new vertical buffer
:bd 2            - deletes buffer 2
:wall            - writes al buffers
:ball            - open a window for all buffers
:bunload         - removes buffer from window
:taball          - open a tab for all buffers
:tabm i          - move tab to position i
:tabm +i         - move tab i positions to the right
:tabm -i         - move tab i positions to the left

# Marks and Positions
:marks - list of marks
ma - set current position for mark A
`a - jump to position of mark A
y`a - yank text to position of mark A
`0 - go to the position where Vim was previously exited
`" - go to the position when last editing this file
`. - go to the position of the last change in this file
`` - go to the position before the last jump
:ju[mps] - list of jumps
Ctrl + i - go to newer position in jump list
Ctrl + o - go to older position in jump list
:changes - list of changes
g, - go to newer position in change list
g; - go to older position in change list
Ctrl + ] - jump to the tag under cursor

# Super search
ctrl-p

# Visual Mode 
v - start visual mode, mark lines, then do a command (like y-yank)
V - start linewise visual mode
o - move to other end of marked area
Ctrl + v - start visual block mode
O - move to other corner of block
aw - mark a word
ab - a block with ()
aB - a block with {}
at - a block with <> tags
ib - inner block with ()
iB - inner block with {}
it - inner block with <> tags
Esc - exit visual mode

# Insert Mode
Ctrl + w - delete word before the cursor during insert mode
Ctrl + h - delete the character before the cursor during insert mode
Ctrl + n - insert (auto-complete) next match before the cursor during insert mode
Ctrl + p - insert (auto-complete) previous match before the cursor during insert mode
Ctrl + rx - insert the contents of register x

# Macros
qa - record macro a
q - stop recording macro
@a - run macro a
@@ - rerun last run macro

# Registers
:reg[isters] - show registers content
"xy - yank into register x
"xp - paste contents of register x
"+y - yank into the system clipboard register
"+p - paste from the system clipboard register

## PLUGINS ##
--surround--
cs"' (change surrounding " with ')
ds" (delete surrounding ")
ysiw] (you surround in word ])
yss) (you surround all with braces )
S<p> (In visual mode surround selected text)

--argtextobj--
daa (delete-an-argument)
cia (change-inner-argument)
via (selectin-inner-argument)

--textobj-entire--
ae (targets the entire content of the current buffer)
ie (is similar to ae, but ie does not include leading and trailing empty lines)

