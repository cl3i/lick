/*

    LiCK  Library for ChucK.
    Copyright (c) 2007-2013 held jointly by the individual authors.

    This file is part of LiCK.

    LiCK is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    LiCK is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with LiCK.  If not, see <http://www.gnu.org/licenses/>.

*/

public class Tremolo
{
    Gain input;
    Gain tremolo;
    Gain output;
    SinOsc sinLfo;
    SqrOsc sqrLfo;
    TriOsc triLfo;
    0.33 => float sinMix;
    0.33 => float sqrMix;
    0.33 => float triMix;
    1.0 => float _rate;
    1.0 => float _depth;

    {
        input => tremolo => output;
        sinLfo => blackhole;
        sqrLfo => blackhole;
        triLfo => blackhole;

        rate(_rate);
        depth(_depth);

        spork ~ update();
    }

    fun float rate()
    {
        return _rate;
    }

    fun float rate(float rate)
    {
        rate => _rate;
        _rate => sinLfo.freq;
        _rate => sqrLfo.freq;
        _rate => triLfo.freq;
        return _rate;
    }

    fun float depth()
    {
        return _depth;
    }

    fun float depth(float depth)
    {
        depth => _depth;
        _depth * sinMix => sinLfo.gain;
        _depth * sqrMix => sqrLfo.gain;
        _depth * triMix => triLfo.gain;
        return _depth;
    }

    fun void update()
    {
        while (true)
        {
            1::samp => now;
            sinLfo.last() * sinMix + sqrLfo.last() * sqrMix + triLfo.last() * triMix => float last;
            Interpolate.linear(last, -1.0, 1.0, 0.0, 1.0) => tremolo.gain;
        }
    }
}