<div class="flex items-start">
    <div class="flex items-center h-5">
        <input id="<?php echo e($id); ?>" name="<?php echo e($name); ?>" type="checkbox"
            class="w-4 h-4 rounded dark:bg-gray-700 border-gray-600" <?php echo e($checked ? 'checked' : ''); ?>>
    </div>
    <div class="ml-2 text-sm">
        <label for="<?php echo e($id); ?>" class="text-black dark:text-white font-medium">
            <?php echo e($label); ?>

        </label>
    </div>
</div>
<?php /**PATH /media/mahfuz/Codes/side-projects/QRDine/resources/views/components/form/input-checkbox.blade.php ENDPATH**/ ?>