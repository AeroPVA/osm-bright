/* BASE.MSS CONTENTS
 * - Landuse & landcover
 * - Water areas
 * - Water ways
 * - Administrative Boundaries
 *
 */

/* ================================================================== */
/* LANDUSE & LANDCOVER
/* ================================================================== */

#land-high[zoom>=0] {
  polygon-fill: @land;
  polygon-gamma: 1.0;
}
#land-glaciar[zoom>=0] {
  polygon-fill: @glaciar;
  polygon-gamma: 1.0;
}

#landuse_gen0[zoom>=3][zoom<=9], 
#landuse_gen1[zoom>9][zoom<=12],
#landuse[zoom>12] {
  [type='sand']::natural          { polygon-fill: @sanded; }
  [type='coastline']::natural     { polygon-fill: @sanded; }
  [type='beach']::natural         { polygon-fill: @sanded; }
  [type='savanna']::natural       { polygon-fill: @sanded; } 
  [type='puszta']::natural        { polygon-fill: @sanded; }
  [type='tussock']::natural       { polygon-fill: @sanded; }
  [type='dune']::natural          { polygon-fill: darken(@sanded,35%); }
  [type='grey_dune']::natural     { polygon-fill: darken(@sanded,25%); }
  [type='steppe']::natural        { polygon-fill: darken(@sanded,30%); }
  [type='desert']::natural        { polygon-fill: @sanded; }
  [type='blockfield']::natural    { polygon-fill: @rocked; }
  [type='scree']::natural         { polygon-fill: @rocked; }
  [type='bare_rock']::natural     { polygon-fill: @rocked; }
  [type='cliff']::natural         { polygon-fill: @rocked; }
  [type='landfill']::natural      { polygon-fill: @rocked; }
  [type='ridge']::natural         { polygon-fill: @rocked; }
  [type='glacier']       { polygon-fill: @glaciar; }
  [type='cemetery']      { polygon-fill: @cemetery; }
  [type='hospital']      { polygon-fill: @hospital; }
  [type='industrial']    { polygon-fill: @industrial; }
  [type='commercial']    { polygon-fill: @industrial; }
  [type='pedestrian']    { polygon-fill: @pedestrian_fill; }
  [type='residential']   { polygon-fill: @residential; }
  [type='sports_center'] { polygon-fill: @sports; }
  [type='stadium']       { polygon-fill: @sports; }
  [type='pitch']         { polygon-fill: @sports; }
  [type='golf_course']   { polygon-fill: @sports; }
  [type='college']       { polygon-fill: @school; }
  [type='university']    { polygon-fill: @school; }
  [type='school']        { polygon-fill: @school; }
  [type='meadow']        { polygon-fill: @parking; }
  [type='parking']       { polygon-fill: @parking; }
  [type='grass']::natural         { polygon-fill: @grass; }
  [type='grassland']::natural     { polygon-fill: @grass; }
  [type='heath']::natural         { polygon-fill: @grass; }
  [type='valley']::natural        { polygon-fill: @grass; } 
  [type='prairie']::natural       { polygon-fill: @grass; } 
  [type='dehesa']::natural        { polygon-fill: @grass; }
  [type='pampas']::natural        { polygon-fill: @grass; }
  [type='common']::natural        { polygon-fill: @park; }
  [type='park']::natural          { polygon-fill: @park; }
  [type='forest']::natural        { polygon-fill: @wooded; } 
  [type='wood']::natural          { polygon-fill: @wooded; }
  [type='tundra']::natural        { polygon-fill: @wooded; }
  [type='scrub']::natural         { polygon-fill: @wooded; }
  [type='fell']::natural          { polygon-fill: @wooded; }
  [type='oak_savanna']::natural   { polygon-fill: @wooded; }
  [type='orchard']::natural       { polygon-fill: @wooded; }
  [type='mangrove']::natural      { polygon-fill: @wooded; } 
  [type='wetland']::natural       { polygon-fill: darken(@wooded,10%); } 
} 

#landuse_overlays[type='nature_reserve'][zoom>=0] {
  line-color: darken(@wooded,25%);
  line-opacity:  0.4;
  line-dasharray: 1,1;
  polygon-fill: darken(@wooded,25%);
  polygon-opacity: 0.1;
  [zoom<=7] { line-width: 0.4; }
  [zoom=8] { line-width: 0.6; }
  [zoom=9] { line-width: 0.8; }
  [zoom=10] { line-width: 1.0; }
  [zoom=11] { line-width: 1.5; }
  [zoom>=12] { line-width: 2.0; }
}

/* ---- BUILDINGS ---- */
#buildings[zoom>=12][zoom<=16] {
  polygon-fill:@building;
  [zoom>=14] {
    line-color:darken(@building,5%);
    line-width:0.2;
  }
  [zoom>=16] {
    line-color:darken(@building,10%);
    line-width:0.4;
  }
}
// At the highest zoom levels, render buildings in fancy pseudo-3D.
// Ordering polygons by their Y-position is necessary for this effect
// so we use a separate layer that does this for us.
#buildings[zoom>=17][type != 'hedge'] {
  building-fill:@building;
  building-height:1.25;
}

#buildings[zoom>=17][type = 'hedge'] {
  building-fill:@wooded;
  building-height:1.25;
}

/* ================================================================== */
/* WATER AREAS
/* ================================================================== */

Map { background-color: @water; }

#water_gen0[zoom>=6][zoom<=9],
#water_gen1[zoom>9][zoom<=12],
#water[zoom>12] {
  polygon-fill: @water;
}

/* ================================================================== */
/* WATER WAYS
/* ================================================================== */

#waterway_low[zoom>=8][zoom<=12] {
  line-color: @water;
  [zoom=8] { line-width: 0.1; }
  [zoom=9] { line-width: 0.2; }
  [zoom=10]{ line-width: 0.4; }
  [zoom=11]{ line-width: 0.6; }
  [zoom=12]{ line-width: 0.8; }
}

#waterway_med[zoom>=13][zoom<=14] {
  line-color: @water;
  [type='river'],
  [type='canal'] {
    line-cap: round;
    line-join: round;
    [zoom=13]{ line-width: 1; }
    [zoom=14]{ line-width: 1.5; }
  }
  [type='stream'] {
    [zoom=13]{ line-width: 0.2; }
    [zoom=14]{ line-width: 0.4; }
  }
}
  
#waterway_high[zoom>=15] {
  line-color: @water;
  [type='river'],
  [type='canal'] {
    line-cap: round;
    line-join: round;
    [zoom=15]{ line-width: 2; }
    [zoom=16]{ line-width: 3; }
    [zoom=17]{ line-width: 4; }
    [zoom=18]{ line-width: 5; }
    [zoom=19]{ line-width: 6; }
    [zoom>19]{ line-width: 7; }
  }
  [type='stream'] {
    [zoom=15]{ line-width: 0.6; }
    [zoom=16]{ line-width: 0.8; }
    [zoom=17]{ line-width: 1; }
    [zoom=18]{ line-width: 1.5; }
    [zoom>18]{ line-width: 2; }
  }
  [type='ditch'],
  [type='drain'] {
    [zoom=15]{ line-width: 0.1; }
    [zoom=16]{ line-width: 0.3; }
    [zoom=17]{ line-width: 0.5; }
    [zoom=18]{ line-width: 0.7; }
    [zoom=19]{ line-width: 1; }
    [zoom>19]{ line-width: 1.5; }
  }
}

/* ================================================================== */
/* ADMINISTRATIVE BOUNDARIES
/* ================================================================== */


#admin[admin_level='2'][zoom>1] {
  line-color:@admin_2;
  line-width:0.0;
  [zoom=2] { line-opacity: 0.25; }
  [zoom=3] { line-opacity: 0.3; }
  [zoom=4] { line-opacity: 0.4; }
}

/* ================================================================== */
/* BARRIER POINTS
/* ================================================================== */


#barrier_points[zoom>=17][stylegroup = 'divider'] {
  marker-height: 2;
  marker-fill: #c7c7c7;
  marker-line-opacity:0;
  marker-allow-overlap:true;
}

/* ================================================================== */
/* BARRIER LINES
/* ================================================================== */

#barrier_lines[zoom>=17][stylegroup = 'gate'] {
  line-width:2.5;
  line-color:#aab;
  line-dasharray:3,2;
}

#barrier_lines[zoom>=17][stylegroup = 'fence'] {
  line-width:1.75;
  line-color:#aab;
  line-dasharray:1,1;
}

#barrier_lines[zoom>=17][stylegroup = 'hedge'] {
  line-width:3;
  line-color:darken(@park,5%);

}
