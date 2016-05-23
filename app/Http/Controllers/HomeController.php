<?php

namespace Fully\Http\Controllers;

use Fully\Repositories\Feature\FeatureInterface;
use Fully\Repositories\Project\ProjectInterface;
use Fully\Repositories\Article\ArticleInterface;
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
    protected $feature;
    protected $tag;

    public function __construct(SliderInterface $slider, ArticleInterface $article, PartnerInterface $partner, ProjectInterface $project, FeatureInterface $feature, TagInterface $tag)
    {
        $this->slider = $slider;
        $this->article = $article;
        $this->partner = $partner;
        $this->project = $project;
        $this->feature = $feature;
        $this->tag = $tag;
    }

    public function index()
    {
        $languages = LaravelLocalization::getSupportedLocales();

        $sliders = $this->slider->all()->where('is_published', 1);
        $hotArticles = $this->article->getLastArticle(9);
        $partners = $this->partner->all()->where('is_published', 1);
        $features = $this->feature->all()->where('is_published', 1);
        $coreValue = array();
        // $projectFeature = new stdClass;
        // $aboutFeature = new stdClass;

        // echo '<pre>';
        foreach ($features as $f) {
            if($f['group'] == 'core_value') {
                $coreValueFeature[] = $f;
            } elseif ($f['group'] == 'project') {
                $projectFeature = $f;
            } elseif ($f['group'] == 'about') {
                $aboutFeature = $f;
            }
        }
        // die;
        $projects = $this->project->all();
        $tags = $this->tag->all();

        return view('frontend/layout/dashboard', compact('sliders', 'hotArticles', 'partners', 'projects', 'languages', 'tags', 'coreValueFeature', 'aboutFeature', 'projectFeature'));
    }
}
