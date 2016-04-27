<?php

namespace Fully\Repositories\Partner;

use Fully\Services\Cache\CacheInterface;

/**
 * Class CacheDecorator.
 *
 * @author Sefa Karagöz <karagozsefa@gmail.com>
 */
class CacheDecorator extends AbstractPartnerDecorator
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
    protected $cacheKey = 'partner';

    /**
     * @param PartnerInterface $partner
     * @param CacheInterface  $cache
     */
    public function __construct(PartnerInterface $partner, CacheInterface $cache)
    {
        parent::__construct($partner);
        $this->cache = $cache;
    }

    /**
     * @return mixed
     */
    public function all()
    {
        $key = md5(getLang().$this->cacheKey.'all.partners');

        if ($this->cache->has($key)) {
            return $this->cache->get($key);
        }

        $partners = $this->partner->all();

        $this->cache->put($key, $partners);

        return $partners;
    }
}
