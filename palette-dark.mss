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

@land:              #1a2636;
@sanded:            #1b232e;
@rocked:            #1b2330;
@beached:           #3c4d61;
@glacier:           #495877;
@water:             #07080c;
@grass:             #18474e;
@park:              #1e6c62;
@cemetery:          #1e6c62;
@wooded:            #12353b;
@agriculture:       #7b6704;

@building:          #808080;
@hospital:          #83382f;
@school:            #83382f;
@sports:            #1e6c62;

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

@motorway_line:     #5e6e8f;
@motorway_fill:     lighten(@motorway_line,10%);
@motorway_case:     @motorway_line * 0.9;

@trunk_line:        #8D8996;
@trunk_fill:        lighten(@trunk_line,10%);
@trunk_case:        @trunk_line * 0.9;

@primary_line:      #8B9299;
@primary_fill:      lighten(@primary_line,10%);
@primary_case:      @primary_line * 0.9;

@secondary_line:    #8B9299;
@secondary_fill:    lighten(@secondary_line,10%);
@secondary_case:    @secondary_line * 0.9;

@standard_line:     @land * 0.85;
@standard_fill:     #B0B0B0;
@standard_case:     @land * 0.9;

@pedestrian_line:   @standard_line;
@pedestrian_fill:   #D6D2C7;
@pedestrian_case:   @land;

@cycle_line:        @standard_line;
@cycle_fill:        #D6D2C7;
@cycle_case:        @land;

@rail_line:         #E3E3E3;
@rail_fill:         #E3E3E3;
@rail_case:         @land;

@aeroway:           #8F9BA8;

/* ================================================================== */
/* LABEL COLORS
/* ================================================================== */

/* We set up a default halo color for places so you can edit them all
   at once or override each individually. */
@place_halo:        fadeout(#fff,34%);
@country_halo_color:      fadeout(#d7e4ea,34%);

@country_text:      #d7e4ea;
@country_halo:      @country_halo_color;

@state_text:        #d7e4ea;
@state_halo:        @country_halo_color;

@city_text:         #d7e4ea;
@city_halo:         @country_halo_color;

@town_text:         #d7e4ea;
@town_halo:         @country_halo_color;

@poi_text:          #888;

@road_text:         #777;
@road_halo:         #fff;

@other_text:        #F3F0F2;
@other_halo:        @place_halo;

@locality_text:     #B5B7BA;
@locality_halo:     @land;

/* Also used for other small places: hamlets, suburbs, localities */
@village_text:      #88F3F0F28;
@village_halo:      @place_halo;

/* ****************************************************************** */
