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

//
// arpeggiator patterns, based on Shruthi user manual
// http://mutable-instruments.net/shruthi1/manual
//
// Olivier Gillet, Mutable instruments SARL 2011-2013.
// Except where otherwise noted, content on this site is licensed under a cc-by-sa 3.0 license.
//
// As such, this class is dual licensed GPL v3.0 or later as described above
// and also under the cc-by-sa 3.0 license per the Share Alike clause
//
public class Patterns
{

    //  1: o o o o o o o o 
    fun static Pattern p1()
    {
        return pattern(1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0);
    }

    //  2: ooo ooo ooo ooo 
    fun static Pattern p2()
    {
        return pattern(1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0);
    }

    //  3: o o ooooo o oooo
    fun static Pattern p3()
    {
        return pattern(1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1);
    }

    //  4: o o oo oo o oo o
    fun static Pattern p4()
    {
        return pattern(1, 0, 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 1, 1, 0, 1);
    }

    //  5: oooo oo oooo oo 
    fun static Pattern p5()
    {
        return pattern(1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 0);
    }

    //  6: o  o    o  o    
    fun static Pattern p6()
    {
        return pattern(1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0);
    }

    //  7: o  o  o o  o  o 
    fun static Pattern p7()
    {
        return pattern(1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0);
    }

    //  8: o  o  o  o  o o 
    fun static Pattern p8()
    {
       return pattern(1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0);
    }

    //  9: o o  o  o  o  o 
    fun static Pattern p9()
    {
        return pattern(1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0);
    }

    // 10: oo oo oooo oo oo
    fun static Pattern p10()
    {
        return pattern(1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1);
    }

    // 11: ooooo oo oo ooo 
    fun static Pattern p11()
    {
        return pattern(1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 0);
    }

    // 12: o   o   o  o o o
    fun static Pattern p12()
    {
        return pattern(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1);
    }

    // 13: o  oo   o o o oo
    fun static Pattern p13()
    {
        return pattern(1, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1);
    }

    // 14: o     oooooo oo 
    fun static Pattern p14()
    {
        return pattern(1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0);
    }

    // 15: o       o   o oo
    fun static Pattern p15()
    {
        return pattern(1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 1);
    }

    /*

      01010, -+-+-, -x-x-,  o o ,  x x , .x.x., etc.

    fun static Pattern pattern(string p)
    {
    }
    */

    fun static Pattern pattern(int v0, int v1, int v2, int v3)
    {
        Pattern pattern;
        pattern.size(4);
        pattern.pattern.add(v0);
        pattern.pattern.add(v1);
        pattern.pattern.add(v2);
        pattern.pattern.add(v3);
        return pattern;
    }

    fun static Pattern pattern(int v0, int v1, int v2, int v3, int v4, int v5, int v6, int v7)
    {
        Pattern pattern;
        pattern.size(8);
        pattern.pattern.add(v0);
        pattern.pattern.add(v1);
        pattern.pattern.add(v2);
        pattern.pattern.add(v3);
        pattern.pattern.add(v4);
        pattern.pattern.add(v5);
        pattern.pattern.add(v6);
        pattern.pattern.add(v7);
        return pattern;
    }

    fun static Pattern pattern(int v0, int v1, int v2, int v3, int v4, int v5, int v6, int v7,
                               int v8, int v9, int v10, int v11, int v12, int v13, int v14, int v15)
    {
        Pattern pattern;
        pattern.pattern.add(v0);
        pattern.pattern.add(v1);
        pattern.pattern.add(v2);
        pattern.pattern.add(v3);
        pattern.pattern.add(v4);
        pattern.pattern.add(v5);
        pattern.pattern.add(v6);
        pattern.pattern.add(v7);
        pattern.pattern.add(v8);
        pattern.pattern.add(v9);
        pattern.pattern.add(v10);
        pattern.pattern.add(v11);
        pattern.pattern.add(v12);
        pattern.pattern.add(v13);
        pattern.pattern.add(v14);
        pattern.pattern.add(v15);
        return pattern;
    }
}
