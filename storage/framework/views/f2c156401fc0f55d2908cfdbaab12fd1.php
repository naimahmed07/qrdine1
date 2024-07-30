<div class="<?php echo e($divClass); ?>" id="<?php echo e($id); ?>_div">
    <label for="<?php echo e($id); ?>" class="text-black dark:text-white block mb-2 text-sm font-medium">
        <?php echo e($label); ?>

    </label>

    <input type="<?php echo e($type); ?>" value="<?php echo e($value); ?>"
        class="border text-sm rounded-lg block w-full p-2 dark:bg-gray-700 dark:border-gray-600 dark:text-white light:bg-gray-200 light:border-gray-300 light:text-black<?php echo e($disabled ? ' opacity-75' : ''); ?><?php echo e($class); ?>"
        name="<?php echo e($name); ?>" id="<?php echo e($id); ?>" <?php echo e($type == 'number' && $min != null ? 'min=' . $min : ''); ?>

        <?php echo e($type == 'number' && $max != null ? 'max=' . $max : ''); ?>

        <?php echo e($type == 'number' && $step != null ? 'step=' . $step : ''); ?> placeholder="<?php echo e($placeholder); ?>"
        <?php echo e($required ? 'required' : ''); ?> <?php echo e($disabled ? 'disabled' : ''); ?> />
</div>
<?php /**PATH /media/mahfuz/Codes/side-projects/QRDine/resources/views/components/form/input.blade.php ENDPATH**/ ?>