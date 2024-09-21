\version "2.23.14"

#(set-default-paper-size "a4")
#(set-global-staff-size 18)
#(ly:set-option 'point-and-click #f)

\header {
  title = "Adagio"
  subtitle = "from Oboe Concerto in D minor"
  composer = \markup { \caps { Alessandro Marcello } }
  arranger = \markup { arr. \caps { J.S. Bach, } \caps { BWV 974 } }
  %opus = "Op.27"
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
  indent = 0\cm
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
    \Score
    \override SpacingSpanner.common-shortest-duration =
      #(ly:make-moment 1/8)
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
  \key d \minor
  \time 3/4
}

upper = {
  \global
  \clef treble
  \tempo \markup { "Adagio" }

  \relative c' {
    d8 d d d d d |
    e8 e e e e e |
    << { g8 g g g g g } \\ { e8 e e e e e } >> |
    << { d'8[( f]) } \\ { f,8 r } >> f'8( a) a( c16 bes) |
    bes2\mordent r4 |
    c,8( e16 d) e8( g16 f) g8( bes16 a) |
    a2\mordent r4 |
    bes,16( c32 a bes16 d32 cis) d16( e32 cis d16 f32 e) f16( g32 e f16 a32 g) |
    g2\mordent r4 |
    a,32( gis a b a b cis b) cis( d cis d e d e f) e( f g f g f g e) |
    f4\mordent r16 f bes a bes( g ~ g32 f e f) |
    e4\prall r16 e f a32 g a( f16 g32 e16.\prall f32) |
    \appoggiatura { e16 } d4 r32 d( e f g f e f) g16( f32 e f16 g) |
    << { cis,2\prall r4 } \\ { r4 <a g e>8 q q q } >> |
    << { fis'8[( a]) } \\ { <a, c>8 r } >> a'8( f) c16( a' f c) |
    c4( bes)\prall r |
    gis'16( b gis a) b( gis e b') gis( e d b') |
    d,8( c) f( e) e( f)\mordent ~ |
    f8 g16 f e8 f16 d e4\mordent ~ |
    e16 g( f e) d( cis e d) d4\mordent |
    d16( c b c d e f e) d8\( c ~ |
    c16 bes c a bes c d e f g a bes\) |
    e,4\prall\( ~ e32 d c d e d f e\) f4\mordent\( ~ |
    f16. g32 f e f g\) g4\prallprall\( ~ g16 f g32 e f d64 es\) |
    es4\mordent ~ es8 g( bes16 g f es) |
    es4\mordent ~ es16 g( a bes c a f es) |
    es4\pralldown d8. e32 fis g( a bes a g f e g64 f) |
    f8( g4\mordent) a8 g16( f8 g32 e) |
    f16.\mordent( g32 f e f g) d8( ~ d32 cis b cis) cis16.\prall( d32 cis16 d32 bes) |
    \appoggiatura { a16 } g2. ~ |
    g16( f e f g a bes a) g'( e f cis) |
    d16.\prall( e32 d cis d e) e4\prallprall ~ e16( d b32 d f a) |
    gis8\prall( ~ gis32 a gis fis) e32( fis gis fis gis a gis fis64 gis) a32( bes a g f16 g32 e) |
    f32( g a g f e f d) d16.( cis32 d b cis16) cis8.\prallprall d16 |
    << { d2 r4 } \\ { r4 r8 a,8 a a } \\ { r8 <d f>8 q q q q } >> |
    << { <d e>8 q q q <c e> q } \\ { a8 a a a a a } >> |
    << { <d fis>8 q q q q q } \\ { <c a>8 q q q q q } >> |
    << { <d g>8 q q q q q } \\ { <c g>8 <bes g> bes bes bes bes } >> |
    << { g'4. a8 f e } \\ { cis8 cis cis cis d cis } >> |
    << { f8 g e2\prallprall } \\ { d4 ~ d cis4 } >> |
    << d2. \\ a2. >> |
  }

  \bar "|."
}

lowerOne = {
  \global
  \clef bass

  \relative c' {
    R1*3/4 |
    d8 d d d d d |
    cis8 cis cis cis cis cis |
    d8 <d f>[ q q q q] |
        <d f>8 q q q q q |
        e8 e e e e e |
        <c e>8 q q q q q |
        d8 d d d d d |
        <bes d>8 q q q q q |
        cis8 cis cis cis cis cis |
        d8[ d] \clef treble <f bes>8 q q q |
        <g bes>8 q <e a> q q q |
        <f a>8 q <d g> q q q |
        <e g>8[ q] \clef bass a,8 a a a |
        a8[ d] \clef treble <fis a>8 q q q |
        <d g>8 q q q q q |
        <gis b>8 q q q q q |
        <e a>8 q c' c c c |
        bes8 bes bes bes bes bes |
        a8 a a a a a |
        g8 g g g g g |
        f8 f f f <f bes> q |
        <g bes>8 q q q <f a> q |
        g8 f ~ f4 e |
        <g bes,>8 q q q q q |
        <f c>8 q q q q q |
        f8 f f f d g |
        cis,8 cis cis cis d d |
        d8 e e g f e |
        d16( cis) e( d) f( e) g( f) e( d cis d) |
        cis8\prall cis cis cis \clef bass <a cis>8[ <a d>] |
        <bes d>8[ q] cis g' f e |
        <b d>8 q q q cis[ cis] |
        d8 bes a4 a4 |
        d,8 d d d d d |
        e8 e e e e e |
        d8 d d d d d |
        d8 d e e e e |
        << { a4 r4 } \\ { \voiceThree e8[ e e e] } >> d4 ~ |
        d16 cis( d e) r d( e f) e8 fis16 g |
        fis2. |
  }
}


lowerTwo = {
  \relative c' {
    s2. |
    s2. |
    a8 a a a a a |
    d,8 r r4 r |
    g8 g g g g g |
    c8 c c c c c |
    f,8 f f f f f |
    bes8 bes bes bes bes bes |
    e,8 e e e e e |
    a8 a a a a a |
    d,8[ d] \clef treble d' d d d |
    d8 d c c c c |
    c8 c bes bes bes bes |
    a8[ a] \clef bass a, a a a |
    d4 \clef treble d'8 d d d |
    g,8 g g g g g |
    e'8 e e e e e |
    a,8 a a' a a a |
    g8 g g g g g |
    f8 f f f f f |
    e8 e e e e e |
    d8 d d d d d |
    c8 c c c d d |
    <bes d>4 c2 |
    g8 g g g g g |
    a8 a a a a a |
    bes8 bes bes bes bes bes |
    a8 a a a bes bes |
    <g bes>8 q a8 a a a |
    bes8 bes bes bes bes bes |
    a8 a a a \clef bass f8[ f] |
    g8[ g] a a a a |
    e8 e e e a[ a] |
    d,8[ g] a g a a, |
    r8 d,8 d d d d |
    a'8 a a a a a |
    d,8 d d d d d |
    g8 g g g g g |
    a8 a a a bes bes |
    g8 g a a a a |
    d,2. |
  }

  \bar "|."
}

dynamics = {
}

expressive = {
  % s2.*31 | s4 s8^\markup { \italic "perdendosi" }
}

\score {
  \new PianoStaff \with {
    %instrumentName = \markup { \number {41} \fontsize #2 \bold "/" \number 1 }
    %connectArpeggios = ##t
  } <<
    \accidentalStyle piano
    \new Staff = "upper" <<
      \expressive
      \upper
    >>
    \new Dynamics { \dynamics }
    \new Staff = "lower" <<
      \expressive
      \new Voice = "A" { \voiceOne \lowerOne }
      \new Voice = "B" { \voiceTwo \lowerTwo }
    >>
  >>
}
