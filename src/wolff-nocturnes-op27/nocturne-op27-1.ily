\version "2.23.4"

% NOTE: This piece was originally typeset in 2005 using LilyPond 2.6.0; it
% likely uses many layout hacks that are not good practice anymore in 2022...

lento = \markup { \bold \large { Lento } }
piuMosso = \markup { \bold { Più mosso } }
tempoI = \markup { \bold { Tempo I } }
rit = \markup { \italic { rit. } }
aTempo = \markup { \italic { a tempo } }
rall = \markup { \italic { rall. } }
pf = #(make-dynamic-script "pf")

globalOne = {
  \key as \major
  \time 4/4
  s1*14
  \key e \major
  s1*10
  \key as \major
  s1*33
  \bar "|."
}

pedallingOne = {
  s1_\sustainOn s
  \repeat unfold 4 { s8_\sustainOn s s s_\sustainOff }
  s1*2
  \repeat unfold 3 { s8_\sustainOn s s s_\sustainOff }
  s2
  \repeat unfold 11 { s8_\sustainOn s s s_\sustainOff }
  s2 s1 s8_\sustainOn s s s_\sustainOff
  s2 s1 s8_\sustainOn s s s_\sustainOff s8_\sustainOn s s s_\sustainOff
  s1 s8_\sustainOn s s s_\sustainOff s2

  s1*4
  \repeat unfold 4 { s8_\sustainOn s s s_\sustainOff }
  s1 s8_\sustainOn s8*6 s8_\sustainOff
  s1*2
  \repeat unfold 11 { s8_\sustainOn s s s_\sustainOff }
  s2 s1*2
  s4 s_\sustainOn s s8. s16_\sustainOff

  s2._\sustainOn s8. s16_\sustainOff
  s2._\sustainOn s8. s16_\sustainOff
  s4_\sustainOn s2 s8_\sustainOff s
  \repeat unfold 6 { s8_\sustainOn s s s_\sustainOff }
  s1
  \repeat unfold 6 { s8_\sustainOn s s s_\sustainOff }
  s2
  \repeat unfold 9 { s8_\sustainOn s s s_\sustainOff }
  s1*3
}

dynamicsOne = {
  \once \override TextScript.extra-offset = #'(-4.0 . 1.0)
  \override DynamicText.extra-offset = #'(0 . -2.4)
  s1^\lento_\p
  s1*3
  \once \override DynamicText.extra-offset = #'(1.0 . -1.25)
  s1_\pf
  s1_\p
  \once \override DynamicText.extra-offset = #'(1.0 . -1.5)
  s1_\ff
  \textSpannerUp
  \once \override TextSpanner.bound-details.left.text = "ritard.   "
  \override TextSpanner.extra-offset = #'(0 . 1.2)
  s2..\startTextSpan s8\stopTextSpan
  \once \override DynamicText.extra-offset = #'(0 . -1.25)
  s1^\aTempo_\p s1
  \once \override DynamicText.extra-offset = #'(1.0 . -1.25)
  s1_\pf s1
  \once \override DynamicText.extra-offset = #'(0 . -1.25)
  s1_\ff
  s4 \once \override TextScript.extra-offset = #'(0 . 1.25) s2.^\rit
  << {\once \override TextScript.extra-offset = #'(-1.5 . 1.0) s1^\aTempo}
     \\ {\once \override TextScript.extra-offset = #'(0 . -1.15) s1_\markup{ \italic { con passione } } }
   >> s1*2
  \once \override DynamicText.extra-offset = #'(0 . -1.5)
  s2._\f
  \once \override TextScript.extra-offset = #'(0 . 1.2)
  s4^\rit
  \once \override TextScript.extra-offset = #'(-5.0 . 2.75)
  \once \override DynamicText.extra-offset = #'(0 . -1.5)
  s1^\aTempo_\ff s1
  \once \override TextScript.extra-offset = #'(-1.0 . 1.0)
  \once \override DynamicText.extra-offset = #'(0.75 . -2.4)
  s1^\piuMosso_\p
  \textSpannerDown
  s4 s8.
  \override TextSpanner.extra-offset = #'(0 . -1.6)
  \once \override TextSpanner.bound-details.left.text = "cres  "
  s16\startTextSpan s2
  s4 s8. s16\stopTextSpan
  \once \override TextSpanner.bound-details.left.text = "cen   "
  \once \override TextSpanner.bound-details.right.text = "   do"
  \override TextSpanner.extra-offset = #'(0 . -1.3)
  s2\startTextSpan
  s16 s8.\stopTextSpan s2. s1*3
  \once \override TextScript.extra-offset = #'(-1.0 . 0)
  \once \override DynamicText.extra-offset = #'(-1.8 . -2)
  s1_\f^\markup{ \italic { con forza } }
  \textSpannerUp
  \once \override TextSpanner.bound-details.left.text = "ritard. "
  \override TextSpanner.extra-offset = #'(0 . 2.0)
  s1\startTextSpan s2 s4 s8 s16 s16\stopTextSpan
  \once \override TextScript.extra-offset = #'(0 . 2.2)
  \once \override DynamicText.extra-offset = #'(0.5 . -2.4)
  s1_\p^\tempoI s1*3
  \once \override DynamicText.extra-offset = #'(0.5 . -2.0)
  s1_\p s1
  \once \override DynamicText.extra-offset = #'(1.0 . -1.5)
  s1_\ff s1
  s1_\sfz s1
  \crescTextCresc
  \override Hairpin.extra-offset = #'(-1.0 . -2.4)
  s4. s8\< s2 s2 s4
  \once \override DynamicText.extra-offset = #'(0 . 0)
  s4_\ff\!
  \once \override TextScript.extra-offset = #'(-1.25 . 1.5)
  s8^\piuMosso_\p
  \once \override TextScript.extra-offset = #'(-0.25 . -0.5)
  s2.._\markup{ \italic { con passione } } s1*2
  \once \override DynamicText.extra-offset = #'(0.5 . -1.1)
  s8_\f
  \once \override TextSpanner.bound-details.left.text = "rit. "
  \override TextSpanner.extra-offset = #'(0 . 2.0)
  s4\startTextSpan s16 s16\stopTextSpan
  \once \override TextScript.extra-offset = #'(0 . 2.75)
  s2^\aTempo
  \once \override DynamicText.extra-offset = #'(0 . -1.25)
  s1\pf
  s1*2
  \once \override DynamicText.extra-offset = #'(0 . -1.1)
  s8_\f
  \once \override TextSpanner.bound-details.left.text = "rit. "
  s4\startTextSpan s16 s16\stopTextSpan
  \once \override TextScript.extra-offset = #'(-1.0 . 2.75)
  s2^\tempoI
  s1_\p s1*2 s2
  \once \override TextScript.extra-offset = #'(0 . 2.0)
  s2^\rall
  s1_\p
  \once \override DynamicText.extra-offset = #'(1.0 . -2.0)
  s1_\pp
}

upperOne = \context Staff \relative c'{
  \context Voice = "i"

  << {\voiceTwo \tieDown es1^> ~ | es ~ | es4 s2. | \voiceOne des'4 c8. bes16 b4-> c4} \\
     {\voiceOne \tieDown s1*2 | des4-> c8. bes16 b4 c8. es,16-> ~ | \voiceTwo es4 s2.} >>

  as'4 c,8. d16 f4 es8. d16 \break | des!4 c8. bes16 b4 c4 |
  as'4 c,8. d16 \once \override Slur.height-limit = #5.0 \once \override Slur.ratio = #0.5 f( es des'! c bes c, as' g) |
  f( g, es' d)
  << {\voiceOne \tieDown des8 c16^> bes as4 s4 | des4 c8. bes16 b4 c8. es,16-> ~ | \voiceTwo es4} \\
     {\voiceTwo \tieDown des'16 es, des8 c4 \voiceOne es4-> ~ | \voiceTwo es4 s2. | \voiceOne des'4} >>
  c8. bes16 <b f'>4-> <c es> | as'4-> c,8. d16 f4 es8. d16 | des!4 c8. bes16 b4 c \break |
  \ottava #1
  <as' as'>4 <c c,>8. <d d,>16 <f f,>8. <es es,>16 <bes' des!> <as c> <bes des,> <as c,> |
  <g es> <f des> <es g,> <des f,> \ottava #0 <c as> <bes g> <as c,> <g bes,> <as c, as>4 r4 |
                                % [Modulation 1]
  <gis e gis,>4( <gis dis gis,>8 <gis d gis,> <gis cis, gis> <a cis, a>4 <gis cis, a>8) |
  \tupletSpan 4
  \tuplet 3/2 {<fis e a,>8 <fis dis a> <fis cis a> <fis dis a> <fis cis a> <fis b, a>} <gis b, gis>4 r4 |
  <fis cis>4-> <e b>8. e16 <dis a'>4->( <e gis>) | \grace {e,16[ ais cis]} gis'4 fis8. e16
  << {\voiceOne \tuplet 6/4 {dis16 e dis cis dis e} fis4} \\
     {\voiceTwo a,!4 ~ a16 <b dis>^( <a cis> <fis a>)} >> |
  \grace {e32[ gis b e]} gis4 <gis dis gis,>8 <gis d gis,>
  \tuplet 3/2 {<gis cis, gis> <a cis, a> <b cis, b>} <cis cis,>4 | \override TupletBracket.transparent = ##t
  \tuplet 3/2 { <fis, e a,>8 <fis dis a> <fis cis a> <fis dis a>[ <fis cis a> r16 <fis b, a>16] } <gis b, gis>4 r4 |
  <cis, cis,>4 <dis dis,>8. <cis cis,>16 <bis bis,>4 <gis' gis,> |
  <e e,> <fis fis,>8. <e e,>16 <dis dis,>4 <b' b,> |
  <gis gis,> <ais ais,>8. <gis gis,>16 <fisis fisis,>4 <dis' dis,>-> ~ |
  \tuplet 3/2 {<dis dis,>8( <cis cis,> <dis dis,> <cis cis,> <b b,> <ais ais,>)}
  <ais ais,>2-> |
                                % [Modulation 2]
  <as as,>4 <bes bes,>8. <as as,>16 <g g,>4 <es' es,> ~ | \stemDown
  \tuplet 3/2 {<es es,>8( <des des,> <es es,> <des des,> <ces ces,> <bes bes,>)} <bes bes,>2-> ~ |
  \tuplet 3/2 {<bes bes,>8( <as as,> <bes bes,> <as as,> <ges ges,> <fes fes,>)} <es es,>2-> ~ |
  \tuplet 3/2 {<es es,>8( <des des'> <es es'>
                <des des'> <ces ces'> <bes bes'> <bes bes'> <as as'> <ges ges'> <fes fes'> <es es'> <des des'>)} |
  \stemNeutral <es es'>2-> <es es'>2-> | <es es'>2->
  << {\voiceOne <es es'>2_> | des'4 c8. bes16 b4 c8. es,16-> ~ \break | \voiceTwo es4} \\
     {\voiceOne es2 ~ | \voiceTwo es4 s2. | \voiceOne des'4} >> c8. bes16 b4-> c |
  as'4 c,8. d16 f4 es8. d16 | des!4 c8. bes16 b4 c4 |
  << {\voiceOne des4 c8. bes16 b4 c4 | des4 c8. bes16 <b f'>4 <c es>} \\
     {\voiceTwo des4 s4 r8 f,4 es8-> ~ | es4 s4 r8 f4-> es8->} >> |
  \ottava #1
  <as' as'>4 <c c,>8. <d d,>16 <f f,>8 <es es,> <bes' des!>16 <as c> <bes des,> <as c,> |
  <g es> <f des> <es g,> <des f,> \ottava #0 <c as> <bes g> <as c,> <g bes,>
  r2^\fermata \break |
                                % [Tremolando]
  <as d, as>2. <as d, as>8. <bes bes,>16 | <bes d, bes>4 ~ <as d, as> r4 <as d, as>8. <bes bes,>16 |
  \tuplet 3/2 {<bes d, bes>8( <as as,> <bes bes,> <des! des,> <ces ces,> <ceses ceses,>
               <es es,> <d d,> <e e,> <g g,> <f f,> <g g,>)} |
  \once \override Staff.OttavaBracket.extra-offset = #'(0 . 0.25) \ottava #1
  \tuplet 3/2 {<bes bes,>8( <as as,> <bes bes,> <des des,> <ces ces,> <ceses ceses,>
                <es es,> <d d,> <e e,>} <f f,>) \ottava #0 r8^\fermata \break |
                                % [Più mosso]
  \stemUp <g,, g,>4_( <f f,>8. <es es,>16 <es es,>4 <des des,>) |
  \stemNeutral <bes' bes,>4^( <as as,>8. <g g,>16 <g g,>4 <f f,>) |
  <c' c,>4->^( <bes bes,>8. <a a,>16 <a a,>4) <ges' ges,> ~ |
  \tuplet 3/2 {<ges ges,>8 <f f,> <es es,> <des des,> <f, f,> <g! g,!>}
  <f f,>4->^( <es es,>8..) <as as,>32 | \revert TupletBracket.transparent \tupletSpan \default
  \tuplet 5/4 { <as as,>8( <g g,> <as as,> <g g,> <f f,>) } <es es,>4 <des des,> |
  \tuplet 5/4 { <c' c,>8( <bes bes,> <c c,> <bes bes,> <as as,>) } <g g,>4 <f f,> |
  \tuplet 5/4 { <es' es,>8( <des des,> <es es,> <des des,> <c c,>) } <bes bes,>8 <a a,> <ges' ges,>4 ~ |
  \override TupletBracket.transparent = ##t \tupletSpan 4
  \tuplet 3/2 { <ges ges,>8 <f f,> <es es,> <des des,> <f, f,> <g g,!> } <f f,>4->( <es es,>8.) <as as,>16 |
  << { bes,2^> c^> | bes^> c^> | des^> s | des^> des^> | s1 }
  \\ { \override TupletBracket.transparent = ##t \tupletSpan 4
       \tuplet 3/2 { <as' as,>8^( <g g,> <as as,> <g g,> <f f,> <g g,>) } <f f,>4 <es es,>8 <as as,> |
       \tuplet 3/2 { <as as,>8^( <g g,> <as as,> <g g,> <f f,> <g g,>) } <f f,>4 <es es,>8 <as as,> |
       \tuplet 3/2 { <as as,>8^( <g g,> <as as,> <g g,> <f f,> <g g,> <f f,> <g g,> <f f,> <g g,> <f f,> <g g,>) } |
       \tuplet 3/2 { <bes bes,>^( <as as,> <bes bes,> <as as,> <bes bes,> <as as,>
                     <g g,> <f f,> <g g,> <bes bes,> <as as,> <fes fes,> } |
       <es as, es>1)\arpeggio }
   >> |
  <c es, c>1 | <c es, c>^\fermata
                                % [FINE]
}


lowerOne = \context Staff \relative c{
  \context Voice = "ii"

  r1 | r1 |
  \override Slur.height-limit = #6.0 %\once \override Slur.ratio = #0.5
  g8( es' <g es'> es) as,( es' <as es'> es) |
  g,( es' <g es'> es) as,( es' <as es'> es) |
  f,( f' <b d as'> f) es,( es' <c' es as> es,) |
  es,( es' <bes' des g> es,) as,( es' <as es'> es) |
  f,( f' <b d as'> f) es,_( es' <as c as'> es) |
  es,( es' <g es'> es) as,( es' <as c> es) |
  g,( es' <g es'> es) as,( es' <as es'> es) |
  g,( es' <g es'> es) <d as>( <as' d> <as es'> es) |
  f,( f' <b d as'> f) es,_( es' <c' es as> es,) |
  es,( es' <bes' des g> es,) as,( es' <as es'> es) |
  \stemUp f,,( \stemDown f'' <b d as'> f) \stemNeutral es,( es' <as c as'> es) |
  es,( es' <g des'> es) as,( es' <as c> es) |
                                % [Modulation 1]
  e,( e' b' e) a,,( e' e' e,) | b( fis' b dis) <e e,>( cis b e,) |
  << {\voiceOne a8( e' gis, e') fis,( e' e, e')} \\ {\voiceTwo e,2 e4 e4} >> |
  fis,8( fis' <cis' ais'> fis,) b,( b' b'16) r16 r8 |
  e,,,8( e' b' e) a,,( e' <a e'> e) |	b( fis' b dis) <e e,>( b e, b) |
  a( e' cis' fis,) gis,( dis' bis' gis) | cis,( gis' cis ais) b,( fis' dis' b) |
  e,( b' e cis) dis,( ais' fisis' dis) | e,( gis gis' cis,) dis,( ais' fisis' dis) |
                                % [Modulation 2]
  fes,( as as' des,) es,( bes' g' es) | fes,( as fes' des) es,( bes' g' es) |
  fes,,( as as' des,) es,( bes' g' es) | fes,( as fes' des) fes,( as as' des,) |
  es,( bes' g' es) f,( as as' des,) | g,( bes bes' es,) as,( es' c' as) |
  g,( es' <g es'> es) as,( es' <as es'> es) |
  g,( es' <g es'> es) as,( es' <as es'> es) |
  f,( f' <b d as'> f) es,_( es' <as c as'> es) |
  es,( es' <g des'> es) as,( es' <as c> es) |
  g,( es' <g es'> es) as,( es' <as es'> es) |
  g,( es' <g es'> es) <d as>( <as' d> <as es'> <es as,>) |
  f,->( f' <b d as'> f) es,->( es' <as c as'> es) |
  es,->( es' <g es'> es) r2^\fermata |
                                % [Tremolando]
  <f, f,>4  <f' b>32[ d' <f, b> d' <f, b> d' <f, b> d'] \repeat "tremolo" 8 { <f, b>32 d'32 } |
  \repeat "tremolo" 8 { <f, b>32 d'32 } \repeat "tremolo" 8 { <f, b>32 d'32 } |
  \repeat "tremolo" 8 { <f, b>32 d'32 } \repeat "tremolo" 8 { <f, b>32 d'32 } |
  \repeat "tremolo" 8 { <f, b>32 d'32 } \repeat "tremolo" 4 { <f, b>32 d'32 }
  <f, b d as'>8 r^\fermata |
                                % [Più mosso]
  es,8( bes' g' es) f,( as as' des,) | g,( bes bes' es,) as,( des des' as) |
  bes,( es des' g,) c,( ges' es'-> a,) | <des, f'> bes' <es, g'!> es' as,, es' c' r |
  es,,( bes' g' es) f,( as as' des,) | g,( bes bes' es,) as,( des des' as) |
  \override Staff.NoteCollision.merge-differently-headed = ##t
  bes,( es des' g,) c,( ges' es'-> a,) | <des, f'> bes' <es, g'!> es' << { as,,2 } \\ { as8( es' c' as) } >> |
  << { as,2^> as^> | as^> as^> | as^> as^> }
     \\ { as8( es' des' bes) as,( es' c' as) | as,( es' des' bes) as,( es' c' as) | as,( es' des' bes) as,( es' des' bes) }
   >> |
  as,8( es' des' g,) as,( as' des des,) |
  <as c es as c>1\arpeggio |
  <as es' as> | <as es' as>^\fermata
                                % [FINE]

}

firstNocturne = \context PianoStaff
  <<
    \set PianoStaff.instrumentName = \markup { \concat { \number { 1 } \bold \larger \super "er" } }
    \context Staff = "treble" <<
      \globalOne
      \clef violin
      \upperOne
      \dynamicsOne
    >>
    \context Staff = "bass" <<
      \globalOne
      \clef bass
      \lowerOne
      \pedallingOne
    >>
  >>
