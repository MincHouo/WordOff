/*jshint unused:false */
/*global MovieMasher:true*/
'use strict';
var mm_player;
function mm_update_textarea() {
  var textarea = document.getElementById('mm-textarea');
  textarea.value = JSON.stringify(mm_player.mash, null, '\t');
}

function addTrack(type){
    var player = mm_player;
     player.__track_create('audio');
 };

function mm_load() {
	  var canvas = document.getElementById('mm-canvas');
	  
	  if (canvas && MovieMasher && MovieMasher.supported) {
	    mm_player = MovieMasher.player();
	    // register the filters we use
	    MovieMasher.register(MovieMasher.Constant.filter, [
	      { "id":"color", "source": "resources/vendor/moviemasher/dist/filters/color.js" },
	      { "id":"drawtext", "source": "resources/vendor/moviemasher/dist/filters/drawtext.js" },
	      { "id":"overlay", "source": "resources/vendor/moviemasher/dist/filters/overlay.js" },
	      { "id":"scale", "source": "resources/vendor/moviemasher/dist/filters/scale.js" },
	      { "id":"setsar", "source": "resources/vendor/moviemasher/dist/filters/setsar.js" }
	    ]);
	    // register at least a default font, since we're allowing a module that uses fonts
	    MovieMasher.register(MovieMasher.Constant.font, {
	      "label": "Blackout Two AM",
	      "id":"com.moviemasher.font.default",
	      "source": "resources/vendor/moviemasher/app/media/font/default.ttf",
	      "family":"Freemiere Mash"
	    });
	    mm_player.canvas_context = canvas.getContext('2d');
	    mm_player.mash = {};
	    mm_update_textarea();
	  }

}