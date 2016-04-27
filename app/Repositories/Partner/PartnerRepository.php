<?php

namespace Fully\Repositories\Partner;

use Fully\Models\Partner;
use Response;
use Fully\Repositories\AbstractValidator as Validator;

/**
 * Class PartnerRepository.
 *
 * @author Sefa Karagöz <karagozsefa@gmail.com>
 */
class PartnerRepository extends Validator implements PartnerInterface
{
    /**
     * @var \Partner
     */
    protected $partner;

    /**
     * @param Partner $partner
     */
    public function __construct(Partner $partner)
    {
        $this->partner = $partner;
    }

    /**
     * @return mixed
     */
    public function all()
    {
        return $this->partner->where('lang', getLang())->where('is_published', 1)->orderBy('order', 'ASC')->get();
    }

    /**
     * @param $id
     *
     * @return mixed
     */
    public function togglePublish($id)
    {
        $partner = $this->partner->find($id);

        $partner->is_published = ($partner->is_published) ? false : true;
        $partner->save();

        return Response::json(array('result' => 'success', 'changed' => ($partner->is_published) ? 1 : 0));
    }
}
