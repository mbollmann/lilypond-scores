\version "2.25.4"

#(set-default-paper-size "a4")
#(set-global-staff-size 20)
#(ly:set-option 'point-and-click #f)

\header {
  title = "Russische Weisen und Tänze"
  composer = \markup { \caps { Sergei Bortkiewicz } }
  arranger = \markup { { arr. Marcel Bollmann } }
  opus = "Op.31, No.3"
  % copyright = \markup {
  %   \pad-to-box #'(0 . 0) #'(0 . 3)
  %   \line {
  %     "Typeset in 2023 by"
  %     \with-color "dodgerblue" {
  %       \with-url "https://github.com/mbollmann/lilypond-scores/" {
  %         "Marcel Bollmann."
  %       }
  %     }
  %     "Released under"
  %     \with-color "dodgerblue" {
  %       \with-url "https://creativecommons.org/licenses/by/4.0/" {
  %         "CC-BY 4.0."
  %       }
  %     }
  %   }
  % }
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
  ragged-bottom = ##t
  %ragged-last-bottom = ##f
  left-margin = 0.5\cm  % was: unset
  right-margin = 0.5\cm  % was: unset
  top-margin = 1\cm  % was: 1\cm
  bottom-margin = 1\cm  % was: 1.5\cm
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
  \key b \minor
  \time 3/4
}


upperA = {
  \global
  \clef treble
  \tempo \markup { "Allegro non tanto" }

  \relative c' { % [A]
    \stemUp \slurUp \phrasingSlurUp
    fis4-.\( <fis gis>-. <fis ais>-. |
    <fis b>-. <fis b cis>-. <fis b d>-.\) |
    <g ais cis>-.\( <g ais d>-. <g ais cis>-. |
    <d fis cis'>-. <d fis b>-. <d fis>-.\) |
    <g ais cis>-.\( \acciaccatura e'8 <g, ais d>4-. <g ais cis>-. |
    <d fis cis'>-. <d fis b>-. <d fis>-.\) |
    <e b'>-.( <e a>-. <e g>-.) |
    <d g>( <d fis>) <d fis> |
    <<
        { e'2( d8 cis) | e4^-( d) r8 d |
          d4^-( cis) r8 d( | cis4^- b) } \\
        { <fis ais>2 q4 | <fis b>2 s4 | <e g>2 s4 | <d fis>2 }
    >> r8 b'\( |
    <fis ais fis'>2 <fis ais e>4 | <fis b d,>\) r r | % [A']
    a4-.( <gis b>-. <g cis>-.) |
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
    <<
        { d4^-( cis) r8 d( | cis4^- b) } \\
        { <e, g>2 s4 | <d fis>2 }
    >> r8 b'( |
    <fis ais fis'>2 <e fis ais>4 | <d fis b>2.) |
    \stemNeutral \slurNeutral \phrasingSlurNeutral
  }
  \section

  \relative c'' { % [B]
    \key g \major
    b4\(^\markup { \italic dolce } c b |
    b a e |
    es d b' |
    a g\) b\( ~ |
    b \acciaccatura d8 c4 b\) |
    << { b4\( a e | es d b' |
         a g\) b\( | b c d |
         d c\) c\( | cis d e |
         e d\) } \\
       { e,2 s4 | s2.*2 | f2 s4 |
         e2 s4 | g2 s4 | fis2 }
    >> d'4\( |
    fis4.-> e8 d c |
    c4 b8\) r r b\( |
    e4-- a,8\) r r a\( |
    d4 g,8\) r r d'\( |
    fis4. e8 d c |
    c4 b8\) r r b\( |
    e4 a, d |
    g,2.\) |
  }
  \section

  \relative c' { % [A reprise]
    \key b \minor
    \stemUp \slurUp \phrasingSlurUp
    fis4-.\( <fis gis>-. <fis ais>-. |
    <fis b>-. <fis b cis>-. <fis b d>-.\) |
    <g ais cis>-.\( <g ais d>-. <g ais cis>-. |
    <d fis cis'>-. <d fis b>-. <d fis>-.\) |
    <g ais cis>-.\( \acciaccatura e'8 <g, ais d>4-. <g ais cis>-. |
    <d fis cis'>-. <d fis b>-. <d fis>-.\) |
    <e b'>-.( <e a>-. <e g>-.) |
    <d g>( <d fis>) <d fis> |
    <<
        { e'2( d8 cis) | e4^-( d) r8 d |
          d4^-( cis) r8 d( | cis4^- b) } \\
        { <fis ais>2 q4 | <fis b>2 s4 | <e g>2 s4 | <d fis>2 }
    >> r8 b'\( |
    <fis ais fis'>2 <fis ais>4 | 
    <fis b>\) r8 \tempo \markup { "Un poco meno mosso e rubato" } d'-.( d-. d-.) | 
    \stemNeutral \slurNeutral \phrasingSlurNeutral
  }
  \section

  \repeat volta 2 { % [C]
    \key g \major
    \relative c'' {
        << { d4.--( c8) c c } \\ { fis,2. } >> |
        << { c'4.--( b8) b b } \\ { <g d>2. } >> |
        << { b4.\( a8 e fis | \oneVoice <g d b>4.\) } \\ { <e c>2 c4 | s4. } >>
           g'8\( b d |
        g4. fis8 e dis |
        fis4. e8 a, c |
        e4. d8 cis c |
        b4.\) \once \override PhrasingSlur.height-limit = #6.0 <g g'>8\( <b b'> <d d'> |
        <g g'>4. <fis fis'>8 <e e'> <dis dis'> |
        <fis fis'>4. <e e'>8 <a, a'> <c c'> |
        <e e'>4. <d d'>8 <c c'> <a a'> |
        <g g'>4.\) b8-.( b-. b-.) | % [C']
        << { b4.--( a8) a a } \\ { <dis, a>4 s2 } >> |
        << { a'4.--( g8) g g } \\ { <e b>4 s2 } >> |
        << { g4.--( f8) f f } \\ { <b, f>4 s2 } >> |
        << { f'4.--( e8) e e } \\ { <c g>4 s2 } >> |
        << { e4.--( d8) d( e) }  { s2. } >> |
        << { d4.--( c8) c c }  { s2. } >> |
        c4. c8( g a |
        b4.) c8( g a |
        b4.) << { c'8( g a | <b fis dis>4.) c8( g a } \\ { r8 <e c>4 | s4. r8 <e c>4 } >> |
        \alternative {
            \volta 1 {
                << { b'4.--) b8 b b } \\ { <fis dis>2. } >> |
                << { b4.-- b8 b b } \\ { <g d>2. } >> |
                << { b4.--^\markup { \italic { "   " rit. } } b8 b b } \\ { <fis dis>2. } >> |
                << { b4. \oneVoice d8-.( d-. d-.) } \\ { <g, d>2. } >> |
            }
            \volta 2 {
                << { b4.--) b8 b b } \\ { <fis dis>2. } >> |
                << { cis'4.--( b8) b b } \\ { <fis dis>2. } >> |
                << { cis'4.--( b8) b^\markup { \italic { rit. } } b } \\ { <gis e>2. } >> |
                << { d'4.--( b8) b b } \\ { <g d>2. } >> |
                << { dis'4.--( b8) b b } \\ { <a dis,>2. } >> |
            }
        }
    }
  }
  \section

  \relative c'' { % [B 2]
    %\key g \major
    \tempo \markup { Tempo I }
    b4\( c b |
    b a e |
    es d b' |
    a g\) b\( ~ |
    b \acciaccatura d8 c4 b\) |
    << { b4\( a e | es d b' |
         a g\) b\( | b c d |
         d c\) c\( | cis d e |
         e d\) } \\
       { e,2 s4 | s2.*2 | f2 s4 |
         e2 s4 | g2 s4 | fis2 }
    >> d'4\( |
    fis4.-> e8 d c |
    c4 b8\) r r b\( |
    e4-- a,8\) r r a\( |
    d4 g,8\) r r d'\( |
    fis4. e8 d c |
    c4 b8\) r r b\( |
    e4 a, d |
    g,2.\) |
  }
  \section

  \relative c' { % [A 2]
    \key b \minor
    \stemUp \slurUp \phrasingSlurUp
    fis4-.\( <fis gis>-. <fis ais>-. |
    <fis b>-. <fis b cis>-. <fis b d>-.\) |
    <g ais cis>-.\( <g ais d>-. <g ais cis>-. |
    <d fis cis'>-. <d fis b>-. <d fis>-.\) |
    <g ais cis>-.\( \acciaccatura e'8 <g, ais d>4-. <g ais cis>-. |
    <d fis cis'>-. <d fis b>-. <d fis>-.\) |
    <e b'>-.( <e a>-. <e g>-.) |
    <d g>( <d fis>) <d fis> |
    <<
        { e'2( d8 cis) | e4^-( d) r8 d |
          d4^-( cis) r8 d( | cis4^- b) } \\
        { <fis ais>2 q4 | <fis b>2 s4 | <e g>2 s4 | <d fis>2 }
    >> r8 b'\( |
    <fis ais fis'>2 <fis ais e>4 | <fis b d,>\) r r | 
    a4-.( <gis b>-. <g cis>-.) |
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
    <<
        { d4^-( cis) r8 d( | cis4^- b) } \\
        { <e, g>2 s4 | <d fis>2 }
    >> r8 b'( |
    <fis ais fis'>2 <e fis ais>4 |
    \stemNeutral \slurNeutral \phrasingSlurNeutral
  }
  \section

  \relative c' { % [Coda]
     <d fis b>4) r8 fis8-.( fis-. fis-.) |
     fis4.--( e8) e e |
     e4.--( d8) d d |
     d4.( cis8 e d |
     b4.) fis'8-.( fis-. fis-.) |
     fis4.--( e8) e e |
     << { s2 fis4\( | g2 ais4 | b2\) } \\
        { \oneVoice e,4.--( \voiceTwo d8) d d |
          d4.( cis8 e d |
          b4.) s8 } >>
     <b' e b'>4--( |
     <fis' d b>2) <b, e b'>4--( |
     <fis' d b>2) \voiceOne <e, g b>4--( | 
     <fis d>2) <e g b>4 | \oneVoice

     \once \override PhrasingSlur.height-limit = #4
     <b d fis>4-.^\( <d fis gis>-. <d fis ais>-. |
     \voiceOne
     <d fis b>-. <d' fis>-. <d fis gis>-. | 
     <d fis ais>-. <d fis b>-. <d fis>-. |
     <d fis gis>-. <d fis ais>-. <d fis b>-. |
     <d fis>-. <d fis gis>-. <d fis ais>-. |
     <d fis b>-.\) \oneVoice r r |
     <fis, b d>4-.\( r r |
     <d fis b>-.\) r r\fermata
  }
  \bar "|."
}


lower = {
  \global
  \clef bass

  \relative c { % [A]
    b4 <fis' b d>-.( <fis b d>-.) |
    b,4 <fis' b d>-.( <fis b d>-.) |
    b,4 <g' ais e'>-.( <g ais e'>-.) |
    b,4 <d fis b>-.( <d fis>-.) |
    b4 <g' ais e'>-.( <g ais e'>-.) |
    b,4 <d fis b>-.( <d fis>-.) |
    cis4 <e a>-.( <e a>-.) |
    d4 <fis a>-.( <fis a>-.) |
    cis4 <fis ais e'>-.( <fis ais e'>-.) |
    b,4( <fis' b d>) r |
    e,4( <e' g cis>) r |
    fis,4( <d' fis b>) r |
    <fis, fis,>4 <fis' ais e'>-.( <fis ais>-.) |
    b,4 <d fis b>-.( <d fis b>-.) | % [A']
    a4 <g' a cis>-.( <g a cis>-.) |
    d <fis a d>-.( <fis a d>-.) |
    d <g a cis>-.( <g a cis>-.) |
    d <fis a d>-.( <fis a d>-.) |
    d <g bes cis>-.( <g bes cis>-.) |
    d <fis a d>-.( <fis a d>-.) |
    cis <fis ais e'>-.( <fis ais e'>-.) |
    b, <fis' b d>-.( <fis b d>-.) |
    b, <g' ais e'>-.( <g ais e'>-.) |
    b, <d fis b>-.( <d fis>-.) |
    b <g' ais e'>-.( <g ais e'>-.) |
    b,( <d fis b>) r |
    e,4( <e' g cis>) r |
    fis,4( <d' fis b>) r |
    <fis ais e'>2 <fis ais>4 |   %  alt.:  <fis ais e'>2 <fis fis,>4
    <b fis b,>2. |
  }
  \section

  \relative c' { % [B]
    \key g \major
    << { r8 b( d g d b) } \\ { <d, g,>2. } >> |
    << { r8 a'( c e c a) } \\ { <e g,>2. } >> |
    << { r8 a( c fis, a c) } \\ { <d, g,>2. } >> |
    << { r8 b'( d g, b d) } \\ { <d, g,>2. } >> |
    << { r8 b'( d g d b) } \\ { <d, g,>2. } >> |
    << { r8 a'( c e c a) } \\ { <e g,>2. } >> |
    << { r8 a( c fis, a c) } \\ { <d, g,>2. } >> |
    << { r8 b'( d g, b d) } \\ { <d, g,>2. } >> |
    << { r8 b'( d f d b) } \\ { <f gis,>2. } >> |
    << { r8 a( c e c a) } \\ { <e a,>2. } >> |
    << { r8 cis'( e g e cis) } \\ { <g ais,>2. } >> |
    << { r8 b( d fis d b) } \\ { <fis b,>2. } >> |
    << { r8 c'( e a e c) } \\ { <a c,>2. } >> |
    << { r8 b( d g d b) } \\ { d,2. } >> |
    << { r8 c'( d fis d c) } \\ { <a d,>2. } >> |
    << { r8 b( d g d b) } \\ { <g b,>2. } >> |
    << { r8 c( e a e c) } \\ { <a c,>2. } >> |
    << { r8 b( d g d b) } \\ { d,2. } >> |
    << { r8 c'( d fis d c) } \\ { <d, d,>2. } >> |
    << { r8 b'( d g d b) } \\ { <d, g,>2. } >> |
  }
  \section

  \relative c { % [A reprise]
    \key b \minor
    fis4 <ais e'>-.( <ais e'>-.) |
    b,4 <fis' b d>-.( <fis b d>-.) |
    b,4 <g' ais e'>-.( <g ais e'>-.) |
    b,4 <d fis b>-.( <d fis>-.) |
    b4 <g' ais e'>-.( <g ais e'>-.) |
    b,4 <d fis b>-.( <d fis>-.) |
    cis4 <e a>-.( <e a>-.) |
    d4 <fis a>-.( <fis a>-.) |
    cis4 <fis ais e'>-.( <fis ais e'>-.) |
    b,4( <fis' b d>) r |
    e,4( <e' g cis>) r |
    fis,4( <d' fis b>) r |
    <fis, fis,>4 <fis' ais e'>-.( <fis ais e'>-.) |
    b,4 <fis' b d>-.( <fis b d>-.) | 
  }
  \section

  \repeat volta 2 { % [C]
    \key g \major
    \relative c {
        <a d>4-- <fis' c' d> q |
        <d g,>4-- <d g b> q |
        <c c,>4 <c e a>-. <d d,>-. |
        <d g,>4 <d g>( <d g b>) |
        <b b,>4 <g' d'> q |
        <c, c,>4 <a' c> <e c'> |
        <d d,>4 <fis c'> <d fis c'> |
        <g g,> <b d g>( <g b d>) |
        << { r4 <g d' g> q } \\ { <d b,>2.--\arpeggio } >> |
        << { r4 <c' e a>( <a c e>) } \\ { <e c,>2.--\arpeggio } >> |
        << { r4 <c' d fis> q } \\ { <fis, d,>2.--\arpeggio } >> |
        <d g,>4 <b' d>( <b d g>) | % [C']
        
        << { s4 <b dis> q } \\ { <dis, fis,>2. } >> |
        << { s4 <b' e> q } \\ { <b, e,>2. } >> |
        << { s4 <b' d> q } \\ { <b, d,>2. } >> |
        << { s4 <g' c> q } \\ { <g, c,>2. } >> |
        << { <d' gis>4 <d gis> <e gis> } \\ { <e, b>2. } >> |
        << { <e' a>4 <e a> q } \\ { <e, a,>2. } >> |
        << { r4 <e' g> <e g,> } \\ { <g, ais,>2. } >> |
        <b, fis' b>4 b <g' c e>( |

        % <fis, b dis>4-- <dis' a' b> <dis a'> |
        % <e, b'>4-- <b' e g> <b e> |
        % <d, f b>4-- <b' f'> <b d> |
        % <c, g'>4-- <c' e> q |
        % <b, e>4-- <gis' d'> <e gis> |
        % <a, e'>4-- <e' a c> <e a> |
        % <ais, g'>4-- <c' e> q |
        % <b, fis' b>4 b <g' c e>( |
        <b, fis' b>4) b <g' c e g>( |
        <b, fis' b>4) b <g' c e g>( |
        \alternative {
            \volta 1 {
                <b dis fis>4--) b,2 |
                <b' d g>4-- b,2 |
                <b' dis fis>4-- b,2 |
                <b' d g>4-- b,2 |
            }
            \volta 2 {
                <b' fis b,>2.) |
                <a dis fis b>2. |
                <gis e' b'>2. |
                <g b g'>2. |
                <fis b fis'>2. |
            }
        }
    }
  }
  \section

  \relative c' { % [B 2]
    %\key g \major
    << { r8 b( d g d b) } \\ { <d, g,>2. } >> |
    << { r8 a'( c e c a) } \\ { <e g,>2. } >> |
    << { r8 a( c fis, a c) } \\ { <d, g,>2. } >> |
    << { r8 b'( d g, b d) } \\ { <d, g,>2. } >> |
    << { r8 b'( d g d b) } \\ { <d, g,>2. } >> |
    << { r8 a'( c e c a) } \\ { <e g,>2. } >> |
    << { r8 a( c fis, a c) } \\ { <d, g,>2. } >> |
    << { r8 b'( d g, b d) } \\ { <d, g,>2. } >> |
    << { r8 b'( d f d b) } \\ { <f gis,>2. } >> |
    << { r8 a( c e c a) } \\ { <e a,>2. } >> |
    << { r8 cis'( e g e cis) } \\ { <g ais,>2. } >> |
    << { r8 b( d fis d b) } \\ { <fis b,>2. } >> |
    << { r8 c'( e a e c) } \\ { <a c,>2. } >> |
    << { r8 b( d g d b) } \\ { d,2. } >> |
    << { r8 c'( d fis d c) } \\ { <a d,>2. } >> |
    << { r8 b( d g d b) } \\ { <g b,>2. } >> |
    << { r8 c( e a e c) } \\ { <a c,>2. } >> |
    << { r8 b( d g d b) } \\ { d,2. } >> |
    << { r8 c'( d fis d c) } \\ { <d, d,>2. } >> |
    << { r8 b'( d g d b) } \\ { <d, g,>2. } >> |
  }
  \section

  \relative c { % [A 2]
    \key b \minor
    fis4 <ais e'>-.( <ais e'>-.) |
    b,4 <fis' b d>-.( <fis b d>-.) |
    b,4 <g' ais e'>-.( <g ais e'>-.) |
    b,4 <d fis b>-.( <d fis>-.) |
    b4 <g' ais e'>-.( <g ais e'>-.) |
    b,4 <d fis b>-.( <d fis>-.) |
    cis4 <e a>-.( <e a>-.) |
    d4 <fis a>-.( <fis a>-.) |
    cis4 <fis ais e'>-.( <fis ais e'>-.) |
    b,4( <fis' b d>) r |
    e,4( <e' g cis>) r |
    fis,4( <d' fis b>) r |
    <fis, fis,>4 <fis' ais e'>-.( <fis ais>-.) |
    b,4 <d fis b>-.( <d fis b>-.) | % [A']
    a4 <g' a cis>-.( <g a cis>-.) |
    d <fis a d>-.( <fis a d>-.) |
    d <g a cis>-.( <g a cis>-.) |
    d <fis a d>-.( <fis a d>-.) |
    d <g bes cis>-.( <g bes cis>-.) |
    d <fis a d>-.( <fis a d>-.) |
    cis <fis ais e'>-.( <fis ais e'>-.) |
    b, <fis' b d>-.( <fis b d>-.) |
    b, <g' ais e'>-.( <g ais e'>-.) |
    b, <d fis b>-.( <d fis>-.) |
    b <g' ais e'>-.( <g ais e'>-.) |
    b,( <d fis b>) r |
    e,4( <e' g cis>) r |
    fis,4( <d' fis b>) r |
    <fis ais e'>2 <fis fis,>4 |
  }
  \section

  \relative c' { % [Coda]
    \tempo \markup { Meno mosso }
    << { <b fis b,>2. |
         <b g cis,>2. |
         <b fis d>2. |
         <b g e>2.( |
         <fis d>2) } \\
       { r4 b,4 b ~ |
         b b b ~ |
         b b b ~ |
         b b b ~ |
         b b }
    >>
    << \relative c { fis4( | gis2 ais4 | b2) s4 | s2. } \\
       \relative c { b4 ~ | b b b ~ | b b b ~ | b b b } \\
       \relative c { s4 | <cis fis>2. | <d fis>2. | <e g b>2. }
    >> |
    << \relative c' { 
        s4. b8 b b | b4. b8 b b | 
        b4. \change Staff = "upper" \voiceTwo b8 b b | 
        b4. b8 b b |
        s4 \change Staff = "lower" \voiceOne <d, fis b>4-. q-. |
        q-. \change Staff = "upper" \voiceTwo <d' fis b>4-. q-. |
        q-. q-. q-. |
        q-. q-. q-. |
        q-. q-. q-. |
        q-.
        } \\
       \relative c {
         <b d fis>2 <cis e>4( |
         <b d fis>2) <cis e>4( |
         <b d fis>2) \oneVoice <cis e>4( |
         <fis b, fis>2) <cis e>4( | \voiceTwo
         <b fis b,>2.)\sustainOn ~ | q ~ | q ~ | q ~ | q ~ |
         q4\sustainOn
       }
    >>
  }
  \relative c {
    r r | \clef bass
    <b fis b,>4-. r r |
    <b fis b,>4-. r r\fermata |
  }
  \bar "|."
}

dynamics = {
    % [A]
    s2.^\markup \whiteout { \dynamic p dolce, melancolico } |
    s2.*8 |
    s16 s8.\> s4\! s |
    s16 s8.\> s4\! s |
    s16 s8.\> s4\! s |
    s8 s\> s2 |
    s8 s\! s2 | % [A']
    %\once \override DynamicText.Y-offset = #'1.0
    s2.\p |
    s2. |
    s4\< s\> s\! |
    s2. |
    s4\< s\> s\! |
    s2.*3 |
    s4\< s\> s\! |
    s2. |
    s4\< s\> s\! |
    s2. |
    s4\> s\! s |
    s4\> s\! s |
    s2.*2 |

    \pageBreak
    % [B]
    s2.\p |
    s2.*7 |
    \set crescendoText = \markup { \smaller \whiteout \italic { poco cresc. } }
    \set crescendoSpanner = #'text
    s2.\< |
    s2.*3 |
    \once \override DynamicText.X-offset = #'0.0
    s2.\mf |
    \unset crescendoSpanner
    s2. |
    s4\> s8\! s4. |
    s4\> s8\! s4 s8\p |
    s2.*2 |
    s2.\> |
    s4 s2\! |

    % [A reprise]
    s2._\markup \whiteout { \dynamic p dolce } |
    s2.*8 |
    s16 s8.\> s4\! s |
    s16 s8.\> s4\! s |
    s16 s8.\> s4\! s |
    s8 s\> s2 |
    s8 s\! s8 s\< s s\! |

    % [C]
    \repeat volta 2 { 
        s2._\markup \whiteout { \dynamic { mf } espressivo } |
        s2.*20 |
        s4. s8\> s s\! |
        \alternative {
            \volta 1 {
                s2.\p |
                s2.*2 |
                s4. s8\< s s\! |
            }
            \volta 2 {
                s2.-\markup \whiteout { \dynamic p espressivo } |
                s2.*2 |
                s4\> s s8 s\! |
                s4\> s s8 s\! |
            }
        }
    }

    % [B 2]
    s2.^\markup \whiteout { \dynamic p dolce } |
    s2.*7 |
    \set crescendoText = \markup { \smaller \whiteout \italic { poco cresc. } }
    \set crescendoSpanner = #'text
    s2.\< |
    s2.*3 |
    \once \override DynamicText.X-offset = #'0.0
    s2.\mf |
    \unset crescendoSpanner
    s4\> s8\! s4. |
    s4\> s8\! s4. |
    s4\> s8\! s4. |
    s2.*2 |
    s2.\> |
    s4 s2\! |

    % [A 2]
    s2.\p |
    s2.*8 |
    s16 s8.\> s4\! s |
    s16 s8.\> s4\! s |
    s16 s8.\> s4\! s |
    s8 s\> s2 |
    s8 s\! s2 | % [A']
    %\once \override DynamicText.Y-offset = #'1.0
    s2.\p |
    s2. |
    s4\< s\> s\! |
    \pageBreak
    s2. |
    s4\< s\> s\! |
    s2.*3 |
    s4\< s\> s\! |
    s2. |
    s4\< s\> s\! |
    s2. |
    s4\> s\! s |
    s4\> s\! s |
    s2.\> |

    % [Coda]
    s8 s\! s s4.-\markup \whiteout { \dynamic p dolce espressivo } |
    s2.*3 |
    s4. s4.\pp |
    s2.*3 |
    s2 s4\> |
    s4 s\! s\> |
    s4 s\! s |
    s2. |
    s2.\pp |
    s2.*2 |
    s2.\> |
    s2. |
    \once \override DynamicText.X-offset = #'0.2
    s2.\ppp |
}

music = \new PianoStaff \with {
    instrumentName = \markup { \bold "- III -" }
    connectArpeggios = ##t
  } <<
    \accidentalStyle piano
    \new Staff = "upper" <<
      \new Voice = "A" { \oneVoice \upperA }
      %\new Voice = "B" { \voiceTwo \upperB }
    >>
    \new Dynamics { \dynamics }
    \new Staff = "lower" \lower
  >>

\score {
    %\unfoldRepeats
    \music
}
