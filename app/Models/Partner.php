<?php

namespace Fully\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Partner.
 *
 * @author Sefa Karagöz <karagozsefa@gmail.com>
 */
class Partner extends Model
{
    public $table = 'partners';

    public function images()
    {
        return $this->morphMany('Fully\Models\Photo', 'relationship', 'type');
    }
}
