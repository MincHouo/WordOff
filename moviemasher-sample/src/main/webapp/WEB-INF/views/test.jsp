<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Video player</title>
    <link rel="stylesheet" href="resources/vendor/timeline/example/video-player/css/bootstrap.css"/>
    <link rel="stylesheet" href="resources/vendor/timeline/css/reset.css"/>
    <link rel="stylesheet" href="resources/vendor/timeline/css/timeline.css"/>
    <link rel="stylesheet" href="resources/vendor/timeline/example/video-player/css/player.css"/>

    <link rel="stylesheet" href="resources/vendor/timeline/example/video-player/js/video-js/video-js.css">
    <script type="text/javascript" src="resources/vendor/timeline/example/video-player/js/video-js/video.js"></script>

    <script type="text/javascript" src="resources/vendor/timeline/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="resources/vendor/timeline/js/jquery-ui-1.10.3.custom.min.js"></script>
    <script type="text/javascript" src="resources/vendor/timeline/js/timeline.js"></script>
    <script type="text/javascript" src="resources/vendor/timeline/example/video-player/js/player.js"></script>
</head>
<body>

<div class="player">
    <video id="video-player" class="video-js vjs-default-skin" controls preload="none" width="640" height="264"
    poster="resources/img/kakao.jpg"
    data-setup="{}">
    <source src="resources/video/pika.mp4" type='video/mp4' />
    <track kind="captions" src="demo.captions.vtt" srclang="en" label="English"></track>
    </video>

    <div class="timeline">
        <ul class="frames unstyled">
            <li class="pointer">
                <div class="line"></div>
            </li>
            <li class="frame">
                <div class="line"></div>
                <div class="time"></div>
            </li>
        </ul>
        <ul class="tags-lines unstyled">
            <li>
                <div class="tag">
                    <span class="title"></span>
                </div>
            </li>
        </ul>
    </div>
</div>

<div class="sidebar">
    <div class="tag-buttons">
        <button type="button" class="btn active">One</button>
        <button type="button" class="btn">Two</button>
        <button type="button" class="btn">Three</button>
        <button type="button" class="btn">Four</button>
    </div>
    <form class="form-horizontal">
        <div class="control-group">
            <label class="control-label">Start</label>
            <div class="controls">
                <input type="text" name="start" value="0"/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Length</label>
            <div class="controls">
                <input type="text" name="length" value="15"/>
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                <button type="submit" class="btn">OK</button>
            </div>
        </div>
    </form>
</div>

</body>
</html>