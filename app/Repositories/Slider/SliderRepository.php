<?php

namespace Fully\Repositories\Slider;

use Fully\Models\Slider;
use Response;
use Fully\Repositories\AbstractValidator as Validator;

/**
 * Class SliderRepository.
 *
 * @author Sefa Karagöz <karagozsefa@gmail.com>
 */
class SliderRepository extends Validator implements SliderInterface
{
    /**
     * @var \Slider
     */
    protected $slider;

    /**
     * @param Slider $slider
     */
    public function __construct(Slider $slider)
    {
        $this->slider = $slider;
    }

    /**
     * @return mixed
     */
    public function all()
    {
        return $this->slider->where('lang', getLang())->where('is_published', 1)->orderBy('order', 'ASC')->get();
    }

    /**
     * @param $id
     *
     * @return mixed
     */
    public function togglePublish($id)
    {
        $slider = $this->slider->find($id);

        $slider->is_published = ($slider->is_published) ? false : true;
        $slider->save();

        return Response::json(array('result' => 'success', 'changed' => ($slider->is_published) ? 1 : 0));
    }
}
