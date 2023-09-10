\version "2.23.14"

#(set-default-paper-size "a4")
#(set-global-staff-size 18)
#(ly:set-option 'point-and-click #f)

\header {
  title = "Mazurka"
  composer = \markup { \caps { Sergei Bortkiewicz } }
  opus = "Op.12, No.1"
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

\paper {
  %ragged-last-bottom = ##f
  top-margin = 1\cm
  bottom-margin = 1.5\cm
  footnote-separator-markup = \markup \null
  markup-system-spacing.padding = #2.0
  system-system-spacing.basic-distance = #14
  staff-staff-spacing.basic-distance = #8
  staff-staff-spacing.padding = #2.0
  scoreTitleMarkup = \markup {
    \fill-line {
      \null
      \fontsize #2 \bold \fromproperty #'header:piece
      \fromproperty #'header:opus
    }
  }
}

\layout {
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
  \key e \minor
  \time 3/4
}

fromBass = {
  \tag #'changestaff { \voiceOne }
}
fromBassEnd = {
  \tag #'changestaff { \oneVoice }
}
toTreble = {
  \tag #'changeclef { \clef treble }
  \tag #'changestaff { \change Staff="upper" \voiceTwo }
}
toBass = {
  \tag #'changeclef { \clef bass }
  \tag #'changestaff { \change Staff="lower" \oneVoice }
}

upperA = {
  \global
  \clef treble
  \tempo \markup { "Lento ma non troppo" }

  \relative c''' {
    r4 \fromBass g( e) \fromBassEnd |
    r4 \fromBass g8.( fis16 e4) \fromBassEnd |
    r8 \fromBass g8\( b, e g b |
    e2.--\) ~ |
    e8 g[\( \acciaccatura { fis16 g } fis8 e g, a] |
    b8[ d \acciaccatura { c16 d } c8 b e, fis] \fromBassEnd | 
    \voiceOne s4 g4. dis8 |
    dis8[ fis] e\) \oneVoice r8 r4 | % [8]
    r4 \fromBass g( e) \fromBassEnd |
    r4 \fromBass g8.( fis16 e4) \fromBassEnd |
    r8 \fromBass g8\( b, e g b |
    e2.\) ~ |
    e8 fis\( g g, a ais |
    b8 d c b e, fis |
    \voiceOne s4 g4. dis8 |
    dis8[ fis] e\) \oneVoice r8 r4 | % [16]
    f4( gis,4.) f'8( |
    g,8 f' e4) r |
    g4( ais,4.) g'8( |
    a,8 g' fis4) r |
    a4( c,4.) a'8( |
    \tuplet 3/2 { <g e>8 b e) } <g g,>8 r8\fermata g,,8\( a |
    <b g e>2 <b fis dis>4 |
    e,2\) r4 | % [24]
    <c' e>4-.( q-. q-.) |
    <a c dis>2.-- |
    <f b d>4 <f b e>4.( <f b d>8) |
    <e c'>2 r4 | % [end of page 1 in original score]
    \voiceOne <a c>2 q4 \oneVoice |
    <dis, a' b>2.( |
    <d gis b>4) \acciaccatura d'8 \stemUp <c>4.^( <d, gis>8) \stemNeutral | % HACK for grace note
    <c e b'>2^( <c e a>8) r8 | % [32]
    <c' e>4-.( q-. q-.) |
    <a c dis>4( a'8) r r4 |
    <f, b d>4 \stemUp \acciaccatura f'8 e4.^( <f, d'>8) | % HACK as above
    <e c'>2 r4 |
    \voiceOne <a c>2 q4 \oneVoice |
    <dis, a' b>2.( |
    <d gis b>4) \acciaccatura d'8 \stemUp <c>4.^( <d, gis>8) \stemNeutral | % HACK as above
    <c e b'>2^( <c e a>8) r8 | % [40] poco più vivo
    r4^\markup { \italic { poco più vivo } } <f a>4.->( e8) |
    \voiceOne e8[^\( <f a> <f a> d] d[ <f a> |
    <f a>8 des] des[ <f a> <f a> c]\) \oneVoice |
    r4 \voiceOne <f' a>4.->( <cis e>8) |
    <cis e>8[( <e g>]) <e g>[( <d f>]) <d f>[( <a cis>]) |
    \oneVoice <e cis'>8[( <f d'>]) <f d'>16 r r8 <f d'>4-- | % [46]
    r4 <bes d>4.->( a8) |
    \voiceOne a8[^\( <bes d> <bes d> g] g[ <bes d> |
    <bes d> f] f[ <bes d> <bes d> e,]\) \oneVoice |
    r4 <bes' d>4.->( <fis a>8) |
    <fis a>8[( <g bes>]) <g bes>[( <a, fis'>]) <a fis'>[( <bes g'>]) |
    <b gis'>8[( <c a'>]) <c a'>16 r r8 <c a'>4-- | % [52]
    r4 <f a>4.->( e8) |
    \voiceOne e8[^\( <f a> <f a> d] d[ <f a> |
    <f a>8 des] des[ <f a> <f a> c]\) \oneVoice | % [end of page 2 in original score]
    r4 \voiceOne <f' a>4.->( <cis e>8) |
    <cis e>8[( <e g>]) <e g>[( <d f>]) <d f>[( <a cis>]) |
    \oneVoice <e cis'>8[( <f d'>]) <f d'>16 r r8 <f d'>4-- | % [58]
    r8 <f d'>8 <f d'>[( <d' bes'>]) <d bes'>4 ~ |
    <d bes'>8 <c a'> q <bes g'> q <a f'> |
    q8( <g e'> <e' c'>4.) <es b'>8\( |
    <d bes'> <cis a'> <e cis'> <d bes'> \voiceOne d[ e]\) |
    e8( g f16) \oneVoice r16 r8 \voiceOne f4-- \oneVoice | % [63] vivace
    
  }
}

upperB = {
  \relative c''' {
    s2.*6 |
    g8[ b,] ~ b[ ais] a4 ~ |
    a4 g8 s4. |
  } % [8]
  \relative c''' {
    s2.*6 |
    g8[ b,] ~ b[ ais] a4 ~ |
    a4 g8 s4. |
  } % [16]
  s2.*8 | % [24]
  \relative c' {
    s2.*4 |
    e4\( f e\) |
    s2. |
    s4 \voiceOne <d gis>4. \voiceTwo s8 | % HACK for grace note
    s2. | % [32]
    s2.*2 |
    s4 \voiceOne <f b>4. \voiceTwo s8 | % HACK as above
    s2. |
    e4\( f e\) |
    s2. |
    s4 \voiceOne <d gis>4. \voiceTwo s8 | % HACK for grace note
    s2. | % [40] poco più vivo
    s2. |
    e4 s d |
    s4 des s |
    s2.*3 | % [46]
    s2. |
    a'4 s g |
    s4 f s |
    s2.*3 | % [52]
    s2. |
    e4 s d |
    s4 des s |
    s2.*3 | % [58]
    s2.*3 |
    s2 bes'4 |
    bes4( a16) s8. a4-- | % [63] vivace
  }
}

lower = {
  \global
  \clef bass

  \relative c {
    e4 \toTreble <b' e g>( <e g b>) \toBass |
    e,4 \toTreble <ais c g'>( <b e g>) \toBass |
    e,4 \toTreble <b' e g> \toBass d, |
    cis4 \toTreble <b' e g>( <e g b>) \toBass |
    c,4 \toTreble <ais' e' g>( <e' g c>) \toBass |
    b,4 \toTreble <b' e g>( <e g b>) \toBass |
    b,4 b' ~ <b dis> |
    e,4 \toTreble <b' e>^( <b e g>) \toBass | % [8]
    e,4 \toTreble <b' e g>( <e g b>) \toBass |
    e,4 \toTreble <ais c g'>( <b e g>) \toBass |
    e,4 \toTreble <b' e g> \toBass d, |
    cis4 \toTreble <b' e g>( <e g b>) \toBass |
    c,4 \toTreble <ais' e' g>( <e' g c>) \toBass |
    b,4 \toTreble <b' e g>( <e g b>) \toBass |
    b,4 b' ~ <b dis> |
    e,,4 \toTreble <g' b e>( <b e g>) \toBass | % [16]
    e,4 \toTreble <b' d>^( <b d gis>) \toBass |
    e,4 \toTreble <ais cis>^( <ais cis g'>) \toBass |
    e4 \toTreble <cis' e>^( <cis e ais>) \toBass |
    e,4 \toTreble <c' dis>^( <c dis a'>) \toBass |
    e,4 \toTreble <a c fis>( <c fis a>) \toBass |
    <e, b' g'>4\arpeggio <c g' ais e'>8 r8\fermata r4 |
    b'4( b,) <b a'> |
    e4( e,) r | % [24]
    \tuplet 3/2 4 {
      a8\(_\markup { \italic legatiss. } e' a \toTreble \omit TupletNumber c e a b a e\) |
      fis8\( dis c \toBass a gis b a fis dis\) |
      a8\( f' gis b d e d b gis\) |
      a8\( a, e' a b c b a e\) |
      fis,8\( c' e a b c b a e\) |
      b8\( fis' ais b d c b fis dis\) |
      e,8\( b' dis e f fis g gis b\) |
      e,8\( a, dis e fis gis a e c\) | % [32]
      a8\( e' a \toTreble \omit TupletNumber c e a b a e\) |
      fis8\( dis c \toBass a gis b a fis dis\) |
      a8\( f' gis b d e d b gis\) |
      a8\( a, e' a b c b a e\) |
      fis,8\( c' e a b c b a e\) |
      b8\( fis' ais b d c b fis dis\) |
      e,8\( b' dis e f fis g gis b\) |
      e,8\( a, dis e fis gis a e c\) | % [40] poco più vivo
    }
    f,4-. <f' a>4.->( e8) |
    << { e4 s d | s des s } \\
       { e8[_\( <f a> <f a> d] d[ <f a> | <f a> des] des[ <f a> <f a> c]\) }
    >> |
    f,4-. \change Staff="upper" \voiceTwo <f'' a>4.->(_\markup { \italic { rubato assai } } <cis e>8) |
    <cis e>8[( <e g>]) <e g>[( <d f>]) \stemDown <d f>[( \stemUp \change Staff="lower" <a cis>]) \oneVoice \stemNeutral |
    bes,4( <f' d'>16) r r8 <bes d>4-- | % [46]
    g,4-. <bes' d>4.->( a8) |
    << { a4 s g | s f s } \\
       { a8[_\( <bes d> <bes d> g] g[ <bes d> | <bes d> f] f[ <bes d> <bes d> e,]\) }
    >> |
    c4-. <bes' d>4.->( <fis a>8) |
    <fis a>8[( <g bes>]) <g bes>[( <a, fis'>]) <a fis'>[( <bes g'>]) |
    f4( <c' a'>16) r r8 <f a>4-- | % [52]
    f,4-. <f' a>4.->( e8) |
    << { e4 s d | s des s } \\
       { e8[_\( <f a> <f a> d] d[ <f a> | <f a> des] des[ <f a> <f a> c]\) }
    >> | % [end of page 2 in original score]
    f,4-. \change Staff="upper" \voiceTwo <f'' a>4.->(_\markup { \italic { rubato assai } } <cis e>8) |
    <cis e>8[( <e g>]) <e g>[( <d f>]) \stemDown <d f>[( \stemUp \change Staff="lower" <a cis>]) \oneVoice \stemNeutral |
    bes,4( <f' d'>16) r r8 <bes d>4-- | % [58]
    g,4-. <d' g bes>( <g bes d>) |
    <bes d g>4 r r |
    c,4( <g' bes c>) <bes c e> |
    \clef treble <c e bes'>4 r \clef bass c,4( |
    f,4) <c' f a>16 r r8 <a' c f>4-- | % [63] vivace
  }

  \bar "|."
}

dynamics = {
  s4^\markup { \italic "dolce" } s\> s\! |
  s4 s\> s\! |
  s16 s\< s8 s4. s8\! |
  s2.*3 |
  s4. s8\> s4 |
  s8 s8\! s2 | % [8]
  s4^\p s\> s\! |
  s4 s\> s\! |
  s16 s\< s8 s4. s8\! |
  s2.*3 |
  s4. s8\> s4 |
  s8 s8\! s2 | % [16]
  s4^\p s2 |
  s2. |
  s4\cresc s2\! |
  s2. |
  s4\< s4. s8\! |
  s4 s8\mf s8 s4\p |
  s2.*2 | % [24]
  s4^\p s2 |
  s2.*3 |
  s4\< s4\!\> s4\! |
  s2.*3 | % [32]
  s2.*4 |
  s4\< s4\!\> s4\! |
  s2.*3 | % [40] poco più vivo
  s4^\mf s2 |
  s8 s\cresc s2\! |
  s2.*3 |
  s8\> s4 s8\! s4 | % [46]
  s2. |
  s16 s\cresc s8 s2\! |
  s2.*3 |
  s8\> s4 s8\! s4 | % [52]
  s4^\mf s2 |
  s8 s\cresc s2\! |
  s2.*4 | % [58]
  s4\f s2 |
  s2. |
  s8\< s s2\! |
  s2 s4\> |
  s4 s8\! s8 s4 | % [63] vivace
}

music = \new PianoStaff \with {
    instrumentName = \markup { \bold "Piano" }
    connectArpeggios = ##t
  } <<
    \accidentalStyle piano
    \new Staff = "upper" <<
      %\expressive
      \new Voice = "A" { \oneVoice \upperA }
      \new Voice = "B" { \voiceTwo \upperB }
    >>
    \new Dynamics { \dynamics }
    \new Staff = "lower" \lower
  >>
