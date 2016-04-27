<section id="partners">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="center">
                    <h2>{!! trans('fully.partners') !!}</h2>
                    <p>{!! trans('fully.partnerDes') !!}</p>
                </div>
                    <a class="btn pre" href="#partner-scroller" data-slide="prev"><i class="icon-angle-left"></i></a>
                    <a class="btn next" href="#partner-scroller" data-slide="next"><i class="icon-angle-right"></i></a>
                <div class="gap"></div>
                <div  id="partner-scroller" class="carousel slide row">
                    <div class="carousel-inner">     
                        <?php $active = "active"; ?>
                        @foreach(array_chunk($partners->all(), 6) as $row)
                        <div class="item {!! $active !!}">
                            <div class="row">
                                @foreach($row as $item)
                                <div class="col-md-2 col-sm-4">
                                    <div class="portfolio-item">
                                        <div class="item-inner">
                                            @if($item->path)
                                            <img class="img-responsive" src="{!! url($item->path) !!}" alt="{!! $item->title !!}">
                                            @else
                                            <img class="img-responsive" src="{!! url('assets/images/project_thumb.png') !!}" alt="{!! $item->title !!}">
                                            @endif
                                        </div>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        </div>
                        <?php $active = ""; ?>
                        @endforeach

                    </div>
                </div>
            </div>
        </div>
        <!--/.row-->
    </div>
</section><!--/#recent-works-->
