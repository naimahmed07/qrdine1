<?php $attributes ??= new \Illuminate\View\ComponentAttributeBag; ?>
<?php foreach($attributes->onlyProps(['options']) as $__key => $__value) {
    $$__key = $$__key ?? $__value;
} ?>
<?php $attributes = $attributes->exceptProps(['options']); ?>
<?php foreach (array_filter((['options']), 'is_string', ARRAY_FILTER_USE_KEY) as $__key => $__value) {
    $$__key = $$__key ?? $__value;
} ?>
<?php $__defined_vars = get_defined_vars(); ?>
<?php foreach ($attributes as $__key => $__value) {
    if (array_key_exists($__key, $__defined_vars)) unset($$__key);
} ?>
<?php unset($__defined_vars); ?>

<div>
    <label for="<?php echo e($id); ?>" class="text-black dark:text-white block mb-2 text-sm font-medium">
        <?php echo e($label); ?>

    </label>
    <select name="<?php echo e($name); ?>" id="<?php echo e($id); ?>"
        class="border sm:text-sm rounded-lg block w-full p-2
            dark:bg-gray-700 dark:border-gray-600 dark:text-white
            light:bg-gray-200 light:border-gray-300 light:text-black <?php echo e($disabled ? 'opacity-75' : ''); ?>"
        <?php echo e($disabled ? 'disabled' : ''); ?> <?php echo e($required ? 'required' : ''); ?>>
        <option value="<?php echo e($value); ?>"><?php echo e($placeholder); ?></option>
        <?php $__currentLoopData = $options; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $optionValue => $optionLabel): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <option value="<?php echo e($optionValue); ?>" <?php echo e($value == $optionValue ? 'selected' : ''); ?>>
                <?php echo e($optionLabel); ?>

            </option>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </select>
</div>
<?php /**PATH /media/mahfuz/Codes/side-projects/QRDine/resources/views/components/form/select.blade.php ENDPATH**/ ?>