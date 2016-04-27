<?php

namespace Fully\Http\Controllers\Admin;

use View;
use Input;
use Flash;
use Response;
use Fully\Services\Pagination;
use Fully\Http\Controllers\Controller;
use Fully\Repositories\Feature\FeatureInterface;
use Fully\Repositories\Feature\FeatureRepository as Feature;
use Fully\Exceptions\Validation\ValidationException;

/**
 * Class FeatureController.
 *
 * @author Sefa Karagöz <karagozsefa@gmail.com>
 */
class FeatureController extends Controller
{
    protected $feature;
    protected $perPage;
    protected $group;

    public function __construct(FeatureInterface $feature)
    {
        View::share('active', 'modules');

        $this->feature = $feature;
        $this->perPage = config('fully.per_page');
        $this->group = array(
                'core_value' => 'Core value',
                'project' => 'Project Des',
                'about' => 'About Us'
            );
    }

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $pagiData = $this->feature->paginate(Input::get('feature', 1), $this->perPage, true);
        $features = Pagination::makeLengthAware($pagiData->items, $pagiData->totalItems, $this->perPage);

        return view('backend.feature.index', compact('features'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        $group = $this->group;
        return view('backend.feature.create', compact('group'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store()
    {
        try {
            $this->feature->create(Input::all());
            Flash::message('Feature was successfully added');

            return langRedirectRoute('admin.feature.index');
        } catch (ValidationException $e) {
            return langRedirectRoute('admin.feature.create')->withInput()->withErrors($e->getErrors());
        }
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     *
     * @return Response
     */
    public function show($id)
    {
        $feature = $this->feature->find($id);

        return view('backend.feature.show', compact('feature'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $feature = $this->feature->find($id);
        $group = $this->group;

        return view('backend.feature.edit', compact('feature', 'group'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param int $id
     *
     * @return Response
     */
    public function update($id)
    {
        try {
            $this->feature->update($id, Input::all());
            Flash::message('Feature was successfully updated');

            return langRedirectRoute('admin.feature.index');
        } catch (ValidationException $e) {
            return langRedirectRoute('admin.feature.edit')->withInput()->withErrors($e->getErrors());
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     *
     * @return Response
     */
    public function destroy($id)
    {
        $this->feature->delete($id);
        Flash::message('Feature was successfully deleted');

        return langRedirectRoute('admin.feature.index');
    }

    public function confirmDestroy($id)
    {
        $feature = $this->feature->find($id);

        return view('backend.feature.confirm-destroy', compact('feature'));
    }

    public function togglePublish($id)
    {
        return $this->feature->togglePublish($id);
    }
}
