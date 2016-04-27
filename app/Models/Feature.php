<?php

namespace Fully\Models;

use Fully\Interfaces\ModelInterface as ModelInterface;

/**
 * Class Feature.
 *
 * @author Sefa Karagöz <karagozsefa@gmail.com>
 */
class Feature extends BaseModel implements ModelInterface
{
    public $table = 'features';
    protected $fillable = ['title', 'content', 'is_published', 'group'];
    protected $appends = ['url'];

    public function setUrlAttribute($value)
    {
        $this->attributes['url'] = $value;
    }

    public function getUrlAttribute()
    {
        return 'feature/'.$this->attributes['group'];
    }
}
