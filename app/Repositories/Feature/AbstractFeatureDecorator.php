<?php

namespace Fully\Repositories\Feature;

/**
 * Class AbstractFeatureDecorator.
 *
 * @author Sefa Karagöz <karagozsefa@gmail.com>
 */
abstract class AbstractFeatureDecorator implements FeatureInterface
{
    /**
     * @var FeatureInterface
     */
    protected $feature;

    /**
     * @param FeatureInterface $feature
     */
    public function __construct(FeatureInterface $feature)
    {
        $this->feature = $feature;
    }

    /**
     * @param $id
     *
     * @return mixed
     */
    public function find($id)
    {
        return $this->feature->find($id);
    }

    /**
     * @param $group
     *
     * @return mixed
     */
    public function getByGroup($group, $isPublished = false)
    {
        return $this->feature->getByGroup($group, $isPublished);
    }

    /**
     * @return mixed
     */
    public function all()
    {
        return $this->feature->all();
    }

    /**
     * @param int  $feature
     * @param int  $limit
     * @param bool $all
     *
     * @return mixed
     */
    public function paginate($feature = 1, $limit = 10, $all = false)
    {
        return $this->feature->paginate($feature = 1, $limit = 10, $all = false);
    }
}
