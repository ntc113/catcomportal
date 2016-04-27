<?php

namespace Fully\Http\Controllers;

use Fully\Repositories\Project\ProjectInterface;
use Fully\Repositories\Partner\PartnerInterface;
use Fully\Repositories\Slider\SliderInterface;
use Fully\Repositories\Tag\TagInterface;
use LaravelLocalization;

/**
 * Class HomeController.
 *
 * @author Sefa Karagöz <karagozsefa@gmail.com>
 */
class HomeController extends Controller
{
    protected $slider;
    protected $partner;
    protected $project;
    protected $tag;

    public function __construct(SliderInterface $slider, PartnerInterface $partner, ProjectInterface $project, TagInterface $tag)
    {
        $this->slider = $slider;
        $this->partner = $partner;
        $this->project = $project;
        $this->tag = $tag;
    }

    public function index()
    {
        $languages = LaravelLocalization::getSupportedLocales();

        $sliders = $this->slider->all()->where('is_published', 1);
        $partners = $this->partner->all()->where('is_published', 1);
        /*echo '<pre>';
        foreach ($partners as $p) {
            var_dump($p['id']);
        }
        die;*/
        $projects = $this->project->all();
        $tags = $this->tag->all();

        return view('frontend/layout/dashboard', compact('sliders', 'partners', 'projects', 'languages', 'tags'));
    }
}
