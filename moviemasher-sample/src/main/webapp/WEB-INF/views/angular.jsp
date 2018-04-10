<!doctype html>
<html xmlns:ng="http://angularjs.org" lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Source :: AngularJS Example :: Movie Masher</title>
    <script src="resources/vendor/angular-moviemasher/bower_components/angular/angular.js"></script>
    <script src="resources/vendor/angular-moviemasher/bower_components/angular-ui-bootstrap/dist/ui-bootstrap.js"></script>
    <script src="resources/vendor/angular-moviemasher/bower_components/angular-ui-bootstrap/dist/ui-bootstrap-tpls.js"></script>
    <script src="resources/vendor/angular-moviemasher/bower_components/angular-animate/angular-animate.js"></script>
    <script src="resources/vendor/angular-moviemasher/bower_components/angular-resource/angular-resource.js"></script>
    <script src="resources/vendor/angular-moviemasher/bower_components/angular-file-upload/dist/angular-file-upload.js"></script>
    <script src="resources/vendor/angular-moviemasher/bower_components/angular-bootstrap-colorpicker/js/bootstrap-colorpicker-module.js"></script>
    <script src="resources/vendor/angular-moviemasher/bower_components/opentype.js/dist/opentype.min.js"></script>
    <script src="resources/vendor/angular-moviemasher/bower_components/scriptjs/dist/script.js"></script>
    <script src="resources/vendor/angular-moviemasher/bower_components/@moviemasher/moviemasher.js/src/moviemasher.js"></script>
    <script src="resources/vendor/angular-moviemasher/bower_components/@moviemasher/moviemasher.js/src/others/action.js"></script>
    <script src="resources/vendor/angular-moviemasher/bower_components/@moviemasher/moviemasher.js/src/others/audio.js"></script>
    <script src="resources/vendor/angular-moviemasher/bower_components/@moviemasher/moviemasher.js/src/others/colors.js"></script>
    <script src="resources/vendor/angular-moviemasher/bower_components/@moviemasher/moviemasher.js/src/others/constant.js"></script>
    <script src="resources/vendor/angular-moviemasher/bower_components/@moviemasher/moviemasher.js/src/others/defaults.js"></script>
    <script src="resources/vendor/angular-moviemasher/bower_components/@moviemasher/moviemasher.js/src/others/filter.js"></script>
    <script src="resources/vendor/angular-moviemasher/bower_components/@moviemasher/moviemasher.js/src/others/loader.js"></script>
    <script src="resources/vendor/angular-moviemasher/bower_components/@moviemasher/moviemasher.js/src/others/mash.js"></script>
    <script src="resources/vendor/angular-moviemasher/bower_components/@moviemasher/moviemasher.js/src/others/option.js"></script>
    <script src="resources/vendor/angular-moviemasher/bower_components/@moviemasher/moviemasher.js/src/others/player.js"></script>
    <script src="resources/vendor/angular-moviemasher/bower_components/@moviemasher/moviemasher.js/src/others/players.js"></script>
    <script src="resources/vendor/angular-moviemasher/bower_components/@moviemasher/moviemasher.js/src/others/time.js"></script>
    <script src="resources/vendor/angular-moviemasher/bower_components/@moviemasher/moviemasher.js/src/others/util.js"></script>
	 <script src="resources/vendor/moviemasher/app/app.js"></script>
    <script src="resources/vendor/angular-moviemasher/src/angular-moviemasher.js"></script>
    <link rel="stylesheet" href="resources/vendor/angular-moviemasher/bower_components/bootstrap/dist/css/bootstrap.css">
<!--
    <link rel="stylesheet" href="../node_modules/bootstrap/dist/css/bootstrap-theme.css">
 -->
    <link rel="stylesheet" href="resources/vendor/angular-moviemasher/bower_components/angular-bootstrap-colorpicker/css/colorpicker.css">
    <link rel="stylesheet" href="resources/vendor/angular-moviemasher/app/app.css" />
    
  </head>
  <body ng-app='angular.moviemasher'>
    <div class="amm-ui" style="top:160px;" amm-rest-module-search-params-group="@group" amm-rest-module-search-url="../../../../media/json/:group.json" amm-rest-media-search-params-group="@group" amm-rest-media-search-url="../../../../media/json/:group.json"><!-- ngIf: $amm.supported --><div ng-if="$amm.supported" class="ng-scope">
	<!-- ngInclude: 'views/panels.html' --><div ng-include="'resources/vendor/angular-moviemasher/app/views/panels.html'" class="ng-scope">
<div class="amm-panel amm-player-panel ng-scope">
	<div class="amm-container">
		<div class="amm-head">
			<!-- ngIf: amm_resources.mash.search -->
		</div>
		<div class="amm-player"><canvas id="amm-canvas" width="256" height="144"></canvas></div>
		<div class="amm-foot">
			<table amm-synced="">
				<tbody><tr>
					<td>
						<button type="button" class="btn btn-default btn-sm" ng-click="$amm.player.paused=!$amm.player.paused">
							<span class="hide ng-binding">Play</span>
							<i class="glyphicon glyphicon-play" ng-class="{'glyphicon-play': $amm.player.paused, 'glyphicon-pause': !$amm.player.paused}"></i>
						</button>
					</td>
					<td>
						<input type="range" name="position" step="0.001" value="" min="0" max="1" ng-model="$amm.player.position" ng-disabled="!$amm.player.duration" class="ng-pristine ng-untouched ng-valid ng-not-empty" disabled="disabled">						
					</td>
					<td class="amm-width100 text-center ng-binding">
						00/00
					</td>
					<td>
						<button type="button" class="btn btn-default btn-sm" ng-click="$amm.player.muted=!$amm.player.muted">
							<span class="hide ng-binding">Mute</span>
							<i class="glyphicon glyphicon-volume-up" ng-class="{'glyphicon-volume-off':$amm.player.muted, 'glyphicon-volume-down': ((! $amm.player.muted) &amp;&amp; ($amm.player.volume < 0.5)), 'glyphicon-volume-up': ((! $amm.player.muted) &amp;&amp; ($amm.player.volume >= 0.5))}"></i>
						</button>
					</td>
					<td>
						<input type="range" name="volume" step="0.05" value="" min="0" max="1" ng-model="$amm.player.volume" ng-disabled="$amm.player.muted" class="ng-pristine ng-untouched ng-valid ng-not-empty">
					</td>
				</tr>	
			</tbody></table>	
		</div>
	</div>
</div>
<div class="amm-panel amm-browser-panel ng-scope">
	<div class="amm-container">
		<div class="amm-head">
			Media:
			<select class="form-control-sm ng-pristine ng-untouched ng-valid ng-not-empty" ng-model="amm_browser_group" ng-change="amm_browser_group_change()">
				<!-- ngIf: amm_resources.media.search --><optgroup ng-if="amm_resources.media.search" label="Assets" class="ng-scope">
					<option value="video">Video</option>
					<option value="audio">Audio</option>
					<option value="image">Images</option>
				</optgroup><!-- end ngIf: amm_resources.media.search -->
				<!-- ngIf: amm_resources.module.search --><optgroup ng-if="amm_resources.module.search" label="Modules" class="ng-scope">
					<option value="transition">Transitions</option>
					<option value="effect">Effects</option>
					<option value="theme">Themes</option>
				</optgroup><!-- end ngIf: amm_resources.module.search -->
			</select>
		</div>
		<div class="amm-browser" nv-file-drop="" uploader="uploader">
			<!-- ngRepeat: media in amm_media --><div amm-drag-media="media" ng-repeat="media in amm_media" class="amm-browser-media ng-scope" draggable="true"><div class="amm-browser-media-icon pixelated" ng-style="amm_style_media_icon(media)"></div>


<div class="amm-browser-media-label ng-binding" ng-bind="media.label">Title</div>
</div><!-- end ngRepeat: media in amm_media --><div amm-drag-media="media" ng-repeat="media in amm_media" class="amm-browser-media ng-scope" draggable="true"><div class="amm-browser-media-icon pixelated" ng-style="amm_style_media_icon(media)"></div>


<div class="amm-browser-media-label ng-binding" ng-bind="media.label">Color</div>
</div><!-- end ngRepeat: media in amm_media -->
			<!-- ngIf: $amm.canvas_container_visible -->
		</div>
		<div class="amm-foot">
			<!--
			<button type="button" class="btn btn-default btn-sm" ng-click="log_mash()">
				<i class="glyphicon glyphicon-eye-open"></i>
				Mash
			</button>
			<button type="button" class="btn btn-default btn-sm" ng-click="$amm.canvas_container_visible=!$amm.canvas_container_visible">
				<i class="glyphicon glyphicon-eye-open"></i>
				Canvases
			</button>
			-->
			<!-- ngIf: amm_resources.import.init -->
			<div class="amm-progress ng-hide" ng-show="amm_import_completed>0&amp;&amp;amm_import_completed<1">
				<div class="progress">
					<div style="min-width:25px;width:0%" class="progress-bar ng-binding" role="progressbar">
						0%
					</div>
				</div>
			</div>
			<div ng-show="amm_import_completed==-1" class="amm-error amm-ellipse ng-binding ng-hide" ng-click="amm_import_displayed_status()">
				<strong>× Error:</strong> 
			</div>
		</div>
	</div>
</div>
<div class="amm-panel amm-inspector-panel ng-scope">
	<div class="amm-container">
		<div class="amm-head">
			<span ng-switch="$amm.player.selectedClips.length">
				<!-- ngSwitchWhen: 0 --><span ng-switch-when="0" class="ng-binding ng-scope">Editing Mash: Untitled Mash</span><!-- end ngSwitchWhen: -->
				<!-- ngSwitchWhen: 1 -->
				<!-- ngSwitchDefault: -->
			</span>
		</div>
		<div class="amm-inspector">
			<!-- ngInclude: amm_inspector_include($amm.player.selectedClipOrMash) --><div class="amm-inspector-form ng-scope" ng-include="amm_inspector_include($amm.player.selectedClipOrMash)"><div class="amm-inspector-row ng-scope">
	<input type="text" class="form-input ng-pristine ng-untouched ng-valid ng-not-empty" ng-change="$amm.player.change('label')" ng-model="$amm.player.mash.label" placeholder="Mashed Video Title">
	<label>Label:</label>
</div>
<div class="amm-inspector-row ng-scope">
	<label>Background Color:</label>
	<div class="amm-colorpicker">
		<button colorpicker="rgb" ng-style="{'background-color':$amm.player.mash.backcolor}" type="button" colorpicker-parent="true" ng-change="$amm.player.change('backcolor')" ng-model="$amm.player.mash.backcolor" class="ng-pristine ng-untouched ng-valid ng-not-empty" value="rgb(0,0,0)" style="background-color: rgb(0, 0, 0);"></button>
	<div class="colorpicker dropdown ng-scope colorpicker-position-bottom" style="min-width: 129px;"><div class="dropdown-menu"><colorpicker-saturation style="width: 100px; height: 100px; background-color: rgb(255, 0, 0);"><i style="left: 0px; top: 100px;"></i></colorpicker-saturation><colorpicker-hue style="height: 100px;"><i style="top: 0px;"></i></colorpicker-hue><colorpicker-alpha><i style="top: 0px;"></i></colorpicker-alpha><colorpicker-preview style="background-color: rgb(0, 0, 0);"></colorpicker-preview><button type="button" class="close close-colorpicker">×</button></div></div></div>
</div>
</div>
		</div>
		<div class="amm-foot">
		</div>
	</div>	
</div>
<div class="amm-panel amm-timeline-panel ng-scope">
	<div class="amm-container">
		<div class="amm-head">
			<button type="button" ng-disabled="! $amm.player.can('undo')" class="btn btn-default btn-sm" ng-click="$amm.player.undo()" disabled="disabled">
				<i class="glyphicon glyphicon-chevron-left"></i> 
				Undo
			</button>
			<button type="button" ng-disabled="! $amm.player.can('redo')" class="btn btn-default btn-sm" ng-click="$amm.player.redo()" disabled="disabled">
				Redo 
				<i class="glyphicon glyphicon-chevron-right"></i>
			</button>
			<button type="button" ng-disabled="! $amm.player.can('split')" class="btn btn-default btn-sm" ng-click="$amm.player.split()" disabled="disabled">
				Split
			</button>
			<!-- ngIf: amm_resources.mash.save -->
			<!-- ngIf: !amm_resources.mash.save --><button ng-if="!amm_resources.mash.save" type="button" ng-disabled="!$amm.player.duration" class="btn btn-default btn-sm ng-scope" ng-click="$amm.player.mash={}" disabled="disabled">
				<i class="glyphicon glyphicon-trash"></i>
				Clear
			</button><!-- end ngIf: !amm_resources.mash.save -->
			
			<!-- ngIf: amm_resources.export.init -->
		</div>
		<div class="amm-timeline">
			<amm-timeline-ruler>
				<amm-timeline-rule-back></amm-timeline-rule-back>
				<amm-timeline-rule ng-style="amm_style_rule()" style="left: 90px;">
					<amm-timeline-rule-icon><i class="glyphicon glyphicon-chevron-down"></i></amm-timeline-rule-icon>
					<amm-timeline-rule-line></amm-timeline-rule-line>
				</amm-timeline-rule>
			</amm-timeline-ruler>
			<amm-timeline-track-controls>
				<!-- ngRepeat: track in $amm.player.mash.video | orderBy : 'index' : true --><amm-timeline-track ng-repeat="track in $amm.player.mash.video | orderBy : 'index' : true" class="amm-border-bottom ng-binding ng-scope">
					<i class="glyphicon glyphicon-facetime-video" ng-class="{'glyphicon-tasks':track.index, 'glyphicon-facetime-video':!track.index}"></i>
					0				
				</amm-timeline-track><!-- end ngRepeat: track in $amm.player.mash.video | orderBy : 'index' : true -->
				<!-- ngRepeat: track in $amm.player.mash.audio --><amm-timeline-track ng-repeat="track in $amm.player.mash.audio" class="amm-border-bottom ng-binding ng-scope">
					<i class="glyphicon glyphicon-music"></i>
					0
				</amm-timeline-track><!-- end ngRepeat: track in $amm.player.mash.audio -->
			</amm-timeline-track-controls>
			<div>
				<div class="amm-timeline-drop"></div>
				<amm-timeline-tracks class="amm-timeline-tracks">
					<!-- ngRepeat: track in $amm.player.mash.video | orderBy : 'index' : true --><amm-timeline-track ng-repeat="track in $amm.player.mash.video | orderBy : 'index' : true" class="amm-border-bottom ng-scope" ng-style="{'width':amm_timeline_view_width() + 'px'}" style="width: 501.6px;">
						<!-- ngRepeat: clip in track.clips --></amm-timeline-track><!-- end ngRepeat: track in $amm.player.mash.video | orderBy : 'index' : true -->
					<!-- ngRepeat: track in $amm.player.mash.audio --><amm-timeline-track ng-repeat="track in $amm.player.mash.audio" class="amm-border-bottom ng-scope" ng-style="{'width':amm_timeline_view_width() + 'px'}" style="width: 501.6px;">
						<!-- ngRepeat: clip in track.clips --></amm-timeline-track><!-- end ngRepeat: track in $amm.player.mash.audio -->
				</amm-timeline-tracks>
			</div>
		</div>
		<div class="form-inline amm-foot">
			<table>
				<tbody><tr>
					<td>
						<button type="button" class="btn btn-default btn-sm" ng-click="$amm.player.addTrack('audio')">
							<i class="glyphicon glyphicon-plus"></i>
							<span>Audio Track</span>
							<i class="glyphicon glyphicon-music"></i>
						</button>
					</td>
					<td class="amm-width100">
						<button type="button" class="btn btn-default btn-sm" ng-click="$amm.player.addTrack('video')">
							<i class="glyphicon glyphicon-plus"></i>
							<span>Video Track</span>
							<i class="glyphicon glyphicon-tasks"></i>
						</button>
					</td>
					<td>
						<button type="button" class="btn btn-default btn-sm" ng-click="amm_zoom=0">
							<span>Zoom Out</span>
							<i class="glyphicon glyphicon-zoom-out"></i>
						</button>
					</td>
					<td>
						<input type="range" name="amm_zoom" step="0.05" value="" min="0" max="1" ng-model="amm_zoom" ng-disabled="!$amm.player.duration" class="ng-pristine ng-untouched ng-valid ng-not-empty" disabled="disabled">
					</td>
					<td>
						<button type="button" class="btn btn-default btn-sm" ng-click="amm_zoom=1">
							<span>Zoom In</span>
							<i class="glyphicon glyphicon-zoom-in"></i>
						</button>
					</td>
				</tr>
			</tbody></table>
		</div>
	</div>
</div>
</div>			
</div><!-- end ngIf: $amm.supported -->
<!-- ngIf: !$amm.supported -->
</div>
  </body>
</html>
