@extends('frontend/layout/layout')
@section('content')
{!! HTML::style('ckeditor/contents.css') !!}

<section id="title" class="emerald">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <h1>{!!trans('fully.faq')!!}</h1>
                <!-- <p>Pellentesque habitant morbi tristique senectus et netus et malesuada</p> -->
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb">
                    <li><a href="#">{!!trans('fully.home')!!}</a></li>
                    <li class="active">{!!trans('fully.faq')!!}</li>
                </ol>
            </div>
        </div>
    </div>
</section><!--/#title-->


<section id="faqs" class="container">
    <ul class="faq unstyled">
        <?php $i = 1; ?>
        @foreach($faqs as $faq)
        <li>
            <span class="number"><?=$i?></span>
            <div>
                <h4>{!! $faq->question !!}</h4>
                <p>{!! $faq->answer !!}</p>
            </div>
        </li>
        <?php $i++?>
        @endforeach
    </ul>
</section><!--#faqs-->
@stop


