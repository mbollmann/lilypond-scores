\version "2.23.4"

\header {
  composer = "Charles-Valentin Alkan (1813-1888)"
  title =    "Air à 5 temps"
  subtitle = "from '2ème Recueil d'Impromptus'"
  opus =     "Op.32/2, No.1"
  copyright = \markup {
    \pad-to-box #'(0 . 0) #'(0 . 3)
    \line {
      "Typeset in 2004 (rev. 2022) by"
      \with-url "https://github.com/mbollmann/lilypond-scores/" {
        "Marcel Bollmann."
      }
      "Released under"
      \with-url "https://creativecommons.org/licenses/by/4.0/" {
        "CC-BY 4.0."
      }
    }
  }
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

%#(set-global-staff-size 18)
#(set-default-paper-size "a4")
#(ly:set-option 'point-and-click #f)

\paper {
  ragged-bottom = ##t
  system-system-spacing.basic-distance = #16
  top-margin = 1\cm
  bottom-margin = 1\cm
}

attachHead = \override Slur.attachment = #'(head . head)
stemExtend = \override Voice.Stem.length  = #22
stemNormal = \revert Voice.Stem.length

trebleOne = \new Voice  {
  \clef bass
  \key a \minor
  \time 5/4
  \relative c {
                                %[INTRODUCTION]
    e8 a,4 c8 \acciaccatura {b16[ c]} b8. a16 b4 e,4-^ |
    e'8 a,4 c8 \acciaccatura {b16[ c]} b8. a16 b4 g4-^ |
    g'8 c,4 e8 \acciaccatura {d16[ e]} d8. c16 d4 e4-^ |
    c8 a4 c8 \acciaccatura {b16[ c]} b8. a16 b4 a4-^ |
  }

  \clef violin
  \relative c'' {
                                %[AIR]
    \repeat volta 2 {
      e8 a,4 c8 \acciaccatura {b16[ c]} b8. a16 b4 e,4-^ |
      e'8 a,4 c8 \acciaccatura {b16[ c]} b8. a16 b4 g4-^ |
      g'8 c,4 e8 \acciaccatura {d16[ e]} d8. c16 d4 e4-^ |
      c8 a4 c8 \acciaccatura {b16[ c]} b8. a16 b4 a4-^ |
    }

    \repeat volta 2 {
      b8 e4 fis8 \acciaccatura {g16[ fis]} g8. a16 b4 fis4-^ |
      a,8 d4 e8 \acciaccatura {fis16[ g]} fis8. gis16 a4 e4-^ |
      g,8 c4 d8 \acciaccatura {e16[ d]} e8. fis16 g4 e4-^ |
      <<{g8 e4 \acciaccatura {dis16[ e]} dis8 cis8. dis16 \tieUp e2 ~ |
         \bar "||" \oneVoice \tieUp <e e,>8}
        \\{r2 a,4 ~ a8[ \acciaccatura {gis16[ a]} gis8] fis8. gis16 | s8}>>
      a4 c8 \acciaccatura {b32[ c b c]} b8. a16 b4 e,4-^ ~ |
      <e e'>8 a4 c8 \acciaccatura {b32[ c b c]} b8. a16 b4 g4-^ ~ |
      <g g'>8 c4 e8 \acciaccatura {d32[ e d e]} d8. c16 d4 e4-^ ~ |
      <e e,>8 a,4 c8 \acciaccatura {b32[ c b c]} b8. a16 b4 a4-^ |
    }
  }

  \pageBreak
  \relative c'' {
                                %[TRIO]
    \key a \major
    \repeat volta 2 {
      cis8-. cis4 d8 cis b a16 gis fis e e'4-^( |
      cis8-.) cis4 d8 cis b a16 gis fis e fis'4-^( |
      cis8-.) cis4 d8 cis b a16 gis fis e e'4-^( |
      cis8-.) cis4 d8 cis b a16 gis fis e a4-^ |
    }

    \repeat unfold 2 {
      cis8-. cis4 dis8 e fis gis16 a gis fis gis4-^( |
      cis,8-.) cis4 dis8 e fis dis16 e dis cis dis4-^( |
      cis8-.) cis4 dis8 e fis gis16 a gis fis gis4-^( |
      cis,8-.) cis4 dis8 e fis dis16( e dis cis dis8 disis |
      eis-.) eis4 fis8 eis dis cis16 bis ais gis gis'4-^( |
      eis8-.) eis4 fis8 eis dis cis16 bis ais gis ais'4-^( |
      eis8-.) eis4 fis8 eis dis cis16 bis ais gis gis'4-^( |
      cis,8-.) cis4 d8 cis b a16 gis fis e a'4-^ |
    }
  }

  \break
  \relative c' {
                                %[AIR]
    \key a \minor
    \repeat volta 2 {
      e8 a4 c8 \acciaccatura {b16[ c]} b8. a16 b4 e,4-^ |
      e'8 a,4 c8 \acciaccatura {b16[ c]} b8. a16 b4 g4-^ |
      g'8 c,4 e8 \acciaccatura {d16[ e]} d8. c16 d4 e4-^ |
      c8 a4 c8 \acciaccatura {b16[ c]} b8. a16 b4 a4-^ |
    }

    \repeat volta 2 {
      b8 e4 fis8 \acciaccatura {g16[ fis]} g8. a16 b4 fis4-^ |
      a,8 d4 e8 \acciaccatura {fis16[ g]} fis8. gis16 a4 e4-^ |
      g,8 c4 d8 \acciaccatura {e16[ d]} e8. fis16 g4 e4-^ |
      <<{g8 e4 \acciaccatura {dis16[ e]} dis8 cis8. dis16 \tieUp e2 ~ |
         \bar "||" \oneVoice \tieUp <e e,>8}
        \\{r2 r8 a,8-. ~ a8[ \acciaccatura {gis16[ a]} gis8] fis8. gis16 | s8}>>
      a4 c8 \acciaccatura {b32[ c b c]} b8. a16 b4 e,4-^ ~ |
      <e e'>8 a4 c8 \acciaccatura {b32[ c b c]} b8. a16 b4 g4-^ ~ |
      <g g'>8 c4 e8 \acciaccatura {d32[ e d e]} d8. c16 d4 e4-^ ~ |
      <e e,>8 a,4 c8 \acciaccatura {b32[ c b c]} b8. a16 b4 a4-^ |
    }
  }

  \relative c''' {
                                %[CODA]
    g8 c,4 e8 \acciaccatura {d32[ e d e]} d8. c16 d4 e4-^ ~ |
    <e e,>8 a,4 c8 \acciaccatura {b32[ c b c]} b8. a16 b4 a-^ |
    e'8 a,4 c8 \acciaccatura {b32[ c b c]} b8. a16 b4 a-^ ~ |
    <a a'>8 a4 c8 \acciaccatura {b32[ c b c]} b8. a16 b4 e,_^^\fermata |
  }

  \bar "|."
}

trebleTwo = \new Voice  {
  \relative c' {
  }
}

dynamics = \new Voice  {
}

bassOne = \new Voice  {
  \clef bass
  \key a \minor
  \time 5/4
  \relative c, {
                                %[INTRODUCTION]
    e8 a,4 c8 \acciaccatura {b16[ c]} b8. a16 b4 e,4-^ |
    e'8 a,4 c8 \acciaccatura {b16[ c]} b8. a16 b4 g4-^ |
    g'8 c,4 e8 \acciaccatura {d16[ e]} d8. c16 d4 e4-^ |
    c8 a4 c8 \acciaccatura {b16[ c]} b8. a16 b4 a4-^ |
  }

  \relative c {
                                %[AIR]
    \repeat volta 2 {
      a4 <e' a c> a, <e' gis d'> a,-^ |
      <e' a c> a, <e' a c> g, <g' b f'>-^ |
      c, <g' c e> c, <g' b f'> <e gis d'>-^ |
      a, <e' a c> a, <e' gis d'> <e a c>-^ |
    }

    \repeat volta 2 {
      e4 <b' g'> e, <b' fis'> dis,-^ |
      <a' fis'> d,? <a' fis'> cis, <a' e'>-^ |
      c,? <g' e'> c, <g' e'> b,-^ |
      <a' fis'> b, <a' fis'> e <b' d>-^ | \bar "||"
      <e, a c> a, <e' a c> a, <e' gis d'>-^ |
      a, <e' a c> a, <g' d' f> g,-^ |
      <g' c e> c, <g' c e> <g b f'> <c e g>-^ |
      <e, a c> a, <e' a c> <e gis d'> <e a c>-^ |
    }
  }

  \relative c' {
                                %[TRIO]
    \key a \major
    \repeat volta 2 {
      <<{cis2( cis4 d2) | cis2( cis4 d2) | cis2( cis4 d2) | cis2( cis4 d4 cis4-^)}
        \\{<e, a>4\sustainOn a, <e' a> <e gis>\sustainOn a,-^ |
            <e' a>\sustainOn a, <e' a> <d a'>\sustainOn d,-^ |
            <e' a>\sustainOn a, <eis' a> <fis a>\sustainOn <gis b>-^ |
            <e? a>\sustainOn a, <e' a> b' a-^}
        \\{\stemDown s1 s4 | s1 s4 | s1 s4 | s2. \override NoteColumn.force-hshift = #0.5 e2\sustainOn}>>
    }

                                %[1a volta]
    <<{<gis e'>2 <gis e'>4 <gis dis'>2 | <e cis'>2 <fis cis'>4 <gis bis>2 |
        <cis a'>2 <bis a'>4 <cis gis'>2 | <ais cis fisis>2 <ais cis fisis>4 <gis bis fis'>2}
      \\{gis4\sustainOn cis, gis' gis\sustainOn b,-^ |
         e\sustainOn a, fis' gis\sustainOn gis,-^ |
         cis'\sustainOn fis, bis cis\sustainOn e,-^ |
         ais\sustainOn dis, ais' gis\sustainOn gis,-^}>>
    <<{eis''2( eis4 fis2) | eis2( eis4 fis2) | eis2( eis4 fis2) | cis2( cis4 d cis-^)}
      \\{<gis cis>4\sustainOn cis, <gis' cis> <gis bis>\sustainOn cis,-^ |
          <gis' cis>\sustainOn cis, <gis' cis> <fis cis'>\sustainOn fis,-^ |
          <gis' cis>\sustainOn <gisis bis dis> <ais cis> <fis ais dis>\sustainOn <gis bis>-^ |
          <e? a?>\sustainOn a, <e' a> b' a-^}
      \\{\stemDown s1 s4 | s1 s4 | s1 s4 | s2. \override NoteColumn.force-hshift = #0.5 e2\sustainOn}>>

    \bar "||"
                                %[2a volta]
    <<{<gis e'>2 <gis e'>4 <gis dis'>2 | <e cis'>2 <fis cis'>4 <gis bis>2 |
        <cis ais'>2 <cis a'>4 <cis gis'>2 | <ais cis gis>2 <cis fisis>4 ~ <cis fisis> <bis fis'>-^ |
        eis2( eis4 fis2) | eis2( eis4 fis2)}
      \\{gis,4\sustainOn cis, gis' gis\sustainOn b,-^ |
         e\sustainOn a, fis' gis\sustainOn gis,-^ |
         cis'\sustainOn fis, cis' eis,\sustainOn e-^ |
         ais\sustainOn dis, ais' a\sustainOn gis-^ ~ |
         <gis cis>\sustainOn cis, <gis' cis> <gis bis>\sustainOn cis,-^ |
         <gis' cis>\sustainOn <cis, bis'> <cis b'> <fis ais>\sustainOn fis,-^}>>
    <eis' dis' gisis>(\sustainOn <ais cisis gis'> <dis, cis' fisis>
    <gis bis fis'>\sustainOn <cis, b' eis>-^) |
    <cis b' eis>(\sustainOn <fis ais e'> <b, a' dis>
    <e gis d'>\sustainOn <a, e' cis'>-^) |
  }

  \relative c {
                                %[AIR]
    \key a \minor
    \repeat volta 2 {
      a4 <e' a c> a, <e' gis d'> a,-^ |
      <e' a c> a, <e' a c> g, <g' b f'>-^ |
      c, <g' c e> c, <g' b f'> <e gis d'>-^ |
      a, <e' a c> a, <e' gis d'> <e a c>-^ |
    }

    \repeat volta 2 {
      e4 <b' g'> e, <b' fis'> dis,-^ |
      <a' fis'> d,? <a' fis'> cis, <a' e'>-^ |
      c,? <g' e'> c, <g' e'> b,-^ |
      <a' fis'> b, <a' fis'> e <b' d>-^ | \bar "||"
      <e, a c> a, <e' a c> a, <e' gis d'>-^ |
      a, <e' a c> a, <g' d' f> g,-^ |
      <g' c e> c, <g' c e> <g b f'> <c e g>-^ |
      <e, a c> a, <e' a c> <e gis d'> <e a c>-^ |
    }
  }

  \relative c' {
                                %[CODA]
    <g c e>4 c, <g' c e> <g b f'> <c e g>-^ |
    <e, a c> a, <e' a c> <e gis d'> <e a c>-^ |
    <e a c> a, <e' a c> <e gis d'> <e a c>-^ |
    <e a c> a, <e' a c> <e gis d'> <e a c>^^_\fermata |
  }
}

bassTwo = \new Voice  {
  \relative c {
  }
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
  }
  \midi {
  }
}
