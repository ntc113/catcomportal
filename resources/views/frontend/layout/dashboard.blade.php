@extends('frontend/layout/layout')
@section('content')

@include('frontend/layout/slider', $sliders)

<section id="services" class="emerald">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2>{!! trans('fully.core_value') !!}</h2>
                <hr class="star-light">
            </div>
        </div>
        <div class="row">
            @foreach($coreValueFeature as $f)
            <div class="col-md-4 col-sm-6">
                <div class="media">
                    <div class="media-body">
                        <h3 class="media-heading">{!! $f->title !!}</h3>
                        {!! $f->content !!}
                    </div>
                </div>
            </div><!--/.col-md-4-->
            @endforeach
        </div>
    </div>
</section><!--/#services-->

@include('frontend/layout/project', $projects)

<section id="testimonial" class="alizarin">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="center">
                    <h2>{!! trans('fully.hot_news') !!}</h2>
                </div>
                <div class="gap"></div>
                <div class="row">
                    @foreach($hotArticles as $ha)
                    <div class="col-md-4 clearfix">
                        <div class="hot-article-img">
                            <img src="{!! url($ha->path . 'thumb_' . $ha->file_name) !!}" alt="">
                        </div>
                        <div class="hot-article-content">
                            <a title="{!! $ha->title !!}" href="{!! URL::route('dashboard.article.show', array('slug'=>$ha->slug)) !!}">{!! $ha->title !!}</a>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section><!--/#testimonial-->

@include('frontend/layout/partner', $partners)
@stop
