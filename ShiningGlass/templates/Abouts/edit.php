<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\About $about
 */
?>

<?= $this->Html->css('styles.css') ?>
<?= $this->element('nav') ?>
<?= $this->Html->css('cake.css') ?>

<div class="row">
    <aside class="column">
        <div class="side-nav">
            <nav class="nav justify-content-center nav-pills nav-fill" style="padding: 5px">
                <ul class="nav nav-pills nav-fill">
                    <li class="nav-item" style="padding: 5px">
                        <a>
                            <?= $this->Html->link(__('List Abouts'),
                                ['action' => 'index'],
                                ['class' => 'nav-item nav-link active btn btn-primary']) ?>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </aside>
    <div class="column-responsive column-80" align="left">
        <div class="abouts form content">
            <?= $this->Form->create($about) ?>
            <fieldset>
                <legend><?= __('Edit About') ?></legend>
                <?php
                echo $this->Form->control('title', ['type' => 'text', 'class' => 'form-control','placeholder' => 'Enter Field Name', 'maxlength' => '50', 'required' => 'required']);
                echo '<span id="textHelpBlock" class="form-text text-muted">Max 50 characters</span>';
                echo $this->Form->control('text', ['type' => 'textarea', 'class' => 'form-control', 'maxlength' => '500','placeholder' => 'Enter Field Information','required' => 'required']);
                echo '<span id="textHelpBlock" class="form-text text-muted">Max 500 characters</span>';
                ?>
            </fieldset>
            <br>
            <?= $this->Form->button(__('Submit'), ['class' => 'btn btn-success', 'style' => 'float:right;'] ) ?>
            <br>
            <?= $this->Form->end() ?>
        </div>
    </div>
</div>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


