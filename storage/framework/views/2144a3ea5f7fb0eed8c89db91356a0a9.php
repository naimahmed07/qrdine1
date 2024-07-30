<?php
    $textColor = 'text-white';
    $bgColor = $usage == 'create' ? 'bg-green-700' : ($usage == 'update' ? 'bg-blue-700' : 'bg-red-700');
    $hoverBgColor = $usage == 'create' ? 'hover:bg-green-500' : ($usage == 'update' ? 'hover:bg-blue-600' : 'hover:bg-red-50');
    $sizeClasses = $size == 'normal' ? 'px-5 py-2 text-base' : ($size == 'small' ? 'px-3 py-1 text-sm' : 'px-7 py-3 text-lg');
?>

<?php if($type == 'link'): ?>
    <a href="<?php echo e($href); ?>" id="<?php echo e($id); ?>"
        class="<?php echo e($sizeClasses); ?> text-center <?php echo e($textColor); ?> <?php echo e($bgColor); ?> <?php echo e($hoverBgColor); ?> rounded-lg">
        <?php echo e($slot); ?>

    </a>
<?php else: ?>
    <button type="<?php echo e($type); ?>" id="<?php echo e($id); ?>"
        class="<?php echo e($sizeClasses); ?> text-center <?php echo e($textColor); ?> <?php echo e($bgColor); ?> <?php echo e($hoverBgColor); ?> rounded-lg">
        <?php echo e($slot); ?>

    </button>
<?php endif; ?>
<?php /**PATH /media/mahfuz/Codes/side-projects/QRDine/resources/views/components/button.blade.php ENDPATH**/ ?>