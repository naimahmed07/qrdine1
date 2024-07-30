<!-- Cover Image -->
<div class="bg-cover bg-center h-80 hidden md:block"
    style="background-image: url('<?php echo e($restaurant->cover != '' ? $restaurant->cover : 'https://bikri.io/uploads/restorants/38/a17479bd-fc39-4858-98e3-fef835c4edd6_cover.jpg'); ?>');">
</div>

<div class="container mx-auto px-4 lg:px-0">
    <!-- Restaurant Logo and Name -->
    <div class="flex flex-col items-center mt-2 md:items-start">
        <img src="<?php echo e($restaurant->logo != '' ? $restaurant->logo : 'https://rimazkitchen.bikri.io/uploads/restorants/19/eb0861c1-0316-4f30-b8fa-a5cffdbb8cb4_thumbnail.jpg'); ?>"
            alt="<?php echo e($restaurant->name); ?> Logo" class="w-32 h-32 p-1 rounded-full border-gray-600 border-2 mb-4">
        <h2 class="text-3xl font-semibold my-4"><?php echo e($restaurant->name); ?></h2>
        <p class="text-gray-600"><?php echo e($restaurant->description); ?></p>
    </div>

    <!-- Categories List -->
    <div class="flex flex-wrap gap-2 items-center mt-6 mb-3">
        <?php $__currentLoopData = $restaurant->categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <a href="#cat-<?php echo e(str_replace(' ', '-', $category->name)); ?>"
                class="shadow bg-gray-300 text-lg text-gray-700 px-3 py-1 rounded-full hover:bg-gray-800 hover:text-white"
                onclick="toggleActive(this)">
                <?php echo e($category->name); ?>

            </a>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </div>

    <!-- Categories and Items -->
    <div class="flex flex-col gap-y-6 mt-6 mb-5" id="#item-section">
        <?php $__currentLoopData = $restaurant->categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <?php if($category->items->isNotEmpty() && $category->active): ?>
                <div class="bg-green-10 max-w-5xl rounded-lg" id="cat-<?php echo e(str_replace(' ', '-', $category->name)); ?>">
                    <h2 class="text-xl font-semibold mb-2"><?php echo e($category->name); ?></h2>
                    <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                        <?php $__currentLoopData = $category->items; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="flex items-center gap-x-3 justify-between border-2 border-gray-200 p-3 mb-2 rounded-lg cursor-pointer"
                                onclick="setCurItem(<?php echo e($item->id); ?>)">
                                <div class="">
                                    <p class="text-md font-semibold"><?php echo e($item->name); ?></p>
                                    <!-- Description for small devices -->
                                    <p class="text-gray-500">
                                        <?php echo e(Str::limit($item->description, 50)); ?></p>
                                    <p class="text-gray-700 font-bold">£<?php echo e($item->price); ?></p>
                                </div>
                                <div class="flex-shrink-0">
                                    <img src="<?php echo e($item->logo != '' ? $item->logo : asset('assets') . '/images/no-image.png'); ?>"
                                        alt="<?php echo e($item->name); ?>"
                                        class="w-20 h-20 rounded-full">
                                </div>
                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </div>
                </div>
            <?php endif; ?>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </div>
</div>
</div>
<?php /**PATH /media/mahfuz/Codes/side-projects/QRDine/resources/views/templates/hunger-template.blade.php ENDPATH**/ ?>