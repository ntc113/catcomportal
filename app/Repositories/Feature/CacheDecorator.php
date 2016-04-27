<?php

namespace Fully\Repositories\Feature;

use Fully\Services\Cache\CacheInterface;

/**
 * Class CacheDecorator.
 *
 * @author Sefa Karagöz <karagozsefa@gmail.com>
 */
class CacheDecorator extends AbstractFeatureDecorator
{
    /**
     * @var \Fully\Services\Cache\CacheInterface
     */
    protected $cache;

    /**
     * Cache key.
     *
     * @var string
     */
    protected $cacheKey = 'feature';

    /**
     * @param FeatureInterface  $category
     * @param CacheInterface $cache
     */
    public function __construct(FeatureInterface $feature, CacheInterface $cache)
    {
        parent::__construct($feature);
        $this->cache = $cache;
    }

    /**
     * @param $id
     *
     * @return mixed
     */
    public function find($id)
    {
        $key = md5(getLang().$this->cacheKey.'.id.'.$id);

        if ($this->cache->has($key)) {
            return $this->cache->get($key);
        }

        $feature = $this->feature->find($id);

        $this->cache->put($key, $feature);

        return $feature;
    }

    /**
     * @param $group
     *
     * @return mixed
     */
    public function getByGroup($group, $isPublished = false)
    {
        $key = md5(getLang().$this->cacheKey.'.group.'.$group);

        if ($isPublished === true) {
            $key = md5(getLang().$this->cacheKey.'.group.'.$group.'.published');
        }

        if ($this->cache->has($key)) {
            return $this->cache->get($key);
        }

        $feature = $this->feature->getByGroup($group, $isPublished);

        $this->cache->put($key, $feature);

        return $feature;
    }

    /**
     * @return mixed
     */
    public function all()
    {
        $key = md5(getLang().$this->cacheKey.'.all.features');

        if ($this->cache->has($key)) {
            return $this->cache->get($key);
        }

        $features = $this->feature->all();

        $this->cache->put($key, $features);

        return $features;
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
        $allkey = ($all) ? '.all' : '';
        $key = md5(getLang().$this->cacheKey.'.feature.'.$feature.'.'.$limit.$allkey);

        if ($this->cache->has($key)) {
            return $this->cache->get($key);
        }

        $paginated = $this->feature->paginate($feature, $limit, $all);

        $this->cache->put($key, $paginated);

        return $paginated;
    }
}
