#Requires AutoHotkey v2.0
; Use F12 to control keyboard layout
; Uses QWERTY Layout
; CheckSuspend: 1 = Suspended = QWERTY layout
; CheckSuspend: -1 = Not Suspended = DVORAK layout
; Initializes as DVORAK

#SuspendExempt
	CheckSuspend := -1
	F12::
	{
		global CheckSuspend := Checksuspend*-1
		Suspend
	}
	~Ctrl::
	{
		if (CheckSuspend = -1) {
			Suspend 1
			Send "{Ctrl down}"
			Keywait "Ctrl"
			Send "{Ctrl up}"
			Suspend 0
		}
	}
	~Alt::
	{
		if (CheckSuspend = -1) {
				Suspend 1
				Send "{Alt down}"
				Keywait "Alt"
				Send "{Alt up}"
				Suspend 0
		}
	}
	~LWin::
	{
		if (CheckSuspend = -1) {
				Suspend 1
				Send "{LWin down}"
				Keywait "LWin"
				Send "{LWin up}"
				Suspend 0
		}
	}	
#SuspendExempt False

; QWERTY to DVORAK mapping

-::[
=::]
q::'
w::,
e::.
r::p
t::y
y::f
u::g
i::c
o::r
p::l
[::/
]::=
;\::\

;a::a
s::o
d::e
f::u
g::i
h::d
j::h
k::t
l::n
`;::s
'::-

z::`;
x::q
c::j
v::k
b::x
n::b
;m::m
,::w
.::v
/::z
