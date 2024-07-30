<div>
    <label for="<?php echo e($id); ?>" class="block mb-2 text-sm font-medium text-white">
        <?php echo e($label); ?>

    </label>
    <input type="<?php echo e($type); ?>" name="<?php echo e($name); ?>" id="<?php echo e($id); ?>"
        class="border sm:text-sm rounded-lg block w-full p-2.5 bg-gray-700 border-gray-600 text-white <?php echo e($disabled ? 'opacity-75' : ''); ?>"
        value="<?php echo e($value); ?>" placeholder="<?php echo e($placeholder); ?>" required="<?php echo e($required); ?>"
        <?php echo e($disabled ? 'disabled' : ''); ?> />
</div>
<?php /**PATH /media/mahfuz/Codes/side-projects/restaurant-tableside/resources/views/components/form/input-text.blade.php ENDPATH**/ ?>