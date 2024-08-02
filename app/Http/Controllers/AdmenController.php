<?php

namespace App\Http\Controllers;

use App\Models\Companies;
use App\Models\Social_media;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AdmenController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function login(Request $request)
    {
        $data = $request->only('username', 'password');

        if (Auth::attempt($data)) {
            $user = Auth::user();
            if ($user['status'] == 'pending') {
                return response()->json(['msg' => 'Your account is still under review']);
            } else {
                $token = $user->createToken('auth_token')->plainTextToken;

                return response()->json([
                    'token' => $token,
                    'user' => $user,
                ]);
            }
        } else {
            return response()->json(['msg' => 'Invalid username or password']);
        }
    }

    public function register_User(Request $request)
    {
        $data['username']    = $request->username;
        $data['fname']    = $request->fname;
        $data['lname']    = $request->lname;
        // $data['status']    = $request->status;
        $data['type']    = $request->type;
        if ($data['type'] == 'company') {
            $data['status']    = 'pending';
        }
        $data['email']    = $request->email;
        $data['password']    = Hash::make($request->password);
        $data['phone']    = $request->phone;
        $data['countre_code_phone']    = $request->countre_code_phone;
        $data['gender']    = $request->gender;

        $soic['facebook']    = $request->facebook;
        $soic['instagram']    = $request->instagram;
        $soi = Social_media::create($soic);

        $data['social_media_id']    = $soi->id;

        $da = User::create($data);
        if ($request->type == 'company') {
            $com['user_id']                        = $da->id;
            $com['places_id']                      = $request->places_id;
            $com['company_name']                   = $request->company_name;
            $com['website']                        = $request->website;
            $com['emploies_num']                   = $request->emploies_num;
            $com['description']                    = $request->description;
            $com['work_days']                      = $request->work_days;

            if ($request->hasFile('profile_images')) {
                $image = $request->file('profile_images');
                $imageName = $da->id . '.' . $image->getClientOriginalExtension();
                $com['profile_images']                 = 'profile_images/' . $imageName;
                $image->move(public_path('profile_images'), $imageName);
            }
            if ($request->hasFile('banner_image')) {
                $image = $request->file('banner_image');
                $imageName = $da->id . '.' . $image->getClientOriginalExtension();
                $com['banner_image']                   = 'banner_image/' . $imageName;
                $image->move(public_path('banner_image'), $imageName);
            }
            $comba = Companies::create($com);
            return response()->json([$data, $com]);
        }
        return response()->json($data);
    }






    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
