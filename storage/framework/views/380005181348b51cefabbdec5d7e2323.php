<?php
    $badgeClass = '';
    if ($status === 0) {
        $badgeClass = 'bg-gray-200 text-gray-700';
    } elseif ($status === 1) {
        $badgeClass = 'bg-green-500 text-white';
    } elseif ($status === 2) {
        $badgeClass = 'bg-red-500 text-white';
    } elseif ($status === 3) {
        $badgeClass = 'bg-yellow-500 text-white';
    } elseif ($status === 4) {
        $badgeClass = 'bg-blue-500 text-white';
    } elseif ($status === 5) {
        $badgeClass = 'bg-green-700 text-white';
    } elseif ($status === 6) {
        $badgeClass = 'bg-gray-400 text-white';
    }
?>


<span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium <?php echo e($badgeClass); ?>">
    <?php echo e(ucfirst($orderStatuses[$status])); ?>

</span>
<?php /**PATH /media/mahfuz/Codes/side-projects/QRDine/resources/views/orders/partials/status-badge.blade.php ENDPATH**/ ?>