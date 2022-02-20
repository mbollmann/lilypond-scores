\version "2.23.4"

\header {
  composer = "Mikhail Glinka"
  title =    "La Séparation"
  subtitle = "Nocturne"

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

#(set-default-paper-size "a4")
#(ly:set-option 'point-and-click #f)

\paper {
  ragged-last-bottom = ##f
  top-margin = 1\cm
  bottom-margin = 1\cm
  footnote-separator-markup = \markup \null
}

%\layout {
%  \context {
%    \PianoStaff
%    \override StaffGrouper.staff-staff-spacing.padding = #2
%    \override StaffGrouper.staff-staff-spacing.basic-distance = #12
%  }
%}

attachHead = {} %\override Slur.attachment = #'(head . head)

trebleOne = \new Voice  {
  \clef violin
  \key f \minor
  \time 6/8
  \relative c'' {
  \override Staff.NoteCollision.merge-differently-dotted = ##t
  \voiceOne
    c4.-> ~ c4 \oneVoice r8 | \voiceOne c4.-> ~ c4 \oneVoice r8 | \voiceOne c2.-> ~ |
  \oneVoice
    c4 r8 r4 f8( | f,4.)-> ~ f4 r8 | g4.-> ~ g4 r8 | c,2.-> ~ | c4 r8 r4 c'8\( |
%[8], cantabile
    c4. ~ c4 des8 | c4. ~ c4 bes8\) | bes4.\( c4 g8 | bes4. as4\) r8 |
    f4->( e8) g4->( f8) | as4->( g8) bes4->( as8) |
    g4. ~ g8 g \acciaccatura bes as | g4. ~ g4 r8 |
%[16]
    r8 f([ as c f, as)] | r des,([ f bes des, f)] | r e([ g bes e, g)] | r c,([ f as c f,)] |
    r8 \voiceOne bes,( g') \oneVoice r \voiceOne c,( as') \oneVoice |
    r8 \voiceOne des,( bes') \oneVoice r \voiceOne es,( c') ~ |
  \voiceOne
  \phrasingSlurUp
    c4\( bes8 es4 g,8\) | bes4.->( as8) c( des) |
%[24]
    es4.\( ~ es4 f8 | es4. ~ es8\) c\( des |
    \acciaccatura {es16[ f]} es8 d es f ges c, ~ |
    \voiceTwo c4. \voiceOne des4\) \oneVoice r8 \voiceOne |
    f4.\( ~ f4 g8 | f4. ~ f8\) d\( es |
    \acciaccatura {f16[ g]} f8 e f g as d, ~ |
    \voiceTwo d4.( c4)\) \oneVoice r8 |
%[32]
  \voiceOne
    bes'4.( ~ bes4 c8) | \acciaccatura {bes16[ c]} bes8( as g as c, f) |
    bes4.( ~ bes4 c8) | \acciaccatura {bes16[ c]} bes8( as g as bes c) |
  \phrasingSlurNeutral
  \oneVoice
    es->\([ des-> c-> des-> f,-> g->] | as4.-> ~ as8\) g\( f |
    e c des c g as | f4\) r8 r c'\([ \acciaccatura {\attachHead des16[ es]} des8] |
    c f, g as c, f | <g e c>4.\) r8 c\([ \acciaccatura {\attachHead des16[ es]} des8] |
    c g as bes c, c' | f,4\) r8 r c'\([ \acciaccatura {\attachHead des16[ es]} des8] |
    c f, g as c, f | <g e c>4.\) r8 c\([ \acciaccatura {\attachHead des16[ es]} des8] |
    c g as bes c, c' | f, c as' <as f> c, c' |
    <as f> c, c' <as f> c, c'\) | <c as f>2. ~ | <c as f>4 r8 r4 r8 |
%[51]
    <es as, es>4. ~ es8[ es\( \acciaccatura {\attachHead f16[ g]} f8] | es as, bes c es, as\) |
  \phrasingSlurUp
  \voiceOne
    as4( g8) g4( as8) | a4.( bes4) \oneVoice r8 |
    <es g, es>4. ~ es8[ es\( \acciaccatura {\attachHead f16[ g]} f8] | es g, as bes es, es'\) | \voiceOne
    bes4( as8) as4( bes8) | b4.( c4) \oneVoice r8 |
  \phrasingSlurNeutral
  \oneVoice
    <es bes es,>4. ~ es8[ es\( \acciaccatura {\attachHead f16[ ges]} f8] | es ges, as bes ges ges'\) |
    f4\( es8 c'4 c,8 | es[ \acciaccatura {\attachHead des16[ es]} des8 c] des f\) bes,\( ~ |
    bes4. g'4 g,8 | bes[ \acciaccatura {\attachHead as16[ bes]} as8 g] as c\) f,\( ~ |
    f4. g4 d8 | f e c\) <e g>\( c c' | f, c c' g c, c'\) |
%[68]
    c4.\( ~ c4 des8 | c4. ~ c4 bes8\) |
    bes8. bes'16( g e \tuplet 5/3 {b8[ c des g, c])} | bes!4.->( as4) r8 |
    f4->( e8) g4->( f8) | as4->( g8) bes4->( as8) |
    g4. ~ g8[ g \acciaccatura bes as] | g4. ~ g4 r8 |
%[76]
    r8 f([ as c f, as)] | r des,([ f bes des, f)] |
    r e([ g bes e, g)] | r c,([ f as c f,)] |
    r bes,( g') r c,( as') | r des,( bes') r es,( c') ~ |
  \phrasingSlurUp
  \voiceOne
    c4\( bes8 es4 g,8\) | bes4.->( as4) r8 |
%[84]
    r4 r8 bes4.-> ~ | bes c->\( ~ | c2. ~ | c4. bes4\) \oneVoice r8 \voiceOne |
    r4 r8 c4.-> ~ | c d->\( ~ | d2. ~ | d4. c4\) \oneVoice r8 \voiceOne |
%[92]
    <<{\voiceOne \tieUp des4. ~ \voiceTwo \tieUp des4 s8 | s2.} \\ {\voiceOne s4. g( | <f c>) r4 r8}>>
    <<{\voiceOne \tieUp des4. ~ \voiceTwo \tieUp des4 s8 | s2.} \\ {\voiceOne s4. g( | <f c>) r4 r8}>>
  \oneVoice
    <es c'>8->\( <des bes'>-> <c a'>-> <des bes'>-> <as f'>-> <bes g'>-> |
    <c as'>4. ~ <c as'>8\) <bes g'>\( <as f'> |
  \voiceOne
    e'[ c des c g as] | \oneVoice f4\) r8 r4 r8 | \voiceOne
%[100]
    es'4.( ~ es4 f8) | es4->( d8) es4->( d8) |
    des4( c8) des4( c8) | <as c f>4. ~ <as c f>4 \oneVoice r8 | \voiceOne
    c,4.( ~ c4 des8) | c4( b8) c4( b8) |
    <<{f'4( e8) ~ \voiceTwo e4.} \\ {\voiceOne s4. as4( g8)}>> |
  \oneVoice
    <f c as>4 r8 c'4.-> ~ | \voiceOne c2. | \oneVoice f,4 r8 c''4.-> ~ | \voiceOne c2. | \oneVoice
    f,4 r8 r4 r8 | <as, c,>4 r8 r4 r8 | <f as,>2. ~ | <f as,>4 r8 r4 r8 |
%[FIN]
  }
  \bar "|."
}

trebleTwo = \new Voice  {
  \relative c' {
  \voiceTwo
    <c f>8 r r r4 s8 | <c e>8 r r r4 s8 | <c f>8 r r r4 r8 |
  \oneVoice
    \repeat unfold 17 s2.
%[20]
  \voiceTwo
    s8 bes4 s8 c4 | s8 des4 s8 es4 | c'8 f, bes es es, g | bes des, es c4 r8 |
%[24]
  \phrasingSlurDown
    r4 r8 bes'4.\( ~ | bes4. a4\) r8 |
    c4. ~ c4 r8 | \voiceOne es4.-> \voiceTwo bes4 s8 |
    r4 r8 c4.\( ~ | c b4\) r8 |
    d4. ~ d4 r8 | \voiceOne f4.->( e4) \voiceTwo s8 |
%[32]
    <<{\voiceTwo des4. c ~ | <c f> r4 r8 | des4. c ~ | <c f> r4 r8}
    \\{\voiceFour e2. | s2. | e2. | s2.}>>
  \oneVoice
    \repeat unfold 17 s2.
  \voiceTwo
%[53]
    des,2. ~ | des4. ~ des4 s8 | s2. | s2. |
    es2. ~ | es4. ~ es4 s8 | \repeat unfold 9 s2. |
%[68]
    \repeat unfold 14 s |
    c'8 f, bes es es, g | bes des, es c des d |
%[84]
    es4.->\( ~ es4 f8 | es4. ~ es8\) c\( des |
    es e f ges f c | es4. des4\) s8 |
    f4.->\( ~ f4 g8 | f4. ~ f8\) d\( es |
    f fis g as g d | f4. e4\) s8 |
%[92]
    <e bes'>4.( ~ bes'4 c8) | bes([ \acciaccatura {\attachHead as16[ bes]} as8 g] as e f) |
    <e bes'>4.( ~ bes'4 c8) | bes([ \acciaccatura {\attachHead as16[ bes]} as8 g] as bes c) |
    s2. | s |
    g4. e | s2. |
%[100]
    <a c>2. | <as b as'> | <g bes g'> | s |
    a, | <as f'> | <bes g>4. bes | s2. |
    <<{\voiceFour as'4.( g | f4)} \\ {\voiceTwo e2. | s4}>> s2 | \voiceTwo
    <<{\voiceThree \slurDown as'4.( g | \voiceTwo \slurDown f4)} \\ {\voiceTwo e2. | s4}>> s2 | s2. | s | s |
%[FIN]

  }
}

dynamics = \new Voice  {
}

bassOne = \new Voice  {
  \clef bass
  \key f \minor
  \time 6/8
  \relative c' {
      \override Staff.NoteCollision.merge-differently-dotted = ##t
    <as c, f,>8 r r r4 r8 | <bes c, g>8 r r r4 r8 | <as c, as>8 r r r4 r8 | R2. |
    <des f, bes,>8 r r r4 r8 | <d f, b,>8 r r r4 r8 | <g, e c>8 r r r4 r8 | R2. |
%[8]
    as8([ c f as c, f)] | g,([ bes des f bes, des)] |
    g,([ bes c e bes c)] | f,([ as c f as, c)] |
  \voiceOne
    bes,8( c g') as,( c f) | g,( bes e) f,( c' f) | b,([ f' g d' g, f)] | e([ g c c, e g)] |
%[16]
  \phrasingSlurUp
    c4.->( ~ c4 des8) | c4.->( ~ c4 bes8) | bes4\( b8 c4 g8 | bes4.-> as4\) f8 |
    f4->( e8) g4->( f8) | as4->( g8) bes4->( as8) | es'4( des8 c4 bes8) |
  \oneVoice
    <as es as,>4. ~ <as es as,>4 r8 |
%[24]
  \voiceOne
    ges8([ bes c es bes c)] | f,([ bes c f c bes)] |
    f([ a c f a, c)] | bes,([ des f bes des, f)] |
    as([ c d f c d)] | g,([ c d g d c)] |
    g([ b d g b, d)] | c,([ e g c e, g)] |
%[32]
  \oneVoice
    c,([ bes' c e c bes)] | c,([ as' c f c as)] |
    c,([ bes' c e c bes)] | f([ as c f as, c)] |
  \voiceOne
    bes,([ des g bes des, g)] | \oneVoice c,([ f as c f, as)] \voiceOne |
    c, e g bes4 \oneVoice r8 |
  \oneVoice
    \repeat unfold 2
    {<as c, f,>4 <as c, f,>8 <as c, f,>4. ~ | <as c, f,> ~ <as c, f,>4 r8 |
     <bes c, f,>4 <bes c, f,>8 <bes c, f,>4. ~ | <bes c, f,> ~ <bes c, f,>4 r8 |}
    <as c, f,>4. \clef violin <as'' f> | <as c> <c as'> | <as f'>2. ~ | <as f'>4 r8 r4 r8 | \clef bass
%[51]
    <c,, es, as,>4 <c es, as,>8 <c es, as,>4. ~ | <c es, as,> r4 r8 |
  \voiceOne
    es,2. ~ | es4. ~ es4 \oneVoice r8 |
    <bes es des'>4 <bes es des'>8 <bes es des'>4. ~ | <bes es des'> r4 r8 | \voiceOne
    es2. ~ | es4. ~ es4 \oneVoice r8 |
  \oneVoice
    <ges es bes ges>4 <ges es bes ges>8 <ges es bes ges>4. ~ | <ges es bes ges> r4 r8 |
    a8( c f a4) r8 | bes,( des f bes4) r8 |
    e,,( g c e4) r8 | f,( as c f4) r8 | b,,( d g b4) r8 |
    <c g c,>4 r8 \clef violin <bes' des>4 r8 | <as c>4 r8 \clef bass <e bes>4 r8 |
%[68]
  \voiceOne
    as,8([ c f as c, f)] | g,([ bes des f bes, des)] |
  \oneVoice
    g,([ bes c e bes c)] | f,([ as c f as, c)] |
  \voiceOne
    bes,( c g') as,( c f) | g,( bes e) f,( c' f) |
    b,([ f' g d' g, f)] | e([ g c c, e g)] |
%[76]
    c4.->( ~ c4 des8) | c4.->( ~ c4 bes8) |
    bes4\( b8 c4 g8 | bes4.-> as4\) f8 |
    f4->( e8) g4->( f8) | as4->( g8) bes4->( as8) |
    es'4( des8 c4 bes8) |
  \oneVoice
    <as es as,>4. ~ <as es as,>4 r8 |
%[84]
    ges,8([ ges' bes ges' bes, ges)] | f,([ f' bes c bes f)] |
    f,([ f' a c a f)] | \voiceOne bes,[ des f bes f des] | \oneVoice
    as([ as' c as' c, as)] | g,([ g' c d c g)] |
    g,([ g' b d b g)] | c,([ e g c g e)] |
%[92]
    c([ bes' c e c bes)] | c,([ as' c f as, c)] |
    c,([ bes' c e bes c)] | f,([ as c f c as)] |
  \voiceOne
    bes,( des g bes4.) | c,8( f as c4.) |
    c,8( e g bes4.) | \oneVoice <as c, f,>4 f8 f4 f8 | \voiceOne
%[100]
    ges'2.\( | f | e | f4\) f,8 f4 f,8 |
    es'2.\( | d | des4. c\) | <c f,>4 r8 r4 r8 |
    \tieDown
    <f bes des>2.( ~ | <f as c>4) r8 r4 r8 \clef violin |
    <f' bes des>2.( ~ | <f as c>4) r8 r4 r8 \clef bass |
    \tieNeutral
    <c, f,>4 r8 r4 r8 | <c f,>2. ~ | <c f,>4 r8 r4 r8 |
%[FIN]

  }
}

bassTwo = \new Voice  {
  \relative c {
    \repeat unfold 12 s2.
  \voiceTwo
%[12]
    bes4. as | g f | b r | c r |
%[16]
    as'2. | g | e | f4. ~ f4 r8 |
    <bes, g>4. <c as> | <des bes> <es c> | des es | s2. |
%[24]
    ges2. | f | f4. r4 r8 | bes,2. |
    as'2. | g | g4. r4 r8 | c,2. |
%[32]
    s2. | s | s | s | bes | s | c4. ~ c4 s8 |
    \repeat unfold 14 s2.
%[53]
    bes4. ~ bes4 as8 | g4. ~ g4 s8 | s2. | s2. |
    c4. ~ c4 bes8 | as4. ~ as4 s8 | \repeat unfold 9 s2. |
%[68]
    as'2. | g | s | s |
    bes,4. as | g f | b r | c r |
%[76]
    as'2. | g | e | f4. ~ f4 r8 |
    <bes, g>4. <c as> | <des bes> <es c> |
    des es | s2. |
%[84]
    s | s | s | bes4. r4 r8 |
    \repeat unfold 8 s2.
    bes | c | c | s |
%[100]
    r4 f8 f4. | r4 f8 f4. | r4 f8 f4. | s2. |
    r4 f,8 f4. | r4 f8 f4. | r4 f8 f4. | \repeat unfold 8 s2. |
%[FIN]

  }
}

\score {
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

  \layout {}
}
