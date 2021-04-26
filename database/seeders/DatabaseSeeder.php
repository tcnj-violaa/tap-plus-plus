<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class DatabaseSeeder extends Seeder
{
    private function updateIdentity(string $table, string $primaryKey = 'id')
    {
        DB::statement("SELECT setval(pg_get_serial_sequence('$table', '$primaryKey'), (SELECT MAX($primaryKey) FROM $table));");
    }

    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(UsersTableSeeder::class);
        $this->call(AudioTableSeeder::class);
        $this->call(TagCategoryTableSeeder::class);
        $this->call(TagsTableSeeder::class);
        $this->call(AudioTagTableSeeder::class);
        $this->call(TranscriptsTableSeeder::class);
        $this->call(UserEditRequestTableSeeder::class);
        $this->call(AuditLogsTableSeeder::class);

        $this->updateIdentity('users');
        $this->updateIdentity('audio');
        $this->updateIdentity('tag_category');
        $this->updateIdentity('tags');
        $this->updateIdentity('transcripts');
        $this->updateIdentity('user_edit_request');
        $this->updateIdentity('audit_logs');
    }
}
