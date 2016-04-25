<?php

namespace Fully\Http\Controllers\Admin;

use Fully\Http\Controllers\Controller;
use Redirect;
use View;
use Input;
use Flash;
use Fully\Models\Setting;

/**
 * Class SettingController.
 *
 * @author Sefa Karagöz <karagozsefa@gmail.com>
 */
class SettingController extends Controller
{
    public function index()
    {
        $obj = (Setting::where('lang', getLang())->first()) ?: new Setting();

        $setting = array(
            // seo
            'site_title' => null,
            'ga_code' => null,
            'meta_keywords' => null,
            'meta_description' => null,
            // social
            'facebook' => null,
            'google_plus' => null,
            'youtube' => null,
            'linkedin' => null,
            'twitter' => null,
            'pinterest' => null,
            'flickr' => null,
            // info
            'cc_name' => null,
            'cc_address' => null,
            'cc_phone' => null,
            'cc_contact' => null,
            // 
        );

        $jsonData = $obj->settings;
        $jsonData = json_decode($jsonData, true);

        foreach ($jsonData as $key => $value) {
            $setting[$key] = $jsonData[$key];
        }

        return view('backend.setting.setting', compact('setting'))->with('active', 'info');
    }

    public function save()
    {
        $setting = (Setting::where('lang', getLang())->first()) ?: new Setting();
        $settings = json_decode($setting->settings);

        $formData = Input::all();
        unset($formData['_token']);
        foreach ($formData as $key => $value) {
            $settings->$key = $formData[$key];
        }

        $json = json_encode($settings);
        $setting->fill(array('settings' => $json, 'lang' => getLang()))->save();

        Flash::message('Settings was successfully updated');

        return Redirect::route('admin.settings');
    }
}
