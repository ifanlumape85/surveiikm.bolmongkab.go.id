<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SurveiRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'id_opd' => 'required|integer|exists:opd,id',
            'nama' => 'required|string|max:255',
            'jenis_kelamin' => 'required',
            'id_usia' => 'required|integer|exists:usia,id',
            'id_waktu' => 'required|integer|exists:waktu,id',
            'id_pendidikan' => 'required|integer|exists:pendidikan,id',
            'id_pekerjaan' => 'required|integer|exists:pekerjaan,id',
            'kesesuaian' => 'required',
            'kemudahan' => 'required',
            'kecepatan' => 'required',
            'kewajaran' => 'required',
            'hasil' => 'required',
            'kompetensi' => 'required',
            'perilaku' => 'required',
            'kualitas' => 'required',
            'penanganan' => 'required',
        ];
    }
}
