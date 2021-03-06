<?php
declare(strict_types=1);

namespace App\Test\Fixture;

use Cake\TestSuite\Fixture\TestFixture;

/**
 * CategoryImagesFixture
 */
class CategoryImagesFixture extends TestFixture
{
    /**
     * Init method
     *
     * @return void
     */
    public function init(): void
    {
        $this->records = [
            [
                'file_name' => 'Lorem ipsum dolor sit amet',
                'category_id' => 1,
                'id' => 1,
            ],
        ];
        parent::init();
    }
}
