#Requires AutoHotkey v2.0
; Use F12 to control keyboard
; Uses DVOARK Layout
; Starts Suspended = DVOARK layout
; Not Suspended = QWERTY layout
; CheckSuspend: 1 = Suspended
; CheckSuspend: -1 = Not Suspended

#SuspendExempt
	CheckSuspend := 1
	F12::
	{
		global CheckSuspend := Checksuspend*-1
		Suspend
	}
	~Ctrl::
	{
		if (CheckSuspend = 1) {
			Suspend 0
			Send "{Ctrl down}"
			Keywait "Ctrl"
			Send "{Ctrl up}"
			Suspend 1
		}
	}
	~Alt::
	{
		if (CheckSuspend = 1) {
				Suspend 0
				Send "{Alt down}"
				Keywait "Alt"
				Send "{Alt up}"
				Suspend 1
		}
	}
	~LWin::
	{
		if (CheckSuspend = 1) {
				Suspend 0
				Send "{LWin down}"
				Keywait "LWin"
				Send "{LWin up}"
				Suspend 1
		}
	}
#SuspendExempt False

; DVORAK to QWERTY mapping (Active)

	[::-
	]::=

	'::q
	,::w
	.::e
	p::r
	y::t
	f::y
	g::u
	c::i
	r::o
	l::p
	/::[
	=::]
	;\::\

	;a::a
	o::s
	e::d
	u::f
	i::g
	d::h
	h::j
	t::k
	n::l
	s::;
	-::'

	`;::z
	q::x
	j::c
	k::v
	x::b
	b::n
	;m::m
	w::,
	v::.
	z::/


Suspend
