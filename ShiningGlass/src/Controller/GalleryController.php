<?php
namespace App\Controller;
use App\Controller\AppController;
use Cake\ORM\Locator\LocatorAwareTrait;
use Cake\Datasource\ConnectionManager;
use Cake\Auth\DefaultPasswordHasher;
/**
 * Gallery Controller
 *
 * @property \App\Model\Table\ArtworksTable $Artworks
 *  * @property \App\Model\Table\CategoriesTable $Categories
 * @method \App\Model\Entity\Artwork[]|\Cake\Datasource\ResultSetInterface paginate($object = null, array $settings = [])
 */

class GalleryController extends AppController{
    public function index()
    {


        $categories = $this->fetchTable('Categories')->find('list');
        $this->set(compact('categories'));
        // $this->fetchTable('Articles')->find()->all();

        // $artworks = $this->paginate($this->Artworks);
        // $this->set(compact('artworks'));
        $category_id= $this->request->getQuery('category_id');


        // If no category id setup, load all artworks, otherwise load the artworks related to category id
        $artworks = $this->fetchTable('Artworks')->find();
        if (!empty($category_id)) {
            $artworks = $this->fetchTable('Categories')->get($category_id, ['contain' => ['Artworks']])->artworks;
        }
        $this->set('results', $artworks);



       //$category_id= 8;
       //if(!empty($searchTerm_id)){
       //    $query  = $this->fetchTable('Categories')->get($category_id,['contain'=>['Artworks']]);
       //    $Artworks = $this->paginate($query);
       //    $this->set('results',$Artworks);

       //}else{
       //    $query = $this->fetchTable('Artworks')->find();
       //    $Artworks = $this->paginate($query);
       //    $this->set('results',$Artworks);
       //}


    }
    public function beforeFilter(\Cake\Event\EventInterface $event)
    {
        parent::beforeFilter($event);
        // Configure the login action to not require authentication, preventing
        // the infinite redirect loop issue
        $this->Authentication->addUnauthenticatedActions(['index', 'add']);
    }


}
