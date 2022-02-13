\version "2.23.4"

larghetto = \markup { \bold \large { Larghetto } }
piuMossoAgitato = \markup { \bold { Più mosso agitato } }
tempoI = \markup { \bold { Tempo I } }
rit = \markup { \italic { rit. } }
ritard = \markup { \italic { ritard. } }
aTempo = \markup { \italic { a tempo } }
sottoVoce = \markup { \italic { sotto voce } }
conAnima = \markup { \italic { con anima } }
tranquillo = \markup { \italic { tranquillo } }
energico = \markup { \italic { energico } }
rall = \markup { \italic { rall. } }
furioso = \markup { \italic { furioso } }
conForza = \markup { \italic { con forza } }
sempreConFuoco = \markup { \italic { sempre con fuoco } }
rubato = \markup { \italic { rubato } }
piuMosso = \markup { \italic { più mosso } }
precipitato = \markup { \italic { precipitato } }
pf = #(make-dynamic-script "pf")

skipTypeset = \set Score.skipTypesetting = ##t
typeset = \set Score.skipTypesetting = ##f

setCadenza = {
  \set fontSize = #-2
  \override Beam.beam-thickness = #'0.384
  \override Beam.space-function = #(lambda (beam mult) (* 0.6 (ly:beam::space-function beam mult)))
}
unsetCadenza = {
  \unset fontSize
  \revert Beam.beam-thickness
  \revert Beam.space-function
}
bassChords = {
  \change Staff="bass"
  \stemUp
  \override Stem.cross-staff = ##t
  \override Stem.length = #22
}
bassChordsEnd = {
  \change Staff="treble"
  \stemNeutral
  \revert Stem.length
}

globalTwo = {
  \key bes \minor
  \override Staff.TimeSignature.transparent = ##t
  \cadenzaOn
  s8*34
  \bar ""
  s8*56
  \bar "|"
  \revert Staff.TimeSignature.transparent
  \time 4/4
  s8*9
  \cadenzaOff
  \bar "|"
  \set Score.currentBarNumber = #2
  s1*89
  \cadenzaOn
  s8*32
  \bar "|"
  \cadenzaOff
  \set Score.currentBarNumber = #92
  s1*4
  \bar "|."
}

pedallingTwo = {
  s8*34 s8*56 s8*9 s1*51
                                % [Tempo I]
  \repeat unfold 4 { s8. s16_\sustainOn s2 s8 s\sustainOff s1 }
                                % [Page 4]
  s1*4
  \repeat unfold 4 { s8. s16_\sustainOn s2 s8 s\sustainOff s1 }
  s1*4
                                % [Page 5]
}

dynamicsTwo = {
                                % [Introduction]
  \override DynamicText.extra-offset = #'(0 . -2.4)
  \once \override TextScript.extra-offset = #'(-4.0 . 1.0)
  \once \override DynamicText.extra-offset = #'(0 . -2.65)
  s4_\p^\larghetto
  \once \override TextScript.extra-offset = #'(-1.0 . -2.65)
  s1_\sottoVoce s2
  s16*36
  \once \override TextScript.extra-offset = #'(0 . -1.65)
  s4_\p
  s2. s1
  \once \override DynamicText.extra-offset = #'(0.5 . -1.65)
  s4_\p
  s4 s1 s16*36 s2*3
                                % [Larghetto]
  s8 s1_\p
  \override Hairpin.extra-offset = #'(0 . -3.65)
  s s2 \tuplet 3/2 { s8 s\> s s s s\! }
  s2. \once \override DynamicText.extra-offset = #'(-1.5 . -12.0)
  s4_\f
  s4 \once \override DynamicText.extra-offset = #'(-2.25 . -1.6)
  s2._\p
  s1 \once \override DynamicText.extra-offset = #'(-1.5 . -12.5)
  s1_\p
  s1 \once \override DynamicText.extra-offset = #'(-0.65 . -2.4)
  s1_\pf
  \override Hairpin.extra-offset = #'(0 . -2.5)
  s s2 \tuplet 3/2 { s8 s\< s s s s\! }
  s2.
  s4_\f
                                % [Page 2]
  s1*2 s4. \once \override DynamicText.extra-offset = #'(0 . -3.4)
  s8_\p
  s2 s1*3
  \pageBreak
  \once \override TextScript.extra-offset = #'(0 . -2.4)
  s1_\conAnima
  s1
  << {\override Hairpin.extra-offset = #'(0 . 1.0)
      \once \override TextScript.extra-offset = #'(-0.5 . -2.75)
      s4^\<_\tranquillo s2. s2 s2\!}
     \\ {s1 \once \override DynamicText.extra-offset = #'(0.3 . -2.6)
         s2_\p s2}
   >>
  s1*2
  \override Hairpin.extra-offset = #'(0 . 1.0)
  s4^\< s2 s4\!
  \once \override DynamicText.extra-offset = #'(0.3 . -3.1)
  s1_\p
  \override Hairpin.extra-offset = #'(0 . -1.5)
  s4 s2_\< s8 s\!
  << {\once \override Hairpin.extra-offset = #'(0 . -2.5) s8\> s4.\! }
     \\ {\once \override DynamicText.extra-offset = #'(-0.5 . -11.5) s2_\f }
   >>
  \once \override DynamicText.extra-offset = #'(-0.25 . -0.2)
  s2_\p
  \once \override DynamicText.extra-offset = #'(-0.5 . -13.0)
  s4_\f
  \once \override DynamicText.extra-offset = #'(-0.25 . -0.2)
  s2._\p
  \once \override DynamicText.extra-offset = #'(-0.5 . -13.0)
  s8_\f
  \once \override TextScript.extra-offset = #'(-0.65 . -11.5)
  s8_\energico
  \once \override DynamicText.extra-offset = #'(-0.25 . -0.2)
  s2._\p
  \once \override DynamicText.extra-offset = #'(-0.5 . -2.4)
  s1_\pf
  s1
  \once \override DynamicText.extra-offset = #'(0 . -2.75)
  s4_\p
  \once \override Hairpin.extra-offset = #'(0 . -3.25)
  \once \override TextScript.extra-offset = #'(0 . 0.8)
  s4^\rall
  \once \override Hairpin.extra-offset = #'(0 . -3.25)
  s4_\> s4
  s4\!
  \once \override DynamicText.extra-offset = #'(0 . -3.25)
  s4_\pp
  s2
                                % [Più mosso agitato]
  << {\once \override TextScript.extra-offset = #'(-1.5 . 1.0) \once \override DynamicText.extra-offset = #'(0.7 . -2.4)
      s1^\piuMossoAgitato_\pf}
     \\ {s8 \once \override Hairpin.extra-offset = #'(0 . -12.5) s8_\< s2 s8 s\!}
   >>
  s1
  s_\pf s
  << {\once \override DynamicText.extra-offset = #'(0.5 . -2.4)	s1_\f}
     \\ {s8 \once \override Hairpin.extra-offset = #'(0 . -13.75) s8_\< s2 s8 s\!}
   >>
  s1
                                % [Page 3]
  \once \override DynamicText.extra-offset = #'(-0.5 . -2.0)
  s_\ff s
  s_\ff s
  s_\f s
  \textSpannerDown
  \once \override TextSpanner.bound-details.left.text = "cres  "
  \override TextSpanner.extra-offset = #'(0 . -1.2)
  s4\startTextSpan s2 s8. s16\stopTextSpan
  \once \override TextSpanner.bound-details.left.text = "cen  "
  \once \override TextSpanner.bound-details.right.text = "  do"
  \override TextSpanner.extra-offset = #'(0 . 1.2)
  s4\startTextSpan s2. \once \override DynamicText.extra-offset = #'(1.75 . -1.6)
  s4_\ff s2 s4\stopTextSpan s4
  \once \override TextScript.extra-offset = #'(-0.75 . 1.0)
  s2.^\rall
  s2.
  \once \override DynamicText.extra-offset = #'(0 . -2.1)
  s4_\sff
  s1
                                % [Tempo I]
  \once \override TextScript.extra-offset = #'(-4.0 . 0.0)
  s4^\tempoI_\ff
  \once \override TextScript.extra-offset = #'(-2.8 . -1.6)
  s2._\furioso s1
  \once \override DynamicText.extra-offset = #'(0.5 . -2.4)
  s_\ff s1*5
                                % [Page 4]
  \once \override TextScript.extra-offset = #'(-0.5 . -1.5)
  s1_\sempreConFuoco s1*2
  \once \override TextScript.extra-offset = #'(-3.0 . -1.5)
  s2_\conForza s8
  \textSpannerUp
  \once \override TextSpanner.bound-details.left.text = "rall.  "
  \override TextSpanner.extra-offset = #'(-2.5 . 1.8)
  s8\startTextSpan s8.. s32\stopTextSpan
  \once \override TextScript.extra-offset = #'(-2.0 . -1.5)
  s1^\aTempo_\ff s
  \once \override DynamicText.extra-offset = #'(0.5 . -2.4)
  s_\ff s
  \once \override DynamicText.extra-offset = #'(0 . -1.0)
  s_\f s1*3
  \once \override DynamicText.extra-offset = #'(0 . -1.2)
  s1_\ff s
  \once \override DynamicText.extra-offset = #'(0.65 . -2.0)
  s_\sff s
                                % [Page 5]
  \once \override DynamicText.extra-offset = #'(0.0 . -1.2)
  s_\ff s s4 s4.
  \once \override TextScript.extra-offset = #'(-2.0 . -2.2)
  s4._\rubato
  s2 s8
  \once \override Hairpin.extra-offset = #'(0.0 . -1.15)
  s\< s4
  \once \override DynamicText.extra-offset = #'(1.2 . -1.5)
  s1\!_\sff s s8
  \once \override TextScript.extra-offset = #'(-1.5 . 0.25)
  s4.^\piuMosso s2 s4.
  \once \override DynamicText.extra-offset = #'(0.0 . -0.75)
  s8_\f s
  \override TextSpanner.extra-offset = #'(-0.65 . 1.0)
  \once \override TextSpanner.bound-details.left.text = "rall.  "
  \once \override TextSpanner.bound-details.right.text = "   a tempo"
  s4.\startTextSpan
  \once \override DynamicText.extra-offset = #'(0.5 . -1.8)
  s1\stopTextSpan_\p s2 s8.
  s16_\p
  << {
    s8.^\< s16\!
    s8^\> s\! s2
    s8.^\< s16\!
    s8^\> s\! s2
    s8.^\< s16\!
    s8^\> s\! s2.
  } \\ {
    \override Hairpin.extra-offset = #'(0 . -2.5)
    s8._\< s16\!
    s2.
    s8._\< s16\!
    s2.
    s8._\< s16\!
    \once \override DynamicText.extra-offset = #'(0 . -2.85)
    s1_\p
  } >>
  s1
                                % [Quasi cadenza]
  \once \override DynamicText.extra-offset = #'(0 . -3.15)
  s2._\f s1
  \once \override TextScript.extra-offset = #'(-1.5 . -0.25)
  s8_\precipitato
  s16*34
                                % [Coda]
  s1_\p s s8
  \once \override DynamicText.extra-offset = #'(0 . -1.5)
  s4._\fff s8
  \once \override TextScript.extra-offset = #'(-1.0 . 1.0)
  s4.^\ritard
  s1
                                % [FINE]
}

upperTwo = \context Staff \relative c'{
  \context Voice = "i"

                                % [Introduction]
  \setCadenza
  s2. r1*1/4 s2.
  r8 des16[^\( c bes] \once \override Beam.positions = #'(2.0 . 5.0)
  a[ c es ges a c es des c bes]\) \stemUp \once \override Beam.positions = #'(4.35 . 3.25)
  a[^\( c es \ottava #1 ges a c es des c bes]\)
  \revert Beam.positions
  a[^\( c es ges a c es des]\) \ottava #0
  s r^\fermata s
  <f,,, bes,>8[ es] % |
  \tieUp <ges bes,>2 ~ ges4 <f es a,!>2 r^\fermata \tieNeutral
  s2 s8 r2*1/2 s8 s2
  r8 des16[^\( c bes] \once \override Beam.positions = #'(2.0 . 5.0)
  a[ c es ges a c es des c bes]\) \stemUp \once \override Beam.positions = #'(4.35 . 3.25)
  a[^\( c es \ottava #1 ges a c es des c bes]\)
  a[^\( c es ges a c es des]\) \ottava #0
  s r^\fermata s
  <es,,, bes>2 <f es a,!> r^\fermata \stemNeutral
  \unsetCadenza
                                % [Larghetto]
  s8 \acciaccatura { s8 } r4 << { des des des } \context Voice="bc" { \bassChords <bes f> <bes f> <bes f> } >> |
  r4 << { des des des } \context Voice="bc" { \bassChords <bes f> <bes f> <bes f> } >> |
  r4 << { des des <des bes> } \context Voice="bc" { \bassChords <bes f> <bes f> s } >> |
  r4 <bes des f> <bes des f> <bes des f> |
  r4 << { \voiceOne <a c> <a c> <as ces> | <as ces> } \\ { \voiceOne \tieUp f' ~ f f ~ | f } >>
  e2^> << { \tieUp es4^> ~ | es } \context Voice="bc" { \bassChords <c bes>4 | <c a> } >>
  des2^> << { \tieUp c4^> ~ | c c2^> ~ c4 } \context Voice="bc" { \bassChords <bes ges>4 | <bes ges> s2 <as es>4 } >> |
  << { des4 des des des } \context Voice="bc" { \bassChords <bes f des>4 <bes f> <bes f> <bes f> } >> |
  r4 << { des des des } \context Voice="bc" { \bassChords <bes f> <bes f> <bes f> } >> |
  r4 << { des des <des bes> } \context Voice="bc" { \bassChords <bes f> <bes f> s } >> |
  r4 <bes des f> <bes des f> << { des'8. bes16 } \\ { ges4 } >> |
                                % [Page 2]
  \voiceOne
  as2. bes8. ges16 |
  f2. f8. es16 |
  ges2. f8. es16 |
  ges2. f8. es16 |
  ges2 f ~ |
  f4 d2 es4 |
  \oneVoice r4 \voiceOne as2. ~ |
  as4 s as2 |
  des4 bes2 as4 |
  ges2 f |
  \oneVoice r4 \voiceOne bes2. ~ |
  bes4 s bes2 |
  es4 ces2 bes4 |
  as2 g |
  \oneVoice
  r4 <as f c> <as f c> <as f c> |
  r <as f> <as f> <as f> |
  r <as f> <as f> <as f> |
  r <as f> <as f> <des bes f> |
  \voiceOne
  des2^> c^> |
  c^> c^> |
  c1 ~ |
  c |
                                % [Più mosso agitato]
  c ~ |
  c |
  as2^> a^> |
  bes^> c^> |
  des1^> ~ |
  des |
                                % [Page 3]
  des2^> d^> |
  es^> f^> |
  \oneVoice
  <ges es bes ges>4 <ges es bes ges> <ges es bes ges> <ges es bes ges> |
  <ges es bes ges> <ges es bes ges> <ges es bes ges> <ges es bes ges> |
  <ges c, a ges> <ges c, a ges> <ges c, a ges> <ges c, a ges> |
  <ges c, a ges> <ges c, a ges> <ges c, a ges> <ges c, a ges> |
  <a es c a> <a es c a> <a es c a> <a es c a> |
  <a es c a> <a es c a> <a es c a> <a es c a> |
  <c ges es c> <c ges es c> <c ges es c>
  \once \override TextScript.extra-offset = #'(-1.0 . 4.75) <c ges es c> | %_\markup{ "(" " " " " ")" }
  \override Staff.OttavaBracket.extra-offset = #'(0 . 1.5)
  <c ges es c> <c ges es c> <c ges es c> \ottava #1 <es c ges es>8 <ges es c ges>-> |
  <f es c f,>4-> \ottava #0 r r \ottava #1 %\override OttavaBracket.extra-offset = #'(0 . 1.5)
  <es bes' c es>-> |
  <es a c es>-> \ottava #0 r r2^\fermata \break |
  \revert Staff.OttavaBracket.extra-offset
                                % [Tempo I]
  \tupletSpan 4
  \voiceOne
  bes8. c16 des2^> c8 bes |
  a8. bes16 f2.^> |
  \oneVoice
  \override Staff.OttavaBracket.extra-offset = #'(0 . 0.4)
  <bes f des bes>8. <c c,>16 <des bes f des>4 ~ \tuplet 3/2 { <des bes f des>8 \ottava #1 <es es,> <f f,>
	<as as,>8 <ges ges,>8. <f f,>16 } |
  \voiceOne
  f1^> \break |
  es8. f16 ges2^> f8 es |
  d8. es16 \ottava #0 bes2. |
  \revert Staff.OttavaBracket.extra-offset \ottava #1
  \oneVoice
  <es bes ges es>8. <f f,>16 <ges es bes ges>4 ~
  	\tuplet 3/2 { <ges es bes ges>8 <as as,> <bes bes,> <des des,> <c c,>8. <bes bes,>16 } |
  <bes ges es bes>4 \ottava #0 r r2 \break |
                                % [Page 4]
  <c, ges c,>8. <des des,>16 <es ges, es>4 r8. <des des,>16 <des ges, des>8. <es es,>16 |
  <des ges, des>8. <c c,>16 <c ges c,>4 r8. <bes bes,>16 <bes ges bes,>8. <c c,>16 |
  <bes ges es bes>8. <as as,>16 <as ges es as,>4-> r8. <as as,>16 <as d, ces as>8. <bes bes,>16 |
  <as d, ces as>8. <g g,>16 <ges es bes ges>4-> r8. <f es c f,>16 <e c e,>8. <f es c f,>16 \break |
  <bes f des bes>8. <c c,>16 \voiceOne d2^> \oneVoice <c f, c>8 <bes bes,> |
  <a f des a>8. <bes f des bes>16 \voiceOne f2.^> \oneVoice |
  <bes f des bes>8. <c c,>16 \voiceOne d2^> \oneVoice <c f, c>8 <bes bes,> |
  \override Staff.OttavaBracket.extra-offset = #'(0 . 0.4)
  <a f des a>8. <bes f des bes>16 \voiceOne f2.^> \oneVoice \break | \ottava #1
  <es' bes ges es>8. <f f,>16 \voiceOne ges2^> \oneVoice <f bes, f>8 <es es,> |
  <d bes ges d>8. <es es,>16 \ottava #0 \voiceOne bes2. \oneVoice | \ottava #1
  <es bes ges es>8. <f f,>16 \voiceOne ges2^> \oneVoice <f bes, f>8 <es es,> |
  <d bes ges d>8. <es es,>16 \ottava #0 \voiceOne bes2. \oneVoice \break | \clef "violin^8"
  \revert Staff.OttavaBracket.extra-offset
  <f' es c f,>8 <ges es c ges> <f es c f,>4.-> <ges des bes ges>8 <f des bes f> <ges des bes ges> |
  <f c a f> <ges c, a ges> <f c a f>4-> <f des bes f>8 <bes bes,> <c c,> <des des,> |
  <c bes ges c,>-> <bes bes,>-> <as as,>-> <ges ges,>-> <f f,>16 <ges ges,> <b, b,> <c c,>
  	\tuplet 6/4 { <des des,>( <d d,> <es es,> <e e,> <f f,> <c c,>) } |
  <es es,>4-> <des bes ges des>-> r2 \break |
                                % [Page 5]
  <f es c f,>8 <ges es c ges> <f es c f,>4.-> <ges des bes ges>8[ <f des bes f> <ges ges,>] |
  <as ges es as,> <bes ges es bes> <as ges es as,>4.-> <bes f des bes>8[ <as f des as> <bes bes,>] |
  <c bes g c,> <des bes g des> <c bes g c,>4.-> <des bes g des>8[ <c bes g c,> <des bes g des>] \break |
  <c a ges! c,> <des a ges des> <c a ges c,>4 ~ \tuplet 3/2 { <c a ges c,>8 <des des,> <d d,> <es es,>8 <e e,> <f f,> } |
  \override TupletBracket.transparent = ##t
  \tuplet 3/2 { <f f,>8 <f e> <f es> <f d> <f des> <f c> <f ces> <f bes,> <f a,> <f as,> <e g,> <es ges,> } |
  \tuplet 3/2 { <d f,> <des fes,> <c es,> <b d,> <bes des,> <a c,> <as ces,> <g bes,> <ges beses,> <f as,> <e g,> <es ges,> } \break |
  <des bes f>8 <ges bes es>[ <f bes des> <es ges c>] <des ges bes> <ges bes es> <f bes des> <es ges c> |
  <des ges bes> \clef violin <es bes ges>[ <des bes f> <c ges es>] <bes ges des> <es, bes>-> <des bes>-> <c ges>-> |
  \revert TupletBracket.transparent
                                % [Tempo I]
  <bes ges>2 <des f,> |
  <ges, es> <bes des,>8. r16^\fermata \voiceOne f8. es16 |
  ges2. f8. es16 |
  ges2. f8. es16 | \oneVoice
  <ges bes,>2 r |
  <g bes,> r |
                                % [Quasi Cadenza]
  \setCadenza
  s2. r1*1/4 s2.
  r8 des16[^\( c bes] \once \override Beam.positions = #'(2.0 . 5.0)
  a[ c es ges a c es des c bes] \stemUp \once \override Beam.positions = #'(4.35 . 3.25)
  a[ c es \ottava #1 ges a c es des c bes]\)
  \revert Beam.positions
  a[^\( c es ges a c es des]\) \ottava #0
  s r^\fermata s
  \unsetCadenza \break
                                % [Coda]
  es,,,2 <ges es bes> |
  es <bes es ges bes>-> |
  es8 \ottava #1 <ges' bes es ges>-> <es ges bes es>-> \ottava #0 <bes es ges bes>->
  <ges bes es ges>-> <es ges bes es>-> <bes es ges bes>-> <c es ges c>-> |
  <des f bes des>2.-> r4 |
                                % [FINE]

}

upperSecondTwo = \context Staff \relative c'{
  \context Voice = "iii"

  s8*99 s1*11
                                % [Page 2]
  \voiceTwo
  <des as>4 <f des as> <f des as> <es bes> |
  \change Staff="bass" \stemUp <bes f>4 <des bes f> <des bes f> \change Staff="treble" \stemDown bes \stemNeutral \voiceTwo |
  r4 <bes ges> <bes ges> bes |
  r4 <bes ges> <bes ges> bes |
  r4 <es bes ges> <es a,> <es a,> |
  <es a,>	\change Staff="bass" \stemUp <bes f> <bes f> \bassChords <c ges> \stemNeutral \change Staff="treble" \bassChordsEnd |
  \voiceTwo
  s4 <f des as> <f des as> <f des as> |
  r <es c> <es c> <es c> |
  <as des,> <ges des> <ges des> <f des> |
  <es bes> <es bes> <d bes> <d bes> |
  s <ges es bes> <ges es bes> <ges es bes> |
  r <f d> <f d> <f d> |
  <bes es,> <as es> <as es> <ges es> |
  <f c> <f c> <e c> <e c> |
  s1*4 |
  <des g bes>4 <des g bes> <c g' bes> <c g' bes> |
  <c f bes> <c f bes> <c f as> <c f as> |
  <c f g> <c f g> <c f g> <c f g> |
  <c f g> <c f g> <c e g> <c e g> |
                                % [Più mosso agitato]
  r <c f as> <c f as> <c f as> |
  <c f as> <c f as> <c f as> <c f as> |
  <c f> <c f> <c f> <c f> |
  <bes f'> <bes f'> <c f a> <c f a> |
  <des f bes> <des f bes> <des f bes> <des f bes> |
  <des f bes> <des f bes> <des f bes> <des f bes> |
                                % [Page 3]
  <des f bes> <des f bes> <d f bes> <d f bes> |
  <es bes'> <es bes'> <f bes d> <f bes d> |
  s1*10
                                % [Tempo I]
  <bes des f>8. c16 <des f bes>4 <des f bes> <c f>8 bes |
  <a des f>8. bes16 <f bes des>4 <f bes des> <f bes des> |
  s1 |
  <f' bes des>4 <f bes des> <f bes des> <f bes des> |
  <es ges bes>8. f16 <ges bes es>4 <ges bes es> <f bes>8 es |
  <d ges bes>8. es16 <bes es ges>4 <bes es ges> <bes es ges> |
  s1*2 |
                                % [Page 4]
  s1*4 |
  s4 <des f bes> <des f bes> s |
  s4 <des bes f> <des bes f> <des bes f> |
  s4 <des f bes> <des f bes> s |
  s4 <des bes f> <des bes f> <des bes f> |
  s4 <ges bes es> <ges bes es> s |
  s4 <ges es bes> <ges es bes> <ges es bes> |
  s4 <ges bes es> <ges bes es> s |
  s4 <ges es bes> <ges es bes> <ges es bes> |
  s1*4 |
                                % [Page 5]
  s1*8 |
                                % [Tempo I]
  s1 s2. bes,,4 |
  r <bes ges> <bes ges> bes |
  r <bes ges> <bes ges> bes |
  s1*2
                                % [Quasi Cadenza]
  s8*32
                                % [Coda]
  s1*4
                                % [FINE]
}


lowerTwo = \context Staff \relative c{
  \context Voice = "ii"

                                % [Introduction]
  \setCadenza
  <bes bes,>8[ <c c,>] <des des,>2-> <c c,>8[ <bes bes,> <a a,> <bes bes,>] <f f,>2->^\fermata
  r8 <bes f'>16[\( es des] \once \override Beam.positions = #'(-3.0 . 0.2)
  c[ es ges a c es ges <f bes,> es des]\) %\once \override Beam.positions = #'(0.0 . 6.0)
  \stemDown c[_\( es ges \change Staff="treble" a c es ges <f bes,> es des]\)
  c[_\( es ges a c es ges <f bes,>]\)
  \change Staff="bass" \stemNeutral s r^\fermata s
  <des,,, ges,>8[ c] % |
  << { \setCadenza bes4 es2^> } \\ { \setCadenza es,2. } >> <f c'>2 r^\fermata
  <bes bes,>8[ <c c,>] <des des,>4-> ~ \tuplet 3/2 { <des des,>8[ <c c,> <bes bes,>] }
  \tuplet 3/2 { <a! a,!>8[ <bes bes,> <ges ges,>] } <f f,>2->^\fermata
  r8 <bes f'>16[\( es des] \once \override Beam.positions = #'(-3.0 . 0.2)
  c[ es ges a c es ges <f bes,> es des]\) % \once \override Beam.positions = #'(0.0 . 6.0)
  \stemDown c[_\( es ges \change Staff="treble" a c es ges <f bes,> es des]\)
  c[_\( es ges a c es ges <f bes,>]\)
  \change Staff="bass" \stemNeutral s r^\fermata s
  <c,,, ges>2 <c f,> r^\fermata
  \unsetCadenza
                                % [Larghetto]
  \tupletSpan 4 s8
  \acciaccatura { \stemUp es,8 \stemDown } bes'8 c des2_> c8 bes |
  a bes f4 ~ f8 f \acciaccatura { \stemUp as8 \stemDown } ges8 f |
  bes c des4 ~ \tuplet 3/2 { des8 es f as ges f } |
  f2._> f8 ges |
  f e es2_> d8 es |
  d des << { <g bes>4 <g bes> } \\ { c,2 } >> f,8 ges |
  f as! << { <ges' bes>4 <ges bes> } \\ { ges,2_> } >> es8 f |
  e ges << { <f' a>4 <f a> s } \\ { f,2_> ~ <f f,>4 } >> |
  \acciaccatura { \stemUp bes,8 \stemDown } bes'8 c des2_> c8 bes |
  a bes f4 ~ f8 f \acciaccatura { \stemUp as8 \stemDown } ges8 f |
  bes c des4 ~ \tuplet 3/2 { des8 es f } \acciaccatura { \stemUp f8 \stemDown } \tuplet 3/2 { as8 ges f } |
  f2._> <bes ges,>8. ges16 |
                                % [Page 2]
  \acciaccatura { \stemUp des,8 \stemDown } f'8 es des2 <ges es,>8. es16 |
  \acciaccatura { \stemUp bes,8 \stemDown } des'8 c bes2 << { des8. c16 } \\ { ges4 } >> |
  << { bes2 es4 des8. c16 } \\ { es,2. ges4 } >> |
  << { bes2 es4 des8. c16 } \\ { es,2. ges4 } >> |
  << { bes2 } \\ { es,2 } >> \stemUp f2 ~ |
  f4 \stemDown <bes bes,>2_> <as as,>4_> |
  <as des,>8( des \stemNeutral f2) ges8 as |
  as2( es4) r |
  f, ges2 as4 | \tieUp
  bes2 ~ <bes bes,> | \tieNeutral
  \stemDown <bes es,>8( es \stemNeutral ges2) as8 bes |
  bes2( f4) r |
  ges,4 as2 bes4 |
  c2 c |
  \stemDown <c f,>8 f \stemNeutral as2 bes8 c |
  des2. as8 c |
  es des des2 as8 c |
  es[ des] des[ c] \tuplet 3/2 { c8 bes as as g f } |
  e1-> |
  f |
  c-> ~ |
  c |
                                % [Più mosso agitato]
  f,8( c' f g as g f des') |
  c4-> r r2 |
  \acciaccatura { \stemUp f,,8 \stemDown } f'2-> \acciaccatura { \stemUp es,8 \stemDown } es'2-> |
  \acciaccatura { \stemUp des,8 \stemDown } des'2-> \acciaccatura { \stemUp c,8 \stemDown } c'2-> |
  \stemUp bes,8( f' bes c \stemDown des c bes ges') | \stemNeutral
  f4-> r r2 |
                                % [Page 3]
  \acciaccatura { \stemUp <bes, bes,>8 \stemDown } <bes bes'>2-> \acciaccatura { \stemUp <as as,>8 \stemDown } <as as'>2-> |
  \acciaccatura { \stemUp <ges ges,>8 \stemDown } <ges ges'>2-> \acciaccatura { \stemUp <f f,>8 \stemDown } <f f'>2-> |
  \stemUp <es es,>8 <bes' bes,> <es es,> <f f,> \stemDown <ges ges,> <f f,> <es es,> <ces' ces,> | \stemNeutral
  <bes bes,>4-> r r <es, es,>8 <des des,> |
  <c c,>4 <es' es,>-> ~ <es es,>8 <c c,> <a a,> <ges ges,> |
  <es es,>4.-> <des des,>8-> <c c,>4-> r |
  <c c,>4 <ges'' ges,>-> ~ <ges ges,>8 <es es,> <c c,> <a a,> |
  <es es,>4.-> <des des,>8-> <c c,>4-> r |
  <c c,>4 \clef violin <a'' a,>-> ~ <a a,>8 <ges ges,> <c c,> <a a,> |
  <ges ges,> \clef bass <es es,> <c c,> <a a,> <ges ges,> <es es,> <c c,>-> <bes bes,>-> |
  <a a,>4-> r r <ges ges,> |
  <f f,>-> r r2^\fermata |
                                % [Tempo I]
  <bes bes,>4 <f' bes des f> <f bes des f> <f bes des f> |
  <f bes des f> <f bes des> <f bes des> <f bes des> |
  <bes, bes,> <f' bes des f> <f bes des f> <f bes des f> |
  <f bes des f> <f bes des f> <f bes des f> <f bes des f> |
  <bes, bes,> <ges' bes es ges> <ges bes es ges> <ges bes es ges> |
  <ges bes es ges> <ges bes es ges> <ges bes es ges> <ges bes es ges> |
  <bes, bes,> <ges' bes es ges> <ges bes es ges> <ges bes es ges> |
  <ges bes es ges> <ges bes es ges> <ges bes es ges> <ges bes es ges> |
                                % [Page 4]
  <as, as,>4-> <as' c ges'> <bes, bes,>-> <bes' des ges> |
  <c, c,>-> <as' es' ges> <des, des,>-> <bes' es ges> |
  <es, es,>-> <as c ges'> <f f,>-> <f ces' d f> |
  <ges ges,>-> <ges bes es> <a a,> <f c' es a>\arpeggio |
  <bes, bes,> <f' bes des f> <f bes des f> <f bes des f> |
  <bes f des bes>8. <c c,>16 <des des,>2-> <c f, c>8 <bes bes,> |
  <bes, bes,>4 <f' bes des f> <f bes des f> <f bes des f> |
  <bes f des bes>8. <c c,>16 <des des,>2-> <c f, c>8 <bes bes,> |
  <bes, bes,>4 <ges' bes es ges> <ges bes es ges> <ges bes es ges> |
  <es es'>8. <f f'>16 <ges ges'>2-> <f f'>8 <es es'> |
  <bes bes,>4 <ges' bes es ges> <ges bes es ges> <ges bes es ges> |
  <es es'>8. <f f'>16 <ges ges'>2-> <f f'>8 <es es'> |
  <a, a,>4-> \clef violin <a' c f a> \clef bass <bes, bes,>-> \clef violin <bes' des f bes> |
  \clef bass <c, c,>-> \clef violin <c' f a c> \clef bass <des, des,>-> \clef violin <des' f bes des> |
  \clef bass <es, es,>-> <ges bes es ges> <f f,>-> <a c f> |
  <ges, ges,>-> <ges' ges,>-> ~ \tuplet 3/2 { <ges ges,>8 <f f,> <es es,> <des des,> <c c,> <bes bes,> } |
                                % [Page 5]
  <a a,>4-> \clef violin <a' c f a> \clef bass <bes, bes,>-> \clef violin <bes' des f bes> |
  \clef bass <c, c,>-> \clef violin <c' es as c> \clef bass <des, des,>-> \clef violin <des' f as des> |
  \clef bass <e, e,>8 \clef violin <e' g bes des> <e g bes c>4.-> <e g bes des>8[ <e g bes c> <e g bes des>] |
  <es! ges! a c> <es ges a des> <es ges a c>4-> ~ \tuplet 3/2 { <es ges a c>8 <es ges a des> <es ges a es'>
                                                                <es ges a es'>8 <es ges a d> <es f a f'> } |
  \once \override TupletBracket.transparent = ##t
  \clef bass <des, des,>4 <f bes des f>2-> <des des,>4 |
  <es es,> <ges bes es ges>2-> r4 |
  <f f,>8 \clef violin <f' bes des ges>[ <f bes des f> <f bes es>] <f bes des> <f bes des ges> <f bes des f> <f bes es> |
                                         <f bes des> \clef bass <f, bes des ges>[ <f bes des f> <f bes es>] <f bes des> <f ges'>-> <f f'>-> <f es'>-> |
                                % [Tempo I]
  <ges des'>2 <as des,> |
  <es bes'> <bes f'>8. r16^\fermata << { des8. c16 } \\ { ges4 } >> |
  << { bes2 es4 des8. c16 } \\ { es,2. ges4 } >> |
  << { bes2 es4 des8. c16 } \\ { es,2. ges4 } >> |
  <es bes'>2 r |
  <e des'> r |
                                % [Quasi Cadenza]
  \setCadenza
  \acciaccatura { f,8 } <bes bes'>8[ <c c'>] <des des'>2-> <c c'>8[ <bes bes'>]
  \tuplet 3/2 { <a a'>8[ <bes bes'> <ges ges'>] } <f f'>2->
  r8 <bes' f'>16[^\( es des] \once \override Beam.positions = #'(-3.0 . 0.2)
  c[ es ges a c es ges <f bes,> es des] \once \override Beam.positions = #'(0.0 . 6.0)
  c[ es ges\) \change Staff="treble" \stemDown \override PhrasingSlur.positions = #'(-8.0 . -3.0)
  a_\( c es ges <f bes,> es des] c[ es ges a c es ges <f bes,>]\)
  \change Staff="bass" \stemNeutral s r^\fermata s
  \unsetCadenza
                                % [Coda]
  <c,, bes ges>2 <es, es,> |
  <ges bes c> <es es,>-> |
  <ges bes c>8 <es bes ges es>-> <es bes ges es>-> <es bes ges es>->
  <es bes ges es>-> <es bes ges es>-> <es bes ges es>-> <es bes ges es>-> |
  <bes f des bes>2.-> r4 |
                                % [FINE]
}

secondNocturne = \context PianoStaff
  <<
    \set PianoStaff.instrumentName = \markup { \number { 2 } \bold \larger \super "e" }
    \context Staff = "treble" <<
      \globalTwo
      \clef violin
      \upperTwo
      \upperSecondTwo
      \dynamicsTwo
    >>
    \context Staff = "bass" <<
      \globalTwo
      \clef bass
      \lowerTwo
      \pedallingTwo
    >>
  >>
