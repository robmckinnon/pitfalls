# [Pitfalls](https://llllllll.co/t/pitfalls/37795)

>  item: There are [_pitfalls_](https://llllllll.co/t/pitfalls/37795) in using equal division within which
<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
> to calculate 2-interval-patterns which the unwary traveler
<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
> will most certainly fall into.
<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
>                                                  - Erv Wilson [0]

### Changelog

#### v0.3.0 _tutti terpstra_

* Add "browse scale by name" input in norns screen UI
* Update named scales list from [Scala](http://www.huygens-fokker.org/docs/modename.html)
* Add initial pitch-bent MIDI out support (disabled for now)

#### v0.2.0 _giojoso geola_

* Add "circle" display - show intervals on circle spokes.
* Add "strings" display - show line lengths proportionate to interval ratios.
* K3 toggles original, circle, and strings display.
* Add M medium step to scale sequences.
* Add more just intervals and chords.
* Label scale in display with an exisiting scale name when it exists in
  [MusicUtil](https://monome.org/docs/norns/api/modules/MusicUtil.html),
  the [Xenharmonic Wiki](https://en.xen.wiki/w/Main_Page)[1], or
  [Scala](http://www.huygens-fokker.org/docs/modename.html)[2].

#### v0.1.1 _einfach einem_

* Define scale as a sequence of `Ls` steps.
* Configure large `L` and small `s` step sizes, and scale `notes` length.
* Configure pitch using `base` note, `Hz` tuning, `octave`, and scale `mode` and `tonic` note.
* See scale intervals rendered next to sequence, e.g. `M3`, `P5`, etc.
* Arpeggiate notes in scale.
* Play scale notes using _Grid_ as a isomorphic keyboard.

### References

[0] [An Introduction to the Moments of Symmetry](http://anaphoria.com/wilsonintroMOS.html)
[1] [Xenharmonic Wiki](https://en.xen.wiki/w/Main_Page)
[2] [Scala](http://www.huygens-fokker.org/docs/modename.html)
