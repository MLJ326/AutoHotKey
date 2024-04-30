#Requires AutoHotkey v2.0
; Use F12 to control keyboard
; Uses QWERTY Layout
; Suspended = QWERTY
; Not Suspended = DVOARK
; CheckSuspend: 1 = Suspended
; CheckSuspend: -1 = Not Suspended


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


; Logitech keyboard extra keys remap

sc16C::return
sc132::return
sc16D::return
sc110::Media_Prev
sc122::Media_Play_Pause
sc119::Media_Next
sc120::Volume_Mute
sc12E::Volume_Down
sc130::Volume_Up
sc121::DllCall("LockWorkStation")


; QWERTY to DVORAK mapping (Disabled)

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