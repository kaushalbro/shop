<?php

namespace Botble\Backup\Http\Requests;

use Botble\Support\Http\Requests\Request;

class BackupRequest extends Request
{
    public function rules(): array
    {
        return [
            'name' => ['required', 'string', 'max:250'],
            'backup_only_db' => ['nullable', 'boolean'],
        ];
    }
}
