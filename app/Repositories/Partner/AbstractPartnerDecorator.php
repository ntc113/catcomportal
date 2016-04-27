<?php

namespace Fully\Repositories\Partner;

/**
 * Class AbstractPartnerDecorator.
 *
 * @author Sefa Karagöz <karagozsefa@gmail.com>
 */
abstract class AbstractPartnerDecorator implements PartnerInterface
{
    /**
     * @var PartnerInterface
     */
    protected $partner;

    /**
     * @param PartnerInterface $partner
     */
    public function __construct(PartnerInterface $partner)
    {
        $this->partner = $partner;
    }

    /**
     * @return mixed
     */
    public function all()
    {
        return $this->partner->all();
    }
}
