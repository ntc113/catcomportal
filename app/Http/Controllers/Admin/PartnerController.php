<?php

namespace Fully\Http\Controllers\Admin;

use View;
use Input;
use Response;
use File;
use Image;
use Config;
use Flash;
use Fully\Models\Partner;
use Fully\Http\Controllers\Controller;
use Fully\Repositories\Partner\PartnerInterface;

/**
 * Class PartnerController.
 *
 * @author Sefa Karagöz <karagozsefa@gmail.com>
 */
class PartnerController extends Controller
{
    protected $partner;
    protected $width;
    protected $height;
    protected $imgDir;

    public function __construct(PartnerInterface $partner)
    {
        View::share('active', 'plugins');

        $config = Config::get('fully');
        $this->width = $config['modules']['partner']['image_size']['width'];
        $this->height = $config['modules']['partner']['image_size']['height'];
        $this->imgDir = $config['modules']['partner']['image_dir'];
        $this->partner = $partner;
    }

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $partners = Partner::where('lang', getLang())->orderBy('created_at', 'DESC')->paginate(15);

        return view('backend.partner.index', compact('partners'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        return view('backend.partner.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store()
    {
        $formData = Input::all();
        $partner = new Partner();

        $upload_success = null;

        if (isset($formData['image'])) {
            $file = $formData['image'];

            $destinationPath = public_path().$this->imgDir;
            $fileName = $file->getClientOriginalName();
            $fileSize = $file->getClientSize();

            $upload_success = $file->move($destinationPath, $fileName);

            // resizing an uploaded file
            Image::make($destinationPath.$fileName)->resize($this->width, $this->height)->save($destinationPath.$fileName);

            $partner->file_name = $fileName;
            $partner->file_size = $fileSize;
            $partner->lang = getLang();

            $partner->path = $this->imgDir.$fileName;
        }

        $partner->title = $formData['title'];
        $partner->description = $formData['description'];
        // $partner->link = $formData['link'];

        $partner->save();

        Flash::message('Partner was successfully added');

        return langRedirectRoute('admin.partner.index');
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
        $partner = Partner::findOrFail($id);

        return view('backend.partner.edit', compact('partner'));
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
        $formData = Input::all();
        $partner = Partner::findOrFail($id);

        if (isset($formData['image'])) {
            if ($file = $formData['image']) {

                // delete old image
                $destinationPath = public_path().$this->imgDir;
                File::delete($destinationPath.$partner->file_name);

                $destinationPath = public_path().$this->imgDir;
                $fileName = $file->getClientOriginalName();
                $fileSize = $file->getClientSize();

                $upload_success = $file->move($destinationPath, $fileName);

                if ($upload_success) {

                    // resizing an uploaded file
                    Image::make($destinationPath.$fileName)->resize($this->width, $this->height)->save($destinationPath.$fileName);

                    $partner->file_name = $fileName;
                    $partner->file_size = $fileSize;
                    $partner->path = $this->imgDir.$fileName;
                }
            }
        }
        $partner->title = $formData['title'];
        $partner->description = $formData['description'];
        $partner->save();

        Flash::message('Partner was successfully updated');

        return langRedirectRoute('admin.partner.index');
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
        $partner = Partner::with('images')->findOrFail($id);
        $destinationPath = public_path().$this->imgDir;

        File::delete($destinationPath.$partner->file_name);
        $partner->delete();

        Flash::message('Partner was successfully deleted');

        return langRedirectRoute('admin.partner.index');
    }

    public function confirmDestroy($id)
    {
        $partner = Partner::findOrFail($id);

        return view('backend.partner.confirm-destroy', compact('partner'));
    }

    public function togglePublish($id)
    {
        return $this->partner->togglePublish($id);
    }
}
