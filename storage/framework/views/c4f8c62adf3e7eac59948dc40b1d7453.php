<?php
    // dd($item);
    $categories = $categories
        ->mapWithKeys(function ($category) {
            return [$category->id => $category->name];
        })
        ->toArray();
?>



<?php $__env->startSection('title', 'Edit Item'); ?>

<?php $__env->startPush('styles'); ?>
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
<?php $__env->stopPush(); ?>

<?php $__env->startSection('main'); ?>
    <main>
        <h1 class="mb-5 text-3xl font-bold text-white">Edit Item</h1>
        <form class="space-y-4 lg:w-[50%] mb-5" action="<?php echo e(route('items.update', ['item' => $item])); ?>" method="POST"
            enctype="multipart/form-data">
            <?php echo csrf_field(); ?>
            <?php echo method_field('PUT'); ?>

            <?php if (isset($component)) { $__componentOriginalc1d2405c7f8100d77292f2d0299ccd96 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96 = $attributes; } ?>
<?php $component = App\View\Components\Form\Input::resolve(['label' => 'Item Name','type' => 'text','name' => 'name','id' => 'name','value' => ''.e($item->name).'','placeholder' => 'Enter item name','required' => 'true'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('form.input'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Form\Input::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96)): ?>
<?php $attributes = $__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96; ?>
<?php unset($__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc1d2405c7f8100d77292f2d0299ccd96)): ?>
<?php $component = $__componentOriginalc1d2405c7f8100d77292f2d0299ccd96; ?>
<?php unset($__componentOriginalc1d2405c7f8100d77292f2d0299ccd96); ?>
<?php endif; ?>

            <?php if (isset($component)) { $__componentOriginal02f71db4cef74cc926a09e94ec7369e1 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal02f71db4cef74cc926a09e94ec7369e1 = $attributes; } ?>
<?php $component = App\View\Components\Form\InputTextarea::resolve(['label' => 'Description','name' => 'description','id' => 'description','value' => ''.e($item->description).'','placeholder' => 'Enter item description','required' => 'true'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('form.input-textarea'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Form\InputTextarea::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['rows' => '3']); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal02f71db4cef74cc926a09e94ec7369e1)): ?>
<?php $attributes = $__attributesOriginal02f71db4cef74cc926a09e94ec7369e1; ?>
<?php unset($__attributesOriginal02f71db4cef74cc926a09e94ec7369e1); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal02f71db4cef74cc926a09e94ec7369e1)): ?>
<?php $component = $__componentOriginal02f71db4cef74cc926a09e94ec7369e1; ?>
<?php unset($__componentOriginal02f71db4cef74cc926a09e94ec7369e1); ?>
<?php endif; ?>

            <?php if (isset($component)) { $__componentOriginalc1d2405c7f8100d77292f2d0299ccd96 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96 = $attributes; } ?>
<?php $component = App\View\Components\Form\Input::resolve(['label' => 'Price','type' => 'number','name' => 'price','id' => 'price','value' => ''.e($item->price).'','placeholder' => 'Enter item price','required' => 'true','step' => '0.01'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('form.input'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Form\Input::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96)): ?>
<?php $attributes = $__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96; ?>
<?php unset($__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc1d2405c7f8100d77292f2d0299ccd96)): ?>
<?php $component = $__componentOriginalc1d2405c7f8100d77292f2d0299ccd96; ?>
<?php unset($__componentOriginalc1d2405c7f8100d77292f2d0299ccd96); ?>
<?php endif; ?>

            <?php if (isset($component)) { $__componentOriginal36c368e88b7801a467b55faa78ace34f = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal36c368e88b7801a467b55faa78ace34f = $attributes; } ?>
<?php $component = App\View\Components\Form\Select::resolve(['label' => 'Category','name' => 'category_id','id' => 'category_id','value' => ''.e($item->category_id).'','placeholder' => 'Select category','required' => 'true'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('form.select'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Form\Select::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['options' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute($categories)]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal36c368e88b7801a467b55faa78ace34f)): ?>
<?php $attributes = $__attributesOriginal36c368e88b7801a467b55faa78ace34f; ?>
<?php unset($__attributesOriginal36c368e88b7801a467b55faa78ace34f); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal36c368e88b7801a467b55faa78ace34f)): ?>
<?php $component = $__componentOriginal36c368e88b7801a467b55faa78ace34f; ?>
<?php unset($__componentOriginal36c368e88b7801a467b55faa78ace34f); ?>
<?php endif; ?>

            <?php if (isset($component)) { $__componentOriginalfd89ecdf7278f67d2ab8cfc191263edb = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginalfd89ecdf7278f67d2ab8cfc191263edb = $attributes; } ?>
<?php $component = App\View\Components\Form\InputCheckbox::resolve(['label' => 'Active','name' => 'active','id' => 'active','checked' => ''.e($item->active).'','required' => 'true'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('form.input-checkbox'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Form\InputCheckbox::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginalfd89ecdf7278f67d2ab8cfc191263edb)): ?>
<?php $attributes = $__attributesOriginalfd89ecdf7278f67d2ab8cfc191263edb; ?>
<?php unset($__attributesOriginalfd89ecdf7278f67d2ab8cfc191263edb); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalfd89ecdf7278f67d2ab8cfc191263edb)): ?>
<?php $component = $__componentOriginalfd89ecdf7278f67d2ab8cfc191263edb; ?>
<?php unset($__componentOriginalfd89ecdf7278f67d2ab8cfc191263edb); ?>
<?php endif; ?>

            <?php if (isset($component)) { $__componentOriginalc802df28b3acfc458d7b9cd7015c49ff = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginalc802df28b3acfc458d7b9cd7015c49ff = $attributes; } ?>
<?php $component = App\View\Components\ImageUploader::resolve(['name' => 'image','id' => 'image','src' => ''.e($item->cover).'','title' => 'Product Image','width' => '300','height' => '200','help' => 'Preferred image dimensions are 300x300. Max file size: 5MB.'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('image-uploader'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\ImageUploader::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginalc802df28b3acfc458d7b9cd7015c49ff)): ?>
<?php $attributes = $__attributesOriginalc802df28b3acfc458d7b9cd7015c49ff; ?>
<?php unset($__attributesOriginalc802df28b3acfc458d7b9cd7015c49ff); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc802df28b3acfc458d7b9cd7015c49ff)): ?>
<?php $component = $__componentOriginalc802df28b3acfc458d7b9cd7015c49ff; ?>
<?php unset($__componentOriginalc802df28b3acfc458d7b9cd7015c49ff); ?>
<?php endif; ?>

            <div>
                <label for="allergens" class="text-black dark:text-white block mb-2 text-sm font-medium">Allergens</label>
                <select id="allergens" name="allergens[]" multiple
                    class="mt-2 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm">
                    <?php $__currentLoopData = $allergens; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $allergen): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <option value="<?php echo e($allergen); ?>"
                            <?php echo e($item->itemAllergens && in_array($allergen, $item->itemAllergens) ? 'selected' : ''); ?>>
                            <?php echo e($allergen); ?></option>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </select>
            </div>

            <?php if (isset($component)) { $__componentOriginale67687e3e4e61f963b25a6bcf3983629 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginale67687e3e4e61f963b25a6bcf3983629 = $attributes; } ?>
<?php $component = App\View\Components\Button::resolve(['type' => 'submit','id' => 'add-item-btn','usage' => 'create'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('button'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Button::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
                Save
             <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginale67687e3e4e61f963b25a6bcf3983629)): ?>
<?php $attributes = $__attributesOriginale67687e3e4e61f963b25a6bcf3983629; ?>
<?php unset($__attributesOriginale67687e3e4e61f963b25a6bcf3983629); ?>
<?php endif; ?>
<?php if (isset($__componentOriginale67687e3e4e61f963b25a6bcf3983629)): ?>
<?php $component = $__componentOriginale67687e3e4e61f963b25a6bcf3983629; ?>
<?php unset($__componentOriginale67687e3e4e61f963b25a6bcf3983629); ?>
<?php endif; ?>
        </form>
    </main>
<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts'); ?>
    <script src="/assets/js/image-uploader.js"></script>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

    <script>
        $(document).ready(function() {
            $('#allergens').select2({
                tags: true, // Enable tagging feature
                tokenSeparators: [',', ' '], // Allow tags to be created by separating with comma or space
                placeholder: "Select or add allergens",
                width: '100%' // Ensure it takes the full width
            });
        });
    </script>
<?php $__env->stopPush(); ?>

<?php echo $__env->make('layouts.admin.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /media/mahfuz/Codes/side-projects/QRDine/resources/views/items/edit.blade.php ENDPATH**/ ?>