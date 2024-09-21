\version "2.23.14"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Chaconne"
  %subtitle = "foo"
  %piece = "bar"
  composer = \markup { \caps { Johann Pachelbel } }
  opus = "P.43"
  %copyright = \markup {
  %  \pad-to-box #'(0 . 0) #'(0 . 3)
  %  \line {
  %    "Typeset in 2022 by"
  %    \with-url "https://github.com/mbollmann/lilypond-scores/" {
  %      "Marcel Bollmann."
  %    }
  %    "Released under"
  %    \with-url "https://creativecommons.org/licenses/by/4.0/" {
  %      "CC-BY 4.0."
  %    }
  %  }
  %}
  tagline = \markup {
    \pad-to-box #'(0 . 0) #'(0 . 3)
    \line {
      "Typeset via"
      \with-color "dodgerblue" {
        \with-url "https://www.lilypond.org/" {
          #(format #f "LilyPond ~a."
            (lilypond-version)
            )
        }
      }
      "Source files available from"
      \with-color "dodgerblue" {
        \with-url "https://github.com/mbollmann/lilypond-scores/" {
          "github.com/mbollmann/lilypond-scores."
        }
      }
    }
  }
}

\layout {
  \context {
    \Score
    \override SpacingSpanner.common-shortest-duration =
      #(ly:make-moment 1/4)
  }
  \context {
    \PianoStaff
    \accepts "Lyrics"
    \consists "Span_stem_engraver"
  }
  \context {
    \Lyrics
    \consists "Bar_engraver"
  }
}

global = {
  \key f \minor
  \time 3/4
}

toTreble = { \change Staff="upper" \voiceTwo }
toBass = { \change Staff="lower" \voiceOne }

upper = {
  \global
  \clef treble
  \tempo \markup { "Andante" }

  \relative c' {
    % Theme
    f8( g as4.) as8 |
    g8( g') c,4.-> es,8 |
    f4 ~ f16 f( g as g8.\prall f16) |
    e4. c'8 e,4 |
    f8( g as4.) as8 |
    g8( g') c,4.-> c8 |
    f4 ~ \stemUp f16 f,( g as g8.\prall f16) |
    c'8-. f, ~ f16 e( f  g f8.\prall e16) \stemNeutral |
    % Var. 1
    f4 as \voiceOne bes |
    c16.-! c32( bes16 as g4 as) |
    bes16.-! bes32( as16 g f4 g) \oneVoice |
    << { as16( g as bes as4.) g8 } \\ { f2 e4 } >> |
    f4 as \voiceOne bes |
    c16.-! c32( bes16 as g4 as) |
    bes16.-! bes32( as16 g f4 g) \oneVoice |
    << { as16( g as bes as4.) g8 } \\ { f2 e4 } >> |
    % Var. 2
    f4 c'-- f-- |
    << { g2. } \\ { r4 g,4-- c-- } >> |
    % 2 bars
    << { f2. ~ | f4. g8 e8.\trill f16 } \\ { r4 f,4 g | as4 g2 } >> |
    << { f'4 c-- f-- } \\ { as,4 r r } >> |
    << { g'2. } \\ { r4 g,4-- c-- } >> |
    % 2 bars
    << { f2. ~ | f4. g8 e8.\trill f16 } \\ { r4 f,4 g | as4 g2 } >> |
    % Var. 3
    \voiceOne f'8 c des2 ~ |
    des8 bes c2 ~ |
    c8 as bes2 |
    as8( bes16 as) g4.\trill( f8) |
    f8 c' des2 ~ |
    des8 bes c2 ~ |
    c8 as bes2 |
    as8( bes16 as) g4.\trill( f8) \oneVoice |
    % Var. 4
    f8 c( f g as bes |
    c8) g( c d es c |
    f8) e( f g as bes |
    c8 bes16 as g8) bes( as8.\prall g16 |
    as8) c,,[( f g as bes] |
    c8) g( c d es c |
    f8) e( f g as bes |
    c8 bes16 as g8) bes( as8.\prall g16 |
    % Var. 5
    as8 g16 as f8) \voiceOne f,16([ g] as8) bes16( as |
    g8) \oneVoice es'16[( f] g8) f16( g es8) d16( c |
    f8) f,16([ g] as8) as16( g f8) g16( f |
    e16 g e c) f( g f g f g f e |
    f8) as'16[( g] f8) f,16[( g] \voiceOne as8) bes16( as |
    g8) \oneVoice es'16[( f] g8) f16( g es8) d16( c |
    f8) f,16([ g] as8) as16( g f8) g16( f |
    e16 g e c) f( g f g f g f e) |
    % Var. 6
    f16( g as bes as bes as bes as g as bes |
    g16) g( as bes c es, f g c,) c'([ des es] |
    f16 e f g f) f,( g as g as g f) |
    e16( g e c) f( c f c') es,( bes' as g) |
    as16( g as bes c) c( d e f f, as f |
    c'16) bes( c d c g c d es c es g |
    f16) c( des es des as bes c bes f' g f |
    e16) bes( c g as c f as, g f' e bes) |
    % Var. 7
    << { f'4 des2-> ~ | des4 c2-> ~ | c4 bes2-> | as4 g2 } \\
       { as4 as2 | g2. | f2. ~ | f2 e4 } >> |
    << { as4 des2-> ~ | des4 c2-> ~ | c4 bes2-> | as4 g2 } \\
       { f4 as2 | g2. | f2. ~ | f2 e4 } >> |
    % Var. 8
    f8-.( e-. f-. g-. as-. as-. |
    g8-. as-. g-. f-. g-. as-. |
    f4) g8( as g f |
    e8 g c, f f e) |
    f8-.( e-. f-. g-. as-. as-. |
    g8-. as-. g-. f-. g-. as-. |
    f4) g8( as g f |
    e8 g c, f f e) |
    % Var. 9
    \voiceOne f8 c'16.( bes32 as16. g32 f8 c'8.->) c16-. |
    <c g es>4 r r |
    r8 c16.( bes32 as16. g32 f8 bes8.->) f'16-. |
    e4 r r |
    <f c>4 \oneVoice r r |
    r8 g16.( f32 es16. d32 c8 g'8.->) g16-. |
    <f des as>4 r r16 << { as,16_( g f | \voiceTwo e4) } \\ { s8. | \voiceOne r16 g( as bes) } >>
    \voiceOne as8. bes16 g16 c8-- bes16 |
    % Var. 10
    << { as16 c bes des } \\ f,8 >> \oneVoice as16 c g bes as c f, d' |
    g,16 es' as, f' bes, g' bes, g' c, as' bes, g' |
    as,16 f' g, e' as, f' as, f' bes, g' as, f' |
    g,16 e' as, f' g, e' f, d' g, e' bes g' |
    as,16 g' f e f c bes c as c as f |
    g16 c g c es, g es g c, c' g bes |
    f16 f'[( g as] g as g as g as g f |
    e16) g,[^( as bes] as bes as bes as bes as g |
    % Var. 11
    \voiceOne as4) \oneVoice r4 r |
    e16 c' g c c, c' g c e, bes' as g |
    \voiceOne as4 \oneVoice r4 r |
    e16 c' g c c, c' g c e, bes' as g |
    \voiceOne as4 \oneVoice r4 r |
    e16 c' g c c, c' g c e, bes' as g |
    \voiceOne r16 c( bes as g as bes c as8.)\prallprall g16 |
    % Var. 12
    r8 c( bes c des4) |
    r8 bes( as bes c4) ~ |
    c8[ c8( f as,]) bes8.\prall bes16( |
    c4.) g8 ~ <c g>4 |
    r8 c( bes c des4) |
    r8 bes( as bes c4) ~ |
    c8[ c8( f as,]) bes8.\prall bes16( |
    c4.) g8 ~ <c g>4 |
    % Var. 13
    c8 des c bes c d |
    es8 f g bes, c bes |
    as8 f' e f g f |
    e8 g, as bes g c |
    c8 des c bes c d |
    es8 f g bes, c bes |
    as8 f' e f g f |
    e8 g, as bes g c |
    % Var. 14
    as8.\( g16 as8. bes16 c8. d16 |
    es8. f16 g8. f16 g8. as16 |
    f8. e16 f8. g16 as8. bes16 |
    c8.\) c16 r c r c r c r c |
    r16 as r bes r c r bes r c r as |
    r16 bes r c r bes r as r g r as |
    r16 f r e r f r as r g r f |
    r16 e r f r e r g r f r e |
    % Var. 15
    f8 c16( bes as8) \toBass as,16([ bes] c8) c16( des |
    \toTreble\voiceOne es8) es16( f g8) c16( d es8 d16 c |
    f8) f16( e f8) g16( as g8 f16 g |
    e8) e16( d c8) c16( d e8) d16( e |
    f8) as,16[ g] f8 f16 g as8 bes16 as |
    g8 g16 f es8 es16 f g8 as16 g |
    f8 f16 g as8 as16 g f8 bes |
    \oneVoice e,16 c' f, c' e, c' d, c' e, bes' as g |
    % Var. 16
    as16-. g-. as-. bes-. c-. c,-. f-. c-. as'-. f-. as-. c-. |
    g16-. c-. g-. c-. es,-. g-. es-. g-. c,-. c'-. g-. c-. |
    f,16 as g as g as g as g as g f |
    e16 f e f e f e f e f g e |
    f16 as g f e bes' as g as g as bes |
    c16 bes c des c des c des es c des es |
    \voiceOne as,16-> g as bes as-> g as bes as-> g as bes |
    as16 g as bes as4.\trill g8 |
    % Var. 17
    f4 \oneVoice r r |
    R1*3/4 |
    << { R1*3/4 | r4 bes4 bes ~ | bes4 as2 | g4 c c ~ | c4 bes2 | as4 as4.\trill( g8) | } \\ 
       { r4 f4 f ~ | f2 e4 ~ e8 c f4 f ~ | f4 es2 | des4 des des | c2 bes4 | } >>
    % Var. 18
    << as'4 \\ c,4 >> s2 |
    << { R1*3/4 | r4 bes' bes } \\ { r4 es, es | es4 des2 } >> |
    << { r4 f' f | f4-> e8.( f16 g4) } \\ { bes,4-> as2 | g2. } >> |
    << { r4 f' g ~ | g8 c, f2 ~ | f4 f4.\trill( e8) } \\
       { c2 ~ c8 bes | as2. | g2 bes4 } >> |
    % Var. 19
    \voiceOne f'16( c bes c as c bes c as c as f |
    c'4) \oneVoice r4 r |
    r16 c16( bes c as bes g as f c' bes16.) c32-. |
    \voiceOne c4 \oneVoice r4 r |
    r16 c16( d e f as, bes c f, f' e f |
    \voiceOne g4) \oneVoice r4 r |
    r16 g16( f es f) f,( g as g as g f) |
    e4 ~ e16 c f8 ~ f16 g f e |
    % Var. 20
    r16 c8-- f-- c-- f-- c-- f16-- |
    r16 c8-- g'-- c,-- g'-- c,-- g'16-- |
    r16 c,8 f c f bes,[ f'16] |
    r16 c8 e c e c e16 |
    r16 c8 f c f c f16 |
    r16 c8 g' c, g' c, g'16  |
    r16 f8 as f as f[ bes16] |
    r16 e,8[ c'] f,[ c'] e,[ c'16] |
    % Var. 21
    << as8 \\ f8 >> \toBass\voiceOne r16 c8( \toTreble\voiceOne f8 as c f16) |
    \toBass\voiceOne r16 g,,8( c \toTreble\voiceOne es g c es16) |
    \toBass\voiceOne r16 f,, r e r f r as r g r f |
    r16 e8( g c \toTreble\voiceOne e  g c16) |
    r16 c8 as c as c as16 |
    r16 c8 g c g c g16 |
    r16 c r f, r c' r f, r bes r f |
    r16 as r f r g r f r g r e |
    % Var. 22
    \oneVoice
    f8( g as4.) as8 |
    g8( g') c,4.-> es,8 |
    f4 ~ f16 f( g as g8.\prall f16) |
    e4. c'8 e,4 |
    f8( g as4.) as8 |
    g8( g') c,4.-> c8 |
    f4 ~ \stemUp f16 f,( g as g8.\prall f16) |
    c'8-. f, ~ f16 e( f  g f8.\prall e16) \stemNeutral |
    << f2. \\ {  <c as>2. } >> |
  }

  %\bar "|."
}

lowerOne = {
  \global
  \clef bass

  \relative c' {
    % Theme
    as4. bes8 c4 ~ |
    c4. g8 c4 ~ |
    c8 as bes2 |
    r8 c g2 |
    as8( bes c des c4) ~ |
    c4. g8 c4 ~ |
    c8 as bes2 |
    as4 g ~ <g bes> |
    % Var. 1
    \repeat unfold 2 {
      as4 c \toTreble des |
      es4 \toBass bes c |
      \toTreble des4 \toBass as bes |
      c2. |
    }
    % Var. 2
    s2. |
    s2. |
    r4 as4 \afterGrace bes4\trill( { as16[ bes] } |
    c2.) |
    s2. |
    s2. |
    r4 as4 \afterGrace bes4\trill( { as16[ bes] } |
    c2.) |
    % Var. 3
    \toTreble as'2 bes4 |
    g2 as4 |
    f2 g4 |
    f4 e2 |
    f4 r bes |
    g2 as4 |
    f2 g4 |
    f4 e2 \toBass |
    % Var. 4
    as,2. |
    g2. |
    as4. g8 f4 ~ |
    \voiceFour f2 e4 |
    \voiceOne r4 as2 |
    g2. |
    as4. g8 f4 ~ |
    \voiceFour f2 e4 \voiceOne |
    % Var. 5
    f8 g as bes c \toTreble des |
    es8 \toBass g, bes g c g |
    as8 g f g as bes |
    c8 g as bes as g |
    f8 g as bes c \toTreble des |
    es8 \toBass g, bes g c g |
    as8 g f g as bes |
    c8 g as bes as g |
    % Var. 6
    as8 bes c4 des ~ |
    des4 c2 ~ |
    c2 bes4 ~ |
    bes4 as g |
    f8 g as2 |
    g2. |
    as4 f2 |
    g4 c2 |
    % Var. 7
    r8 f,16( e f g f g f g f g) |
    r8 es16( des es f es f es f es f) |
    r8 des16( c des es des es des es des es) |
    c16( des c bes \oneVoice c) c'( bes c g c bes c) \voiceOne |
    r8 f,16( e f g f g f g f g) |
    r8 es16( des es f es f es f es f) |
    r8 des16( c des es des es des es des es) |
    c16( des c bes \oneVoice c) c'( bes c g c bes c) |
    % Var. 8
    \repeat unfold 2 {
      as16\( c g c as c e, c' f, c' f, c' |
      es,16 c' f, c' es, c' des, c' es, c' c, c'\) |
      des,16 c'\( bes as bes c bes c des, bes' des, bes'\) |
      c,16 bes'\( as g as g as bes c, bes' as g\) |
    }
    % Var. 9
    \toTreble as4 r r |
    r8 g'16.( f32 es16. d32 c8 g'8.->) g16-. |
    <f des as>4 r r |
    r8 g16.( f32 e16. d32 c8 g'8.->) g16-. |
    \toBass r8 c,16.( bes32 as16. g32 f8 c'8.->) c16-. |
    <c g>4 r r |
    r8 c16.( bes32 as16. g32 f8 bes4) |
    c4 \toTreble r16 es f8 ~ f es \toBass |
    % Var. 10
    s2.*8 |
    % Var. 11
    \toTreble <f c>4 s2 |
    s2. |
    <f c>4 s2 |
    s2. |
    <f c>4 s2 |
    s2. |
    f2 e4 |
    % Var. 12
    as2 ~ as8 bes16( as |
    g2) ~ g8 as16( g |
    f2.) ~ |
    f8 f e4 ~ e |
    as2 ~ as8 bes16( as |
    g2) ~ g8 as16( g |
    f2.) ~ |
    f8 f e4 ~ e |
    % Var. 13
    as8 bes as g as f |
    g8 as bes g as g |
    f8 as g as bes as |
    g8 e f e16 d e4 |
    as8 bes as g as f |
    g8 as bes g as g |
    f8 as g as bes as |
    g8 e f e16 d e4 |
    % Var. 14
    f8 e f g as bes |
    c8 des es des es c |
    des8 c des es f des |
    c8 d e d e c |
    f8\( g as g as f |
    g8 as g f es c |
    des8 c des c bes des |
    c8 des c bes as g\) |
    % Var. 15
    as8 as16 g f8 \toBass\voiceTwo f,16[ g] as8 as16 bes |
    \toTreble c8 c16 d es8 es16 f g8 es |
    as8 as16 g as8 f8 bes as16 bes |
    c8 g16 f e8 e16 f g8 f16 g |
    as8 \toBass c,16[ bes] as8 as16 bes c8 \toTreble des8 |
    es8 \toBass bes16 as g8 g16 as bes8 \toTreble c8 |
    des8 \toBass as16 g f8 f16 g as8 g16 f |
    g8 as g f g c |
    % Var. 16
    s2.*6 |
    \toTreble f4 f f ~ |
    f2 e4 |
    % Var. 17
    f4 \toBass as,4-- as-- |
    g4 c2 ~ |
    c4 bes f8 g |
    as4( g8 f g4) |
    s2.*4 |
    % Var. 18
    s4 << { c4 c | bes2. | f2. | c'2. } \\
          { \voiceThree as4 as | as4 g2 | s2. | s2. } >> |
    s2.*4 |
    % Var. 19
    \toTreble as'8 s s2 |
    g4 s2 |
    s2. |
    e4 s2 |
    s2. |
    c'4 s2 |
    s2 \toBass bes,4 ~ |
    bes16 bes as g as8. f16 g8 bes |
    % Var. 20
    s2.*8 |
    % Var. 21
    \voiceTwo s8 as8 c \toTreble f as c |
    \toBass\voiceTwo s8 g,8 c \toTreble es g c |
    s2. |
    \toBass\voiceTwo s8 e,,8 g c \toTreble e g |
    f8 as f as f as |
    es8 g es g es g |
    des8 f des f des f |
    c8 f c f c e |
    % Var. 22
    \toBass
    as,4. bes8 c4 ~ |
    c4. g8 c4 ~ |
    c8 as bes2 |
    r8 c g2 |
    as8( bes c des c4) ~ |
    c4. g8 c4 ~ |
    c8 as bes2 |
    as4 g ~ <g bes> |
    f2. |
  }
}

lowerTwo = {
  \relative c {
    % Theme
    \repeat unfold 2 { f2. | es2. | des2. | c2. | }
    % Var. 1
    \repeat unfold 2 { f2. | es2. | des2. | c2. | }
    % Var. 2
    \repeat unfold 2 { f2. | es2. | des2. | c2. | }
    % Var. 3
    \repeat unfold 2 {
      \oneVoice
      f4 ~ f8 f( es\prall des) |
      es4 ~ es8 es( des\prall c) |
      des4 ~ des8 des( c\prall bes) |
      c2. |
    } \voiceTwo
    % Var. 4
    \repeat unfold 2 {
      f2. |
      es2. |
      des2. |
      << { g2. } \\ { c,2. } >> |
    }
    % Var. 5
    \repeat unfold 2 {
      f,4 f'2 |
      es2. |
      des2. |
      c2. |
    }
    % Var. 6
    f2. |
    es2. |
    des2. |
    c2. |
    f,4 f'2 |
    es2. |
    des2. |
    c2. |
    % Var. 7
    <f c f,>2. |
    <es es,>2. |
    <des des,>2. |
    <c c,>4 s2 |
    <f c f,>2. |
    <es es,>2. |
    <des des,>2. |
    <c c,>4 s2 |
    % Var. 8
    s2.*8 |
    % Var. 9
    \oneVoice <f c f,>4 r r |
    <es es,>4 r r |
    <des des,>4 r r |
    <c c,>4 r r |
    \voiceTwo <f c f,>4 r r |
    <es es,>4 r r |
    <des des,>4 r r |
    c4 r r |
    % Var. 10
    \oneVoice 
    <f f,>2.--\( |
    <es es,>4.-- <des des,>8-- <c c,>4-- |
    <des des,>4.-- <c c,>8-- <bes bes,>4-- |
    <c c,>2.--\) |
    << c'4 \\ f,4 >> r4 r |
    << c'4 \\ es,4 >> r4 r |
    << c'4 \\ des,4 >> r4 << bes'4 \\ des,4 >> |
    << c'4 \\ c,4 >> r4 r |
    % Var. 11
    f,16 f' g, f' as, f' g, f' as, f' f, f' |
    c4 r r |
    f,16 f' g, f' as, f' g, f' as, f' f, f' |
    c4 r r |
    f,16 f' g, f' as, f' g, f' as, f' f, f' |
    c4 r r |
    des8 c bes des c[ c,] |
    % Var. 12
    f4. f'8 bes,4 |
    es2 as,4 |
    des2. |
    c2. |
    f,4. f'8 bes,4 |
    es2 as,4 |
    des2. |
    c2. |
    % Var. 13
    <f f,>2. |
    <es es,>2 <c c,>4 |
    <des des,>2 <bes bes,>4 |
    <c c,>2. |
    <f f,>2. |
    <es es,>2 <c c,>4 |
    <des des,>2 <bes bes,>4 |
    <c c,>2. |
    % Var. 14
    <f f,>2. |
    <es es,>2. |
    <des des,>2. |
    <c c,>2. |
    s2.*4 |
    % Var. 15
    \voiceTwo
    <f f,>2. |
    <es es,>2. |
    \oneVoice
    <des des,>2. |
    <c c,>2. |
    \voiceTwo
    <f f,>2. |
    <es es,>2. |
    <des des,>2. |
    <c c,>2. |
    % Var. 16
    \oneVoice
    f4 as f |
    es c es |
    des bes des |
    c <c c'> <bes bes'> |
    <as as'> <g g'> <f f'> |
    <es es'> <des des'> <c c'> |
    <des des'> <c c'> <bes bes'> |
    <c c'> <c c,>2 |
    % Var. 17
    \ottava #-1 f,4 \ottava #0 \voiceTwo r4 f'' ~ |
    f4 es-- es-- |
    des2. |
    c2. |
    \oneVoice f2. |
    c2 c'4 |
    f,4( g f8 es) |
    as4 es2 |
    % Var. 18
    \voiceTwo as,4.( bes8 c as) |
    es'4.( f8 g es) |
    bes4.( c8 des bes) |
    f'4.( g8 as f) |
    \oneVoice c4 c' bes |
    as4.( g16 f e4) |
    f4.( es8 des c) |
    bes4 c c, |
    % Var. 19
    f4 r r |
    es'16( g f g es g f g es g es c) |
    << f4 \\ des4 >> r4 r |
    c16( g' f g e f d e c c' bes16.) as32-. |
    << as4 \\ f4 >> r4 r |
    es16( g as bes c es, f g c, es des c) |
    << f4 \\ des4 >> r4 \voiceTwo des4 |
    c2. |
    % Var. 20
    \oneVoice
    f8-. as-. f-. as-. f-. as-. |
    es8-. g-. es-. g-. es-. g-. |
    des8 as' des, as' des,[ f] |
    c8 g' c, g' c, g' |
    f8 as f as f as |
    es8 g es g es g |
    des8 f des f des f |
    c8[ g'] c,[ as'] c,[ g'] |
    % Var. 21
    \voiceTwo
    <f f,>2. |
    <es es,>2. |
    <des des,>8 <c c,> <des des,> <c c,> <bes bes,> <des des,> |
    <c c,>2. |
    s2.*4 |
    % Var. 22
    \repeat unfold 2 { f2. | es2. | des2. | c2. | }
    r4 f,2 |
  }

  %\bar "|."
}

dynamics = {
  % Theme
  s2.\p | s2.*3 |
  s2.\< | s4 s2\! |
  s2. |
  s8 s8\> s4 s8. s16\! |
  % Var. 1
  \repeat unfold 2 {
    s4\< s s8 s\! |
    s8 s\> s4 s\! |
    s8.\< s16\! s2 |
    s8 s\> s4. s8\! |
  }
  % Var. 2
  s4 s2\mf |
  s2.*7 |
  % Var. 3
  s4 s8\> s4 s8\! |
  s2.*6 |
  s4 s4.\> s8\! |
  % Var. 4
  s4\p s2 |
  s8 s\< s2 |
  s2. |
  s4\! s4 s4\> |
  s8\! s\p s2 |
  s8 s\< s2 |
  s2. |
  s4\!\sf s4 s4\> |
  % Var. 5
  s4\p s2 |
  s2.*7 |
  % Var. 6
  s4\cresc s2 |
  s2.*3 |
  s2 s4\!\mf |
  s2.*3 |
  % Var. 7
  s4\f s2 |
  s2.*6 |
  s4. s4.\> |
  % Var. 8
  s2.\!\p |
  s2.*6 |
  s2 s4\< |
  % Var. 9
  s4\f s2 |
  s2.*6 |
  s4 s2\> |
  % Var. 10
  s4\!\p s2 |
  s8 s8\< s8. s16\! s s\> s8 |
  s8\! s\< s4 s8 s8\! |
  s2 s4\> |
  s16 s\! s8 s2 |
  s2. |
  s8 s\< s4 s\! |
  s4. s4.\> |
  % Var. 11
  s4\!\pp s2 |
  s2.*5 |
  s2.\< |
  % Var. 12
  s2.\!\mf |
  s2 s8 s\< |
  s4. s4.\! |
  s2. |
  s2. |
  s2 s8 s\< |
  s4. s4.\! |
  s2. |
  % Var. 13
  s2.\p |
  s2. |
  s8 s8\< s2 |
  s8\! s\> s4 s\! |
  s4 s2\cresc |
  s2.*3 |
  % Var. 14
  s2.\f |
  s2. |
  s4. s\< |
  s4 s2\! |
  s2.*4 |
  % Var. 15
  s2.\f |
  s2.*6 |
  s4 s2\> |
  % Var. 16
  s2.\!\p |
  s2.*2 |
  s16\< s8. s2 |
  s4\! s8 s\< s4 |
  s4 s\! s |
  s4\mf s2\< |
  s8 s\! s8\f s\> s4 |
  % Var. 17
  s4 s4\p s4 |
  s2.*3 |
  s4 s2\cresc |
  s2.*3 |
  % Var. 18
  s4 s2\mf |
  s2.*2 |
  s2 s4\< |
  s2 s4\! |
  s2.*2 |
  s4\> s4. s8\! |
  % Var. 19
  s2.\mf |
  s2.*3 |
  s16 s8.\f s2 |
  s2.*2 |
  s8 s\> s2 |
  % Var. 20
  s2.\!\pp |
  s2.*6 |
  s16 s8.\< s2 |
  % Var. 21
  s4\f s2 |
  s2. |
  s2.\mf |
  s4\f s2 |
  s2. |
  s2.\dim |
  s2. |
  s2 s8. s16\! |
  % Var. 22
  s4\p s2 |
  s2.*8 |
}

divisions = {
  \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
  % Theme
  s2.*8 \section
  % Var. 1
  \mark \default
  s2.*8 \section
  % Var. 2
  \mark \default
  s2.*8 \section
  % Var. 3
  \mark \default
  s2.*8 \section
  % Var. 4
  \mark \default
  s2.*8 \section
  % Var. 5
  \mark \default
  s2.*8 \section
  % Var. 6
  \mark \default
  s2.*8 \section
  % Var. 7
  \mark \default
  s2.*8 \section
  % Var. 8
  \mark \default
  s2.*8 \section
  % Var. 9
  \mark \default
  s2.*8 \section
  % Var. 10
  \mark \default
  s2.*8 \section
  % Var. 11
  \mark \default
  s2.*7 \section
  % Var. 12
  \mark \default
  s2.*8 \section
  % Var. 13
  \mark \default
  s2.*8 \section
  % Var. 14
  \mark \default
  s2.*8 \section
  % Var. 15
  \mark \default
  s2.*8 \section
  % Var. 16
  \mark \default
  s2.*8 \section
  % Var. 17
  \mark \default
  s2.*8 \section
  % Var. 18
  \mark \default
  s2.*8 \section
  % Var. 19
  \mark \default
  s2.*8 \section
  % Var. 20
  \mark \default
  s2.*8 \section
  % Var. 21
  \mark \default
  s2.*8 \section
  % Var. 22 – Theme
  \mark \default
  s2.*9 \fine
}

expressive = {
  s2. | %s4 s8^\markup { \italic "perdendosi" }
}

music = \new PianoStaff \with {
    %instrumentName = \markup { \number {41} \fontsize #2 \bold "/" \number 1 }
    %connectArpeggios = ##t
  } <<
    \accidentalStyle piano
    \new Staff = "upper" <<
      \expressive
      \divisions
      \upper
    >>
    \new Dynamics { \dynamics }
    \new Staff = "lower" <<
      \divisions
      \new Voice = "A" { \voiceOne \lowerOne }
      \new Voice = "B" { \voiceTwo \lowerTwo }
    >>
  >>

