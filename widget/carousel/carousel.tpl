<div class="carousel">
    <div class="carousel-wp">
        <ul id="slideContainer">
            <li style="background-color: rgb(0, 0, 0);"><a href="/y/page/quxue"><img src="/widget/carousel/img/p1.jpg" width="960" height="440" /></a></li>
            <li style="background-color: rgb(32, 6, 51);"><a href="/y/page/about"><img src="/widget/carousel/img/p2.jpg" width="960" height="440" /></a></li>
            <li style="background: rgb(156, 0, 102)"><a href="#"><img src="/widget/carousel/img/p3.jpg" width="960" height="440" /></a></li>
            <li style="background: #292823"><a href="#"><img src="/widget/carousel/img/p4.jpg" width="960" height="440" /></a></li>
        </ul>
    </div>
    <ul class="carousel-list">
        <li><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
    </ul>
</div>

{%script%}
    require.async('./carousel.js', function(carousel){
        carousel.init();
    });
{%/script%}