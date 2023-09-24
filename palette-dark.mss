/* ****************************************************************** */
/* OSM BRIGHT for Imposm                                              */
/* ****************************************************************** */

/* For basic style customization you can simply edit the colors and
 * fonts defined in this file. For more detailed / advanced
 * adjustments explore the other files.
 *
 * GENERAL NOTES
 *
 * There is a slight performance cost in rendering line-caps.  An
 * effort has been made to restrict line-cap definitions to styles
 * where the results will be visible (lines at least 2 pixels thick).
 */

/* ================================================================== */
/* FONTS
/* ================================================================== */

/* directory to load fonts from in addition to the system directories */
Map { font-directory: url(./fonts); }

/* set up font sets for various weights and styles */
@sans_lt:       "Nunito Sans Medium";
@sans_lt_italic:    "Nunito Sans Italic";
@sans:          "Nunito Sans Bold";
@sans_italic:   "Nunito Sans Semibold Italic";
@sans_bold:  "Nunito Sans Bold";
@sans_bold_italic:  "Nunito Sans Bold Italic";

/* Some fonts are larger or smaller than others. Use this variable to
   globally increase or decrease the font sizes. */
/* Note this is only implemented for certain things so far */
@text_adjust: 0;

/* ================================================================== */
/* LANDUSE & LANDCOVER COLORS
/* ================================================================== */

@land:              #5a5a5a;
@water:             #204360;
@grass:             #6f826f;
@beach:             #9f9783;
@park:              #868686;
@cemetery:          #9e9e9e;
@wooded:            #132700;
@agriculture:       #9f8606;

@building:          #a4a4a4;
@hospital:          #e8c4c0;
@school:            #7c7c7c;
@sports:            #6f826f;

@residential:       @land * 0.98;
@commercial:        @land * 0.97;
@industrial:        @land * 0.96;
@parking:           #717171;

/* ================================================================== */
/* ROAD COLORS
/* ================================================================== */

/* For each class of road there are three color variables:
 * - line: for lower zoomlevels when the road is represented by a
 *         single solid line.
 * - case: for higher zoomlevels, this color is for the road's
 *         casing (outline).
 * - fill: for higher zoomlevels, this color is for the road's
 *         inner fill (inline).
 */

@motorway_line:     #943838;
@motorway_fill:     lighten(@motorway_line,10%);
@motorway_case:     @motorway_line * 0.9;

@trunk_line:        #a35229;
@trunk_fill:        lighten(@trunk_line,10%);
@trunk_case:        @trunk_line * 0.9;

@primary_line:      #b88a2e;
@primary_fill:      lighten(@primary_line,10%);
@primary_case:      @primary_line * 0.9;

@secondary_line:    #98831b;
@secondary_fill:    lighten(@secondary_line,10%);
@secondary_case:    @secondary_line * 0.9;

@standard_line:     @land * 0.85;
@standard_fill:     #9c9c9c;
@standard_case:     @land * 0.9;

@pedestrian_line:   @standard_line;
@pedestrian_fill:   #b5b5b5;
@pedestrian_case:   @land;

@cycle_line:        @standard_line;
@cycle_fill:        #b5b5b5;
@cycle_case:        @land;

@rail_line:         #999;
@rail_fill:         #9c9c9c;
@rail_case:         @land;

@aeroway:           #ddd;

/* ================================================================== */
/* BOUNDARY COLORS
/* ================================================================== */

@admin_2:           #324;

/* ================================================================== */
/* LABEL COLORS
/* ================================================================== */

/* We set up a default halo color for places so you can edit them all
   at once or override each individually. */
@place_halo:        fadeout(#fff,34%);

@country_text:      #435;
@country_halo:      @place_halo;

@state_text:        #546;
@state_halo:        @place_halo;

@city_text:         #444;
@city_halo:         @place_halo;

@town_text:         #666;
@town_halo:         @place_halo;

@poi_text:          #888;

@road_text:         #777;
@road_halo:         #fff;

@other_text:        #888;
@other_halo:        @place_halo;

@locality_text:     #aaa;
@locality_halo:     @land;

/* Also used for other small places: hamlets, suburbs, localities */
@village_text:      #888;
@village_halo:      @place_halo;

/* ****************************************************************** */



