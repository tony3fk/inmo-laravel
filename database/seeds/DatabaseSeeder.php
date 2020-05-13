<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(RoleTableSeeder::class); //comentar para desactivar seeder
        $this->call(UserTableSeeder::class); //comentar para desactivar seeder
        $this->call(PermissionInfoSeeder::class); //comentar para desactivar seeder
    }
}
