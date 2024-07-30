<div>
    <label for="<?php echo e($id); ?>" class="text-black dark:text-white block mb-2 text-sm font-medium">
        <?php echo e($label); ?>

    </label>
    <textarea name="<?php echo e($name); ?>" id="<?php echo e($id); ?>"
        class="border sm:text-sm rounded-lg block w-full p-2.5
    dark:bg-gray-700 dark:border-gray-600 dark:text-white
    light:bg-gray-200 light:border-gray-300 light:text-black <?php echo e($disabled ? 'opacity-75' : ''); ?>"
        value="<?php echo e($value); ?>" placeholder="<?php echo e($placeholder); ?>" required="<?php echo e($required); ?>"><?php echo e($value); ?></textarea>
</div>
<?php /**PATH /media/mahfuz/Codes/side-projects/QRDine/resources/views/components/form/input-textarea.blade.php ENDPATH**/ ?>