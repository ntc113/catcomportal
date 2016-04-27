<?php

namespace Fully\Repositories\Feature;

use Fully\Models\Feature;
use Config;
use Response;
use Fully\Repositories\RepositoryAbstract;
use Fully\Repositories\CrudableInterface as CrudableInterface;
use Fully\Exceptions\Validation\ValidationException;

/**
 * Class FeatureRepository.
 *
 * @author Sefa Karagöz <karagozsefa@gmail.com>
 */
class FeatureRepository extends RepositoryAbstract implements FeatureInterface, CrudableInterface
{
    /**
     * @var
     */
    protected $perPage;
    /**
     * @var \Feature
     */
    protected $feature;
    /**
     * Rules.
     *
     * @var array
     */
    protected static $rules = [
        'title' => 'required|min:3',
        'content' => 'required|min:5', ];

    /**
     * @param Feature $feature
     */
    public function __construct(Feature $feature)
    {
        $config = Config::get('fully');
        $this->perPage = $config['per_page'];
        $this->feature = $feature;
    }

    /**
     * @return mixed
     */
    public function all()
    {
        return $this->feature->where('lang', $this->getLang())->get();
    }

    /**
     * @param $group
     *
     * @return mixed
     */
    public function getByGroup($group, $isPublished = false, $getFirst = true)
    {
        if ($isPublished === true) {
            if ($getFirst === true) {
                return $this->feature->where('group', $group)->where('is_published', true)->first();
            }
            return $this->feature->where('group', $group)->where('is_published', true);
        } else {
            if ($getFirst === true) {
                return $this->feature->where('group', $group)->first();
            }
        }

        return $this->feature->where('group', $group);
    }

    /**
     * @return mixed
     */
    public function lists()
    {
        return $this->feature->where('lang', $this->getLang())->lists('title', 'id');
    }

    /**
     * Get paginated features.
     *
     * @param int  $feature  Number of features per feature
     * @param int  $limit Results per feature
     * @param bool $all   Show published or all
     *
     * @return StdClass Object with $items and $totalItems for pagination
     */
    public function paginate($feature = 1, $limit = 10, $all = false)
    {
        $result = new \StdClass();
        $result->feature = $feature;
        $result->limit = $limit;
        $result->totalItems = 0;
        $result->items = array();

        $query = $this->feature->orderBy('created_at', 'DESC')->where('lang', $this->getLang());

        if (!$all) {
            $query->where('is_published', 1);
        }

        $features = $query->skip($limit * ($feature - 1))->take($limit)->get();

        $result->totalItems = $this->totalFeatures($all);
        $result->items = $features->all();

        return $result;
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
     * @param $attributes
     *
     * @return bool|mixed
     *
     * @throws \Fully\Exceptions\Validation\ValidationException
     */
    public function create($attributes)
    {
        $attributes['is_published'] = isset($attributes['is_published']) ? true : false;

        if ($this->isValid($attributes)) {
            $this->feature->lang = $this->getLang();
            $this->feature->fill($attributes)->save();

            return true;
        }

        throw new ValidationException('Feature validation failed', $this->getErrors());
    }

    /**
     * @param $id
     * @param $attributes
     *
     * @return bool|mixed
     *
     * @throws \Fully\Exceptions\Validation\ValidationException
     */
    public function update($id, $attributes)
    {
        $attributes['is_published'] = isset($attributes['is_published']) ? true : false;

        $this->feature = $this->find($id);

        if ($this->isValid($attributes)) {
            $this->feature->fill($attributes)->save();

            return true;
        }

        throw new ValidationException('Category validation failed', $this->getErrors());
    }

    /**
     * @param $id
     *
     * @return mixed|void
     */
    public function delete($id)
    {
        $this->feature->findOrFail($id)->delete();
    }

    /**
     * @param $id
     *
     * @return mixed
     */
    public function togglePublish($id)
    {
        $feature = $this->feature->find($id);
        $feature->is_published = ($feature->is_published) ? false : true;
        $feature->save();

        return Response::json(array('result' => 'success', 'changed' => ($feature->is_published) ? 1 : 0));
    }

    /**
     * Get total feature count.
     *
     * @param bool $all
     *
     * @return mixed
     */
    protected function totalFeatures($all = false)
    {
        if (!$all) {
            return $this->feature->where('is_published', 1)->where('lang', $this->getLang())->count();
        }

        return $this->feature->where('lang', $this->getLang())->count();
    }
}
