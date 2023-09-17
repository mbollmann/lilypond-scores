\version "2.23.4"

\header {
     composer = "Sergei Bortkiewicz"
     title =    "Russische Weisen und Tänze"
     subtitle = "- V -"
	 opus = "Op.31, No.5"
}

#(set-global-staff-size 18)
#(ly:set-option 'point-and-click #f)

trebleOne = \context Staff \relative c''' { 
  \context Voice = "i"
  \clef treble
  \key b \minor
  \time 2/4
  
  <d fis, e d>4-.-- <cis fis, e cis>-.-- |
  <fis, d b fis>2 |
  <d' fis, e d>4-.-- <cis fis, e cis>-.-- |
  <fis, d b fis>2 |
  <a e b a>4-. <g e b g>-. |
  <fis d b fis> r |
  <d fis, e d>-. <cis fis, e cis>-. |
  <b fis d b> r\fermata |
  
%[Tempo di Valse lento]
  \time 3/4
  \bar "||"
  <fis' fis,>2( <fis fis,>4 |
  <g g,>2-- <fis fis,>4 |
  <e e,>2 <fis fis,>4 |
  <e e,>2 <d d,>4) |
  <cis cis,>4( <e e,> <g g,> |
  <fis fis,>2 <fis fis,>4 |
  <g g,>2-- <fis fis,>4 |
  <fis fis,>2.) |
  <b b,>2( <b b,>4 |
  <b b,>2 <cis, cis,>4 |
  <b' b,>2 <a a,>4 |
  <g g,>2 <fis fis,>4) |
  <a a,>2( <g g,>4 |
  <fis fis,>2 <d d,>4) |
  <d d,>2( <cis cis,>4 |
  <b b,>2.) |
  <b' b,>2( <b b,>4 |
  <b b,>2 <cis, cis,>4 |
  <b' b,>2 <a a,>4 |
  <g g,>2 <fis fis,>4) |
  <a a,>2( <g g,>4 |
  <fis fis,>2) <fis fis,>4\( |
  \acciaccatura a8 <g g,>2 <fis fis,>4 |
  <b, b,>2.\) |
 
%[Poco a poco animato]
  \bar "||"
  <fis' d fis,>4-. <b fis d b>4.( <ais ais,>8 |
  <b fis d b>2.) |
  <cis, b g e>4-. <g' cis, b g>4.( <fis fis,>8 |
  <g cis, b g>2.) |
  <cis, b fis e>4-. <fis cis ais fis>4.( <eis eis,>8 |
  <fis cis ais fis>2.) |
  <g d b g>4-. <fis d b fis>-. <eis d b eis,>-. |
  <fis d b fis>2. |
  <fis d fis,>4-. <b fis d b>4.( <ais ais,>8 |
  <b fis d b>2.) |
  <cis, b g e>4-. <g' cis, b g>4.( <fis fis,>8 |
  <g cis, b g>2.) |
  <cis, b fis e>4-. <g' cis, ais>4.-- <fis cis ais fis>8 |
  <e ais, fis e>4-. <d ais fis e>-. <cis ais fis e>-. |
  <b fis b,>2. |
  R1*3/4 |
  
  \bar "|."
}

trebleTwo = \context Staff \relative c'' {
  \context Voice = "iii"

  s2
}

dynamics = \context Staff \relative c{
  s2
}

bassOne = \context Staff \relative c' { 
  \context Voice = "ii"
  \clef bass
  \key b \minor
  \time 2/4
  
  <ais fis e>4-.-- <ais fis e>-.-- |
  <b fis d>( b,) |
  <ais' fis e>4-.-- <ais fis e>-.-- |
  <b fis d>( b,) |
  <b' g e>-. <b g e>-. |
  <b fis d> r |
  <fis fis,>-. <fis fis,>-. |
  <b, b,> r\fermata |
  
%[Tempo di Valse lento]
  \time 3/4
  R1*3/4 |
  <ais ais,>4 <fis' cis' e> <fis cis' e> |
  <fis, fis,> <fis' ais cis> <fis ais cis> |
  <b, b,> <fis' b> <fis b> |
  <e e,> <g b cis> <g b cis> |
  fis, <fis' b d> <fis b d> |
  <fis, fis,> <ais' cis e> <fis ais e'> |
  <b, b,> <fis' b d> <fis b d> |
  <b, b,> <fis' b d> <fis b d> |
  <cis cis,> <g' a> <g a> |
  <a, a,> <g' a cis> <g a cis> |
  <d d,> <fis a d> <fis a d> |
  e, <g' b cis> <g b cis> |
  fis, <fis' b d> <fis b> |
  <fis, fis,> <e' gis>( <e ais>) |
  <b b,> <d fis> <d fis> |
  <b b,> <fis' b d> <fis b d> |
  <cis cis,> <g' a> <g a> |
  <a, a,> <g' a cis> <g a cis> |
  <d d,> <fis a d> <fis a d> |
  e, <g' b cis> <g b cis> |
  fis, <fis' b d> <fis b d> |
  <fis, fis,> <fis' cis' e> <fis ais e'> |
  <b, fis' b>2. |
%[Poco a poco animato]
  <d d,>4 <fis b d> <fis b d> |
  <d d,>  <fis b d> <fis b d> |
  <e e,> <g b cis> <g b cis> |
  <e e,> <g b cis> <g b cis> |
  fis, <fis' ais cis> <fis ais cis> |
  fis, <fis' ais cis> <fis ais cis> |
  <b, b,> <fis' b d> <fis b d> |
  <b, b,> <fis' b d> <fis b d> |
  <d d,> <fis b d> <fis b d> |
  <d d,> <fis b d> <fis b d> |
  <e e,> <g b cis> <g b cis> |
  <e e,> <g b cis> <g b cis> |
  fis, <fis' ais cis> <fis ais cis> |
  <fis, fis,> <fis' ais cis> <fis ais cis> |
  <b, fis'>-. fis-. d-. |
  b-. r r |

}

bassTwo = \context Staff \relative c { 
  \context Voice = "iv"
  s2
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
     }
     
     
  \midi {
    \tempo 4 = 180
    }


}
