<?php

namespace Fully\Repositories\Feature;

use Fully\Repositories\RepositoryInterface;

/**
 * Interface FeatureInterface.
 *
 * @author Sefa Karagöz <karagozsefa@gmail.com>
 */
interface FeatureInterface extends RepositoryInterface
{
    /**
     * @param $group
     *
     * @return mixed
     */
    public function getByGroup($group, $isPublished = false);
}
