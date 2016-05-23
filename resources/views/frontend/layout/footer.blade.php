<style>
.tagcloud a, #footer.litex .tagcloud a {
    background: none repeat scroll 0 0 #fefefe;
    border: 2px solid #e1e1e1;
    border-radius: 3px;
    color: #898989;
    display: inline-block;
    font-size: 11px;
    font-weight: bold;
    line-height: 16px;
    margin: 0 5px 5px 0;
    min-width: 18px;
    padding: 4px 10px;
    text-decoration: none;
    text-transform: uppercase;
    width: auto;
}
.tagcloud a:hover, #footer.litex .tagcloud a:hover {
    border-color: #ffcc00;
    color: #333;
}
.tagcloud a {
    background: none repeat scroll 0 0 #363636;
    border: medium none;
    color: #808080;
    display: inline-block;
    margin: 3px;
    padding: 7px 14px;
}
.tagcloud a:hover {
    background: none repeat scroll 0 0 #e84a52;
    color: #fff !important;
}
.litex .footer-in .tagcloud a {
    color: #898989;
}
.litex .footer-in .tagcloud a:hover {
    background: none repeat scroll 0 0 #fff;
    color: #333;
}
</style>
<section id="bottom" class="wet-asphalt">
    <div class="container">
        <div class="row">

             <div class="col-md-3 col-sm-6">
                <h4>{!!trans('fully.connect_us')!!}</h4>

                {{--{!! $aboutFeature->content !!}--}}
                <hr>
                <ul class="social clearfix">
                    <li><a href="{!! $settings['facebook'] !!}" title="Catcom Facebook" data-original-title="Facebook" data-toggle="tooltip" data-placement="bottom"><i class="fa fa-facebook icon-facebook"></i></a></li>
                    <li><a href="{!! $settings['google_plus'] !!}" title="Catcom Googleplus" data-original-title="Google Plus" data-toggle="tooltip" data-placement="bottom"><i class="fa fa-google-plus icon-google-plus"></i></a></li>
                    <li><a href="{!! $settings['twitter'] !!}" title="Catcom Twitter" data-original-title="Twitter" data-toggle="tooltip" data-placement="bottom"><i class="fa fa-twitter icon-twitter"></i></a></li>
                    <li><a href="{!! $settings['youtube'] !!}" title="Catcom Youtube" data-original-title="Youtube" data-toggle="tooltip" data-placement="bottom"><i class="fa fa-youtube icon-youtube"></i></a></li>
                    <li><a href="{!! $settings['linkedin'] !!}" title="Catcom Linkedin" data-original-title="Linkedin" data-toggle="tooltip" data-placement="bottom"><i class="fa fa-linkedin icon-linkedin"></i></a></li>
                    <li><a href="{!! $settings['pinterest'] !!}" title="CatCom Pinterest" data-original-title="Pinterest" data-toggle="tooltip" data-placement="bottom"><i class="fa icon-pinterest"></i></a></li>
                    <li><a href="{!! $settings['flickr'] !!}" title="Catcom Flickr" data-original-title="Flickr" data-toggle="tooltip" data-placement="bottom"><i class="fa fa-skype icon-flickr"></i></a></li>
                </ul>
            </div>

            <!-- <div class="col-md-3 col-sm-6">
                <h4>{!!trans('fully.latest_blog')!!}</h4>

                <div>
                    @foreach($articles as $article)
                    <div class="media">
                        <div class="pull-left">
                            @if($article->path && $article->file_name)
                                <a href="{!! URL::route('dashboard.article.show', array('slug'=>$article->slug)) !!}"><img src="{!! url($article->path . 'thumb_' . $article->file_name) !!}" style="border: 2px solid;" alt=""></a>
                            @else
                                <a href="{!! URL::route('dashboard.article.show', array('slug'=>$article->slug)) !!}"><img src="{!! url('assets/images/blog_s.png') !!}" alt="" style="border: 2px solid;"></a>
                            @endif
                        </div>
                        <div class="media-body">
                            <span class="media-heading"><a href="{!! URL::route('dashboard.article.show', array('slug'=>$article->slug)) !!}">{!! $article->title !!}</a></span>
                            <small class="muted">{!! $article->created_at !!}</small>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <h4>{!! trans('fully.tags')!!}</h4>
                <div class="tagcloud">
                    @if(isset($tags))
                        @foreach($tags as $tag)
                            <a href="{!! URL::route('dashboard.tag', array('tag'=>$tag->slug)) !!}">{!! $tag->name !!}</a>
                        @endforeach
                    @endif
                </div>
            </div> -->

            <div class="col-md-3 col-sm-6">
                <h4>{!! trans('fully.address')!!}</h4>
                <address>
                    <strong>{!! $settings['cc_name'] !!}</strong><br>
                    {!! $settings['cc_address'] !!} <br>

                    <abbr title="Phone">{!! trans('fully.phone_number')!!}: </abbr>{!! $settings['cc_phone'] !!}
                </address>
            </div>

            <div class="col-md-6 col-sm-6">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d59591.249096755084!2d105.75236872219769!3d21.01455014097551!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab55e433c57f%3A0x1a4a47e69eb3c80!2zQjNDLCBMUzIsIEtodSDEkcO0IHRo4buLIE5hbSBUcnVuZyBZw6puLCBUcnVuZyBIb8OgLCBD4bqndSBHaeG6pXksIEjDoCBO4buZaSwgVmlldG5hbQ!5e0!3m2!1sen!2s!4v1461724512654" width="100%" height="200" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>
        </div>
    </div>
</section>
<footer id="footer" class="midnight-blue">
    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <ul class="language_bar_chooser">
                    @foreach(LaravelLocalization::getSupportedLocales() as $localeCode => $properties)
                    <li>
                        <a rel="alternate" hreflang="{!!$localeCode!!}" href="{!! LaravelLocalization::getLocalizedURL($localeCode) !!}">
                            {!! $properties['native'] !!}
                        </a>
                    </li>
                    @endforeach
                </ul>
            </div>
            <div class="col-sm-4">
                &copy; 2016 <a target="_blank" href="#">CatCom JSC </a> {!! trans('fully.all_rights_reserved') !!}.
            </div>
            <div class="col-sm-4">
                <ul class="pull-right">
                    <li>{!! link_to_route('dashboard', trans('fully.home')) !!}</li>
                    <li>{!! link_to_route('dashboard.faq', trans('fully.faq')) !!}</li>
                    <li>{!! link_to_route('dashboard.contact', trans('fully.contact_us')) !!}</li>
                    <li><a id="gototop" class="gototop" href="#"><i class="icon-chevron-up"></i></a></li>
                    <!--#gototop-->
                </ul>
            </div>
        </div>
    </div>
</footer>
<!--/#footer-->
