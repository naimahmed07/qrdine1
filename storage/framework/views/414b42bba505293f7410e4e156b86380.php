<?php
    $imagePath = strlen($src) ? $src : asset('assets/images/camera-icon.jpg');
    $removeButtonStyle = strlen($src) ? 'block' : 'hidden';
?>

<div id="image-preview" class="flex flex-col items-center">
    <label class="font-semibold" for=""><?php echo e($title); ?></label>
    <?php if(isset($help)): ?>
        <p class="text-gray-600" v-html="help"></p>
    <?php endif; ?>

    <div class="relative overflow-hidden border border-gray-300"
        style="width: <?php echo e($width); ?>px; height: <?php echo e($height); ?>px">
        <img src="<?php echo e($imagePath); ?>" id="<?php echo e($id); ?>_preview_div"
            class="w-full h-auto absolute top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2" />
    </div>

    <div class="mt-3 flex justify-center">
        <div>
            <label for="<?php echo e($id); ?>"
                class="cursor-pointer px-2 py-1 bg-black text-white text-sm leading-4 font-medium rounded">Upload</label>
            <input type="file" name="<?php echo e($name); ?>" id="<?php echo e($id); ?>" accept="image/*"
                onchange="previewImage(event)" class="hidden">
        </div>

        <div>
            <button type="button" id="<?php echo e($id); ?>_remove_btn"
                class="px-2 py-1 bg-red-600 text-white text-sm leading-4 font-medium rounded ml-3 <?php echo e($removeButtonStyle); ?>">
                Remove
            </button>
        </div>
        <input type="hidden" name="<?php echo e($name); ?>_ex" id="<?php echo e($id); ?>_ex" value="0">
    </div>
</div>
<?php /**PATH /media/mahfuz/Codes/side-projects/QRDine/resources/views/components/image-uploader.blade.php ENDPATH**/ ?>