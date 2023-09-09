\version "2.18.0"

\header {
     composer = "Sergei Bortkiewicz"
     title =    "Russische Weisen und Tänze"
     subtitle = "- III -"
	 opus = "Op.31, No.3"
}

#(set-global-staff-size 18)
#(ly:set-option 'point-and-click #f)

trebleOne = \context Staff \relative c'' { 
  \context Voice = "i"
  \clef treble
  \key b \minor
  \time 3/4

  fis4-.( <fis gis>-. <fis ais>-. |
  <fis b>-. <fis b cis>-. <fis b d>-.) |
  <g ais cis>-.( <g ais d>-. <g ais cis>-. |
  <d fis cis'>-. <d fis b>-. <d fis>-.) |
  <g ais cis>-.\( \acciaccatura e'8 <g, ais d>4-. <g ais cis>-. |
  <d fis cis'>-. <d fis b>-. <d fis>-.\) |
  <e b'>-.( <e a>-. <e g>-.) |
  <d g>( <d fis>) <d fis> |
  \voiceOne
  e'2( d8 cis) | e4^-( d r8 d |
  d4^-( cis r8 d( | cis4^- b) r8 b( |
  \oneVoice
  <fis ais fis'>2 <e fis ais>4 | <d fis b>) r r |
  
  a'4-.( <gis b>-. <g cis>-.) |
  <fis d'>( <fis a>) <fis a> |
  <g a e'>-.( <g a fis'>-. <g a e'>-.) |
  <fis a e'>-.( <fis a d>-. <fis a>-.) |
  <g bes e>-.( <g bes fis'>-. <g bes e>-.) |
  <fis a e'>-.( <fis a d>-. <fis a>-.) |
  fis-.( <fis gis>-. <fis ais>-. |
  <d fis b>-. <fis b cis>-. <fis b d>-.) |
  <g ais cis>-.( <g ais d>-. <g ais cis>-.) |
  <d fis cis'>-.( <d fis b>-. <d fis>-.) |
  <g ais cis>-.\( \acciaccatura e'8 <g, ais d>4-. <g ais cis>-.\) |
  <d fis cis'>( <d fis b>) r8 d' |
  \voiceOne
  d4^-( cis) r8 d( | cis4^- b) r8 b( |
  \oneVoice
  <fis ais fis'>2 <ais, e' fis ais>4 | <b d fis b>2.) |
  
  \bar "||"
  \key g \major
  
  <b b'>4( <c c'> <b b'>) |
  <b b'>( <a a'> <e e'> |
  <es es'> <d d'> <b' b'> |
  <a a'> <g g'> <b b'>) ~ |
  <b b'>\( \acciaccatura d'8 <c, c'>4 <b b'>\) |
  <b b'>( <a a'> <e e'> |
  <es es'> <d d'> <b' b'> |
  <a a'> <g g'> <b b'>) |
  <b b'>( <c c'> <d d'>) |
  <d d'>( <c c'>) <c c'>( |
  \voiceOne
  <cis cis'> <d d'> <e e'>) |
  <e e'>( <d d'>) <d d'>( |
  <fis fis'>4.-> <e e'>8[ <d d'> <c c'>]) |
  <c c'>4( <b b'>8) r r <b b'>( |
  <e e'>4-- <a, a'>8) r r <a a'>( |
  <d d'>4-- <g, g'>8) r r <d' d'>( |
  <fis fis'>4. <e e'>8[ <d d'> <c c'>]) |
  <c c'>4( <b b'>8) r r <b b'>( |
  <e e'>4 <a, a'> <d d'> |
  <g g,>2.)
  \oneVoice
  
  \bar "||"
  \key b \minor

  fis4-.( <fis gis>-. <fis ais>-. |
  <fis b>-. <fis b cis>-. <fis b d>-.) |
  <g ais cis>-.( <g ais d>-. <g ais cis>-. |
  <d fis cis'>-. <d fis b>-. <d fis>-.) |
  <g ais cis>-.\( \acciaccatura e'8 <g, ais d>4-. <g ais cis>-. |
  <d fis cis'>-. <d fis b>-. <d fis>-.\) |
  <e b'>-.( <e a>-. <e g>-.) |
  <d g>( <d fis>) <d fis> |
  \voiceOne
  e'2( d8 cis) | e4^-( d r8 d |
  d4^-( cis r8 d( | cis4^- b) r8 b( |
  \oneVoice
  <fis ais fis'>2 <e fis ais>4 | <d fis b>) r8 <d d'>-.( <d d'>-. <d d'>-.) |
  
% [Un poco meno mosso e rubato]
  \key g \major
  
\repeat volta 2 {
  <d d'>4.--( <c c'>8) <c c'> <c c'> |
  <c c'>4.--( <b b'>8) <b b'> <b b'> |
  <b b'>4.\( <a a'>8 <e e'> <fis fis'> |
  <g b g'>4.\) <g g'>8\( <b b'> <d d'> |
  <g g'>4. <fis fis'>8 <e e'> <dis dis'> |
  <fis fis'>4. <e e'>8 <a, a'> <c c'> |
  <e e'>4. <d d'>8 <cis cis'> <c c'> |
  <b b'>4.\) <g g'>8\( <b b'> <d d'> |
  <g g'>4. <fis fis'>8 <e e'> <dis dis'> |
  <fis fis'>4. <e e'>8 <a, a'> <c c'> |
  <e e'>4. <d d'>8 <c c'> <a a'> |
  <g g'>4.\) <b b'>8-.( <b b'>-. <b b'>-.) |
  <b b'>4.--( <a a'>8) <a a'> <a a'> |
  <a a'>4.--( <g g'>8) <g g'> <g g'> |
  <g g'>4.--( <f f'>8) <f f'> <f f'> |
  <f f'>4.--( <e e'>8) <e e'> <e e'> |
  <e e'>4.--( <d d'>8) <d d'>( <e e'>) |
  <d d'>4.--( <c c'>8) <c c'> <c c'> |
  \slurUp
  <c' g e c>4. c8( g a |
  <b fis dis b>4.) c8( g a |
  <b fis dis b>4.) \slurNeutral <c c'>8( <g c e g> <a a'> |
  <b dis fis b>4.) <c c'>8( <g c e g> <a a'> |
}

\alternative {

	{
  <b b'>4.--) <b b'>8 <b b'> <b b'> |
  <b b'>4.--  <b b'>8 <b b'> <b b'> |
  <b b'>4. <b b'>8 <b b'> <b b'> |
  <b b'>4. <d d'>8-.( <d d'>-. <d d'>-.) |
  	}
	{
  <b dis fis b>2.) |
  <b dis fis b> |
  <b e gis b> |
  <d g! b> |
  <b dis fis a b> |
  	}
	
}

  \bar "||"

  <b b'>4( <c c'> <b b'>) |
  <b b'>( <a a'> <e e'> |
  <es es'> <d d'> <b' b'> |
  <a a'> <g g'> <b b'>) ~ |
  <b b'>\( \acciaccatura d'8 <c, c'>4 <b b'>\) |
  <b b'>( <a a'> <e e'> |
  <es es'> <d d'> <b' b'> |
  <a a'> <g g'> <b b'>) |
  <b b'>( <c c'> <d d'>) |
  <d d'>( <c c'>) <c c'>( |
  \voiceOne
  <cis cis'> <d d'> <e e'>) |
  <e e'>( <d d'>) <d d'>( |
  <fis fis'>4.-> <e e'>8[ <d d'> <c c'>]) |
  <c c'>4( <b b'>8) r r <b b'>( |
  <e e'>4-- <a, a'>8) r r <a a'>( |
  <d d'>4-- <g, g'>8) r r <d' d'>( |
  <fis fis'>4. <e e'>8[ <d d'> <c c'>]) |
  <c c'>4( <b b'>8) r r <b b'>( |
  <e e'>4 <a, a'> <d d'> |
  <g g,>2.)
  \oneVoice
  
  \bar "||"
  \key b \minor

  fis4-.( <fis gis>-. <fis ais>-. |
  <fis b>-. <fis b cis>-. <fis b d>-.) |
  <g ais cis>-.( <g ais d>-. <g ais cis>-. |
  <d fis cis'>-. <d fis b>-. <d fis>-.) |
  <g ais cis>-.\( \acciaccatura e'8 <g, ais d>4-. <g ais cis>-. |
  <d fis cis'>-. <d fis b>-. <d fis>-.\) |
  <e b'>-.( <e a>-. <e g>-.) |
  <d g>( <d fis>) <d fis> |
  \voiceOne
  e'2( d8 cis) | e4^-( d r8 d |
  d4^-( cis r8 d( | cis4^- b) r8 b( |
  \oneVoice
  <fis ais fis'>2 <e fis ais>4 | <d fis b>) r r |
  
  a'4-.( <gis b>-. <g cis>-.) |
  <fis d'>( <fis a>) <fis a> |
  <g a e'>-.( <g a fis'>-. <g a e'>-.) |
  <fis a e'>-.( <fis a d>-. <fis a>-.) |
  <g bes e>-.( <g bes fis'>-. <g bes e>-.) |
  <fis a e'>-.( <fis a d>-. <fis a>-.) |
  fis-.( <fis gis>-. <fis ais>-. |
  <d fis b>-. <fis b cis>-. <fis b d>-.) |
  <g ais cis>-.( <g ais d>-. <g ais cis>-.) |
  <d fis cis'>-.( <d fis b>-. <d fis>-.) |
  <g ais cis>-.\( \acciaccatura e'8 <g, ais d>4-. <g ais cis>-.\) |
  <d fis cis'>( <d fis b>) r8 d' |
  \voiceOne
  d4^-( cis) r8 d( | cis4^- b) r8 b( |
  \oneVoice
  <fis ais fis'>2 <ais, e' fis ais>4 |
  
  \bar "||"
% [Meno mosso]
  
  <b d fis b>4) r8 fis-.( fis-. fis-.) |
  fis4.--( e8) e e |
  e4.--( d8) d d |
  d4.( cis8 e d |
  b4.) \voiceOne r8 fis'4( |
  gis2 ais4 |
  b2 fis'4 |
  g2 ais4 |
  b2) \oneVoice <b e b'>4--( |
  <b d fis>2) <b e b'>4--( |
  <b d fis>2) <b, e b'>4--( |
  <b d fis>2 <b e b'>4) |
  <d fis>-.\( <d fis gis>-. <d fis ais>-. |
  <d fis b>-. \ottava #1 <fis b d fis>-. <gis b d gis>-. |
  <ais d fis ais>-. <b d fis b>-. <fis b d fis>-. |
  <gis b d gis>-. <ais d fis ais>-. <b d fis b>-. |
  <fis b d fis>-. <gis b d gis>-. <ais d fis ais>-. |
  <b d fis b>-.\) \ottava #0 r r |
  <d, fis b d>-.( r r |
  <d fis b>-.) r r\fermata
  
  \bar "|."
}

trebleTwo = \context Staff \relative c'' {
  \context Voice = "iii"

  s2.*8 |
  \voiceTwo
  <fis ais>2 <fis ais>4 | <fis b>2 s4 |
  <e g>2 s4 | <d fis>2 s4 |
  s2.*2 |
  s2.*12 |
  <e g>2 s4 | <d fis>2 s4 |
  s2.*2 |
  %\key g \major
  s2.*5 |
  \voiceThree
  e2. | s2.*2 |
  f2. | e2. |
  \voiceFour
  g2. | fis2. |
  s2.*8
  %\key b \minor
  s2.*8 |
  \voiceTwo
  <fis ais>2 <fis ais>4 | <fis b>2 s4 |
  <e g>2 s4 | <d fis>2 s4 |
  s2.*2 |
%[Un poco meno mosso e rubato]
\repeat volta 2 {
  \voiceThree
  fis2. | <d g> | <c e>2 c4 | s2.*9 |
  dis2. | <b e> | b | <g c> |
  \voiceTwo
  gis | <e a> |
  s2 <c e>4 | s2 <c e>4 | s2.*2 |
}

\alternative {
	{
  \voiceThree
  <dis' fis>2. | <d g> | <dis fis> | <d g> |
    }
	{ s2.*5 }
}

% [Tempo I]
  s2.*5 |
  \voiceThree
  e2. | s2.*2 |
  f2. | e2. |
  \voiceFour
  g2. | fis2. |
  s2.*8
  %\key b \minor
  s2.*8 |
  \voiceTwo
  <fis ais>2 <fis ais>4 | <fis b>2 s4 |
  <e g>2 s4 | <d fis>2 s4 |
  s2.*2 |
  s2.*12 |
  <e g>2 s4 | <d fis>2 s4 |
  s2. |

% [Meno mosso]
  s2.*4 |
  s4. fis,8-.( fis-. fis-.) |
  fis4.--( e8) e e |
  e4.--( d8) d' d |
  d4.( cis8 e d |
  b2) s4 |
  s2.*11

}

trebleThree = \context Staff \relative c'{
	\override Score.VerticalAxisGroup.remove-first = ##t
	
	\context Voice = "vv"
	\clef violin
	\key b \minor
	\time 3/4

	s2.*156 |
	r2 <d fis b>4-.\( |
	<d fis b>-. <d fis b d>-. <d fis b d>-. |
	<d fis b d>-. <d fis b d>-. <d fis b d>-. |
	<d fis b d>-. <d fis b d>-. <d fis b d>-. |
	<d fis b d>-. <d fis b d>-. <d fis b d>-. |
	<d fis b d>-.\) r4 r4 |
	R1*3/4 |
	R1*3/4 |
}

dynamics = \context Staff \relative c{
}

bassOne = \context Staff \relative c{ 
  \context Voice = "ii"
  \clef bass
  \key b \minor
  \time 3/4

  <b b,>4 <fis' b d>-.( <fis b d>-.) |
  <b, b,>4 <fis' b d>-.( <fis b d>-.) |
  <b, b,>4 <g' ais e'>-.( <g ais e'>-.) |
  <b, b,>4 <fis' b d>-.( <fis b d>-.) |
  <b, b,>4 <g' ais e'>-.( <g ais e'>-.) |
  <b, b,>4 <fis' b d>-.( <fis b d>-.) |
  <cis cis,>4 <e a>-.( <e a>-.) |
  <d d,>4 <fis a>-.( <fis a>-.) |
  <cis cis,>4 <fis ais e'>-.( <fis ais e'>-.) |
  <b, b,>4( <fis' b d>) r |
  e,4( <e' g cis>) r |
  fis,4( <d' fis b>) r |
  <fis, fis,>4 <fis' ais e'>-.( <fis ais e'>-.) |
  <b, b,>4 <fis' b d>-.( <fis b d>-.) |
  
  a,4 <g' a cis>-.( <g a cis>-.) |
  <d d,> <fis a d>-.( <fis a d>-.) |
  <d d,> <g a cis>-.( <g a cis>-.) |
  <d d,> <fis a d>-.( <fis a d>-.) |
  <d d,> <g bes cis>-.( <g bes cis>-.) |
  <d d,> <fis a d>-.( <fis a d>-.) |
  <cis cis,> <fis ais e'>-.( <fis ais e'>-.) |
  <b, b,> <fis' b d>-.( <fis b d>-.) |
  <b, b,> <g' ais e'>-.( <g ais e'>-.) |
  <b, b,> <fis' b d>-.( <fis b d>-.) |
  <b, b,> <g' ais e'>-.( <g ais e'>-.) |
  <b, b,>( <fis' b d>) r |
  <e e,>( <g b e>) r |
  <fis fis,>( <b d>) r |
  <fis ais e'>2 <fis ais e'>4 |   %  alt.:  <fis ais e'>2 <fis fis,>4
  <b fis b,>2. |
  
  \key g \major
  \voiceOne
  
  r8 b( d g d b) | r a( c e c a) |
  r a( c fis, a c) | r b( d g, b d) |
  r b( d g d b) | r a( c e c a) |
  r a( c fis, a c) | r b( d g, b d) |
  r b( d f d b) | r a( c e c a) |
  \change Staff="treble" \voiceTwo
  r cis( e g e cis) | r b( d fis d b) |
  r c( e a e c) | r b( d g d b) |
  r c( d fis d c) | r b( d g d b) |
  r c( e a e c) | r b( d g d b) |
  r c( d fis d c) | r b( d g d b) |
  \change Staff="bass" \oneVoice
  
  \key b \minor
  
  <fis fis,>4 <ais e'>-.( <ais e'>-.) |
  <b, b,>4 <fis' b d>-.( <fis b d>-.) |
  <b, b,>4 <g' ais e'>-.( <g ais e'>-.) |
  <b, b,>4 <fis' b d>-.( <fis b d>-.) |
  <b, b,>4 <g' ais e'>-.( <g ais e'>-.) |
  <b, b,>4 <fis' b d>-.( <fis b d>-.) |
  <cis cis,>4 <e a>-.( <e a>-.) |
  <d d,>4 <fis a>-.( <fis a>-.) |
  <cis cis,>4 <fis ais e'>-.( <fis ais e'>-.) |
  <b, b,>4( <fis' b d>) r |
  e,4( <e' g cis>) r |
  fis,4( <d' fis b>) r |
  <fis, fis,>4 <fis' ais e'>-.( <fis ais e'>-.) |
  <b, b,>4 <fis' b d>-.( <fis b d>-.) |
  
  \key g \major
% [Un poco meno mosso e rubato]
  
\repeat volta 2 {
  \voiceOne
  r4 <c' d fis> <c d fis> |
  r4 <b d g> <b d g> |
  r4 <a c e>-. <a c d d,>-. |
  r4 <g b d> <g b d> |
  r4 <g d' g> <g d' g> |
  r4 <c e a>( <a c e>) |
  r4 <c d fis> <c d fis> |
  \oneVoice
  <g g,> <b d g>( <b d>) |
  \voiceOne
  r4 <g d' g> <g d' g> |
  r4 <c e a>( <a c e>) |
  r4 <c d fis> <c d fis> |
  \oneVoice
  <d, g,> <b' d>( <b d g>) |
  \voiceOne
  r4 <b dis a'>( <b dis>) |
  r4 <b e> <b e> |
  r4 <b f'>( <b d>) |
  r4 <g c> <g c> |
  r4 <gis d'>( <e gis>) |
  r4 <e a> <e a> |
  r4 <e g> <e g> |
  <fis, b>2 <g c e g>4( |
  <fis b>2) <g c e g>4( |
  <fis b>2) <g c e g>4( |
}

\alternative {
	{
  <fis b dis fis>2.) |
  <g b d! g> |
  <fis b dis fis> |
  <g b d! g> |
  	}
	
	{
  << { \stemDown b2*1/2) } { r4 } >> \stemNeutral
  r8 b' b b |
  cis4.--( b8) b b |
  cis4.--( b8) b b |
  d4.--( b8) b b |
  dis4.--( b8) b b |
  	}
}

% [Tempo I]
  
  r8 b( d g d b) | r a( c e c a) |
  r a( c fis, a c) | r b( d g, b d) |
  r b( d g d b) | r a( c e c a) |
  r a( c fis, a c) | r b( d g, b d) |
  r b( d f d b) | r a( c e c a) |
  \change Staff="treble" \voiceTwo
  r cis( e g e cis) | r b( d fis d b) |
  r c( e a e c) | r b( d g d b) |
  r c( d fis d c) | r b( d g d b) |
  r c( e a e c) | r b( d g d b) |
  r c( d fis d c) | r b( d g d b) |
  \change Staff="bass" \oneVoice
  
  \key b \minor

  <fis fis,>4 <ais e'>-.( <ais e'>-.) |
  <b, b,>4 <fis' b d>-.( <fis b d>-.) |
  <b, b,>4 <g' ais e'>-.( <g ais e'>-.) |
  <b, b,>4 <fis' b d>-.( <fis b d>-.) |
  <b, b,>4 <g' ais e'>-.( <g ais e'>-.) |
  <b, b,>4 <fis' b d>-.( <fis b d>-.) |
  <cis cis,>4 <e a>-.( <e a>-.) |
  <d d,>4 <fis a>-.( <fis a>-.) |
  <cis cis,>4 <fis ais e'>-.( <fis ais e'>-.) |
  <b, b,>4( <fis' b d>) r |
  e,4( <e' g cis>) r |
  fis,4( <d' fis b>) r |
  <fis, fis,>4 <fis' ais e'>-.( <fis ais e'>-.) |
  <b, b,>4 <fis' b d>-.( <fis b d>-.) |
  
  a,4 <g' a cis>-.( <g a cis>-.) |
  <d d,> <fis a d>-.( <fis a d>-.) |
  <d d,> <g a cis>-.( <g a cis>-.) |
  <d d,> <fis a d>-.( <fis a d>-.) |
  <d d,> <g bes cis>-.( <g bes cis>-.) |
  <d d,> <fis a d>-.( <fis a d>-.) |
  <cis cis,> <fis ais e'>-.( <fis ais e'>-.) |
  <b, b,> <fis' b d>-.( <fis b d>-.) |
  <b, b,> <g' ais e'>-.( <g ais e'>-.) |
  <b, b,> <fis' b d>-.( <fis b d>-.) |
  <b, b,> <g' ais e'>-.( <g ais e'>-.) |
  <b, b,>( <fis' b d>) r |
  <e e,>( <g b e>) r |
  <fis fis,>( <b d>) r |
  <fis ais e'>2 <fis ais e'>4( |   %  alt.:  <fis ais e'>2 <fis fis,>4

% [Meno mosso]

  \voiceOne
  <b, fis' b>2.) |
  <cis g' b> |
  <d fis b> |
  <e g b>( |
  <d fis>) |
  <cis fis b>( |
  <d fis b> |
  <e g b>) |
  b'4. b8 b b |
  b4. b8 b b |
  b4. b8 b b |
  r4. b8 b b |
  r4 <b fis d>2 ~ |
  \oneVoice
  <b fis d b fis b,>2. ~ |
  <b fis d b fis b,>2. ~ |
  <b fis d b fis b,>2. ~ |
  <b fis d b fis b,>2. |
  \grace { <b fis d>8 ~ } <b fis d>4 r r |
  \voiceOne \phrasingSlurUp
  <b fis d>-.\( \oneVoice r r \voiceOne |
  <b fis d>-.\) \oneVoice r r\fermata 
  
}

bassTwo = \context Staff \relative c { 
  \context Voice = "iv"

  s2.*30 |
  %\key g \major
  \voiceTwo
  <g d'>2. | <g e'> | <g d'> | <g d'> |
  <g d'> | <g e'> | <g d'> | <g d'> |
  <gis f'> | <a e'> | <ais g'> | <b fis'> |
  <c a'> | d | <d a'> | <b g'> |
  <c a'> | d | <d d,> | <d g,> |
  %\key b \minor
  s2.*14 |
  %\key g \major
% [Un poco meno mosso e rubato]
\repeat volta 2 {
  <a d fis>2. | <g d' g> | <c, c'>2 r4 | <g' d'>2 r4 |
  <b, d'>2.\arpeggio | <c e'>\arpeggio | <d fis'>\arpeggio | s |
  <b d'>2.\arpeggio | <c e'>\arpeggio | <d fis'>\arpeggio | s |
  <fis b dis a'>2. | <e b' g'> | <d b' f'> |
  <c g' e'> | <b e d'> | <a e' c'> | <ais g' c> |
  b4 b2 | b4 b2 | b4 b2 |
}

\alternative {
	{
  a4\rest <b b'>2 | b4\rest <b b'>2 |
  a4\rest <b b'>2 | b4\rest <b b'>2 |
	}
	{
  <b fis' b>2. |
  \grace { <a' dis>8 ~ } <a dis fis>2. |
  \grace { <gis e'>8 ~ } <gis e' gis>2. |
  \grace { <g! b>8 ~ } <g b g'>2. |
  \grace { <fis b>8 ~ } <fis b a'>2. |
	}
}

% [Tempo I]
  <g d'>2. | <g e'> | <g d'> | <g d'> |
  <g d'> | <g e'> | <g d'> | <g d'> |
  <gis f'> | <a e'> | <ais g'> | <b fis'> |
  <c a'> | d | <d a'> | <b g'> |
  <c a'> | d | <d d,> | <d g,> |
  %\key b \minor
  s2.*29 |
  
% [Meno mosso]

  r4 b, b ~ |
  \repeat unfold 6 { b b b ~ | }
  b b b |
  <b' d fis>2 <cis e>4( |
  <b d fis>2) <cis e>4( |
  <b d fis>2) <cis e>4( |
  <b, fis' b>2) <cis' e>4( |
  <b, fis' b>2.) ~ |
  \oneVoice
  <b fis' b>2*3/2 |
  s2.*4 |
  \grace { \voiceTwo <b fis' b>8 ~ } \voiceTwo <b fis' b>4 s s |
  \grace { \voiceTwo <b fis' b>8 ~ } \voiceTwo <b fis' b>4 s s |
  
}



\score{
     \context PianoStaff <<
         \context Staff = "treble" <<
	     \trebleOne
	     \trebleTwo
             \dynamics
         >>
	 \context Staff = "bass" <<
	     \bassOne
	     \bassTwo
	 >>
     >>

     \layout {
          #(set-default-paper-size "a4")
          %interscorelinefill = #1
		  \context { \Staff \RemoveEmptyStaves }  
     }
     
     
  \midi {
    \tempo 4 = 140
    }


}
