<?php

namespace Fully\Search;

use Fully\Models\News;
use Fully\Models\Article;
use Fully\Models\PhotoGallery;

/**
 * Class Search.
 *
 * @author Sefa Karagöz <karagozsefa@gmail.com>
 */
class Search
{
    public function search($search)
    {
        $newsResult = News::search($search)->where('lang', getLang())->get()->toArray();
        $articleResult = Article::search($search)->where('lang', getLang())->get()->toArray();
        $photoGalleryResult = PhotoGallery::search($search)->where('lang', getLang())->get()->toArray();
        $result = array_merge($newsResult, $articleResult, $photoGalleryResult);

        return $result;
    }
}
