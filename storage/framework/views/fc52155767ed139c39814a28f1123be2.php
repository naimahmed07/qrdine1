<?php
    $textColor = 'text-white';
    $bgColor = $usage == 'create' ? 'bg-green-700' : ($usage == 'update' ? 'bg-blue-700' : 'bg-red-700');
    $hoverBgColor = $usage == 'create' ? 'hover:bg-green-50' : ($usage == 'update' ? 'hover:bg-blue-600' : 'hover:bg-red-50');
?>

<button type="<?php echo e($type); ?>" id="<?php echo e($id); ?>"
    class="px-5 py-2 text-base font-medium text-center <?php echo e($textColor); ?> <?php echo e($bgColor); ?> <?php echo e($hoverBgColor); ?> rounded-lg">
    <?php echo e($slot); ?>

</button>
<?php /**PATH /media/mahfuz/Codes/side-projects/restaurant-tableside/resources/views/components/button.blade.php ENDPATH**/ ?>