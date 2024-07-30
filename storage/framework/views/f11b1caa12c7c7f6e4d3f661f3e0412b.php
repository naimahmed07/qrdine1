<?php
    $orderStatuses = array_map(function ($status) {
        return ucfirst($status);
    }, config('order.statuses'));
    $paymentMethods = ['cash' => 'Cash', 'card' => 'Card'];
?>



<?php $__env->startSection('title', 'Dashboard'); ?>

<?php $__env->startSection('main'); ?>
    
    <div class="grid w-full grid-cols-1 gap-4 xl:grid-cols-2 2xl:grid-cols-4 mb-8">
        <div class="p-4 bg-white border border-gray-200 rounded-lg shadow-sm dark:border-gray-700 sm:p-6 dark:bg-gray-800">
            <h3 class="text-xl font-normal text-gray-500 dark:text-gray-400 mb-2">Total revenue</h3>
            <div class="flex items-end justify-between">
                <p class="text-2xl font-bold leading-none text-gray-900 sm:text-3xl dark:text-white">£<?php echo e($totalRevenue); ?></p>
                <p class="text-gray-500 dark:text-gray-400 text-3xl">
                    <i class="fa-solid fa-money-bill"></i>
                </p>
            </div>
        </div>
        <div class="p-4 bg-white border border-gray-200 rounded-lg shadow-sm dark:border-gray-700 sm:p-6 dark:bg-gray-800">
            <h3 class="text-xl font-normal text-gray-500 dark:text-gray-400 mb-2">Total orders</h3>
            <div class="flex items-end justify-between">
                <p class="text-2xl font-bold leading-none text-gray-900 sm:text-3xl dark:text-white">
                    <?php echo e($totalOrders); ?>

                </p>
                <p class="text-gray-500 dark:text-gray-400 text-3xl">
                    <i class="fa-solid fa-bag-shopping"></i>
                </p>
            </div>
        </div>
        <div class="p-4 bg-white border border-gray-200 rounded-lg shadow-sm dark:border-gray-700 sm:p-6 dark:bg-gray-800">
            <h3 class="text-xl font-normal text-gray-500 dark:text-gray-400 mb-2">Total customers</h3>
            <div class="flex items-end justify-between">
                <p class="text-2xl font-bold leading-none text-gray-900 sm:text-3xl dark:text-white">
                    <?php echo e($totalCustomers); ?>

                </p>
                <p class="text-gray-500 dark:text-gray-400 text-3xl">
                    <i class="fa-solid fa-users"></i>
                </p>
            </div>
        </div>
        <div class="p-4 bg-white border border-gray-200 rounded-lg shadow-sm dark:border-gray-700 sm:p-6 dark:bg-gray-800">
            <h3 class="text-xl font-normal text-gray-500 dark:text-gray-400 mb-2">Active coupons</h3>
            <div class="flex items-end justify-between">
                <p class="text-2xl font-bold leading-none text-gray-900 sm:text-3xl dark:text-white">
                    <?php echo e($activeCoupons); ?>

                </p>
                <p class="text-gray-500 dark:text-gray-400 text-3xl">
                    <i class="fa-solid fa-ticket"></i>
                </p>
            </div>
        </div>
        <div class="p-4 bg-white border border-gray-200 rounded-lg shadow-sm dark:border-gray-700 sm:p-6 dark:bg-gray-800">
            <h3 class="text-xl font-normal text-gray-500 dark:text-gray-400 mb-2">Tody's orders</h3>
            <div class="flex items-end justify-between">
                <p class="text-2xl font-bold leading-none text-gray-900 sm:text-3xl dark:text-white">
                    <?php echo e($ordersToday); ?>

                </p>
                <p class="text-gray-500 dark:text-gray-400 text-3xl">
                    <i class="fa-solid fa-bag-shopping"></i>
                </p>
            </div>
        </div>
        <div class="p-4 bg-white border border-gray-200 rounded-lg shadow-sm dark:border-gray-700 sm:p-6 dark:bg-gray-800">
            <h3 class="text-xl font-normal text-gray-500 dark:text-gray-400 mb-2">Orders (Last 7 days)</h3>
            <div class="flex items-end justify-between">
                <p class="text-2xl font-bold leading-none text-gray-900 sm:text-3xl dark:text-white">
                    <?php echo e($ordersLast7Days); ?>

                </p>
                <p class="text-gray-500 dark:text-gray-400 text-3xl">
                    <i class="fa-solid fa-bag-shopping"></i>
                </p>
            </div>
        </div>
        <div class="p-4 bg-white border border-gray-200 rounded-lg shadow-sm dark:border-gray-700 sm:p-6 dark:bg-gray-800">
            <h3 class="text-xl font-normal text-gray-500 dark:text-gray-400 mb-2">
                Orders (Last 30 days)
            </h3>
            <div class="flex items-end justify-between">
                <p class="text-2xl font-bold leading-none text-gray-900 sm:text-3xl dark:text-white">
                    <?php echo e($ordersLast30Days); ?>

                </p>
                <p class="text-gray-500 dark:text-gray-400 text-3xl">
                    <i class="fa-solid fa-bag-shopping"></i>
                </p>
            </div>
        </div>
        <div class="p-4 bg-white border border-gray-200 rounded-lg shadow-sm dark:border-gray-700 sm:p-6 dark:bg-gray-800">
            <h3 class="text-xl font-normal text-gray-500 dark:text-gray-400 mb-2">
                Sales (Today)
            </h3>
            <div class="flex items-end justify-between">
                <p class="text-2xl font-bold leading-none text-gray-900 sm:text-3xl dark:text-white">
                    £<?php echo e($salesToday); ?>

                </p>
                <p class="text-gray-500 dark:text-gray-400 text-3xl">
                    <i class="fa-solid fa-money-bill"></i>
                </p>
            </div>
        </div>
        <div class="p-4 bg-white border border-gray-200 rounded-lg shadow-sm dark:border-gray-700 sm:p-6 dark:bg-gray-800">
            <h3 class="text-xl font-normal text-gray-500 dark:text-gray-400 mb-2">
                Sales (Last 7 days)
            </h3>
            <div class="flex items-end justify-between">
                <p class="text-2xl font-bold leading-none text-gray-900 sm:text-3xl dark:text-white">
                    £<?php echo e($salesLast7Days); ?>

                </p>
                <p class="text-gray-500 dark:text-gray-400 text-3xl">
                    <i class="fa-solid fa-money-bill"></i>
                </p>
            </div>
        </div>
        <div class="p-4 bg-white border border-gray-200 rounded-lg shadow-sm dark:border-gray-700 sm:p-6 dark:bg-gray-800">
            <h3 class="text-xl font-normal text-gray-500 dark:text-gray-400 mb-2">
                Sales (Last 30 days)
            </h3>
            <div class="flex items-end justify-between">
                <p class="text-2xl font-bold leading-none text-gray-900 sm:text-3xl dark:text-white">
                    £<?php echo e($salesLast30Days); ?>

                </p>
                <p class="text-gray-500 dark:text-gray-400 text-3xl">
                    <i class="fa-solid fa-money-bill"></i>
                </p>
            </div>
        </div>
    </div>

    

    <div class="mb-2 grid grid-cols-3 gap-4">
        <div class="col-span-2">
            <h3 class="text-xl font-normal text-gray-500 dark:text-gray-400 mb-2">Recent Orders</h3>
            <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
                <table class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
                    <thead class="text-gray-700 bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                        <tr class="text-base">
                            <th scope="col" class="px-6 py-3">
                                ID
                            </th>
                            <th scope="col" class="px-6 py-3">
                                No of items
                            </th>
                            <th scope="col" class="px-6 py-3">
                                Payable
                            </th>
                            <th scope="col" class="px-6 py-3">
                                method
                            </th>
                            <th scope="col" class="px-6 py-3">
                                Last update
                            </th>
                            <th scope="col" class="px-6 py-3">
                                Status
                            </th>
                            <th scope="col" class="px-6 py-3">
                                Actions
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $__empty_1 = true; $__currentLoopData = $recentOrders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $order): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                            <tr
                                class="bg-white border-b dark:bg-gray-800 dark:border-gray-700 hover:bg-gray-50 dark:hover:bg-gray-600">
                                <th scope="row"
                                    class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                    <a class="text-blue-600 dark:text-blue-400 underline"
                                        href="<?php echo e(route('orders.show', $order->id)); ?>">#<?php echo e($order->id); ?></a>
                                </th>
                                <th scope="row"
                                    class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                    <?php echo e(count($order->items)); ?>

                                </th>
                                <td class="px-6 py-4">
                                    <?php if($order->coupon): ?>
                                        £<?php echo e($order->amount - $order->coupon->discount); ?>

                                    <?php else: ?>
                                        £<?php echo e($order->amount); ?>

                                    <?php endif; ?>
                                </td>
                                </td>
                                <td class="px-6 py-4">
                                    <?php echo e(ucfirst($order->payment_method)); ?>

                                </td>
                                <td class="px-6 py-4">
                                    <?php echo e($order->updated_at ? $order->updated_at->setTimezone('GMT')->format('d M Y, H:i:s') : $order->created_at->setTimezone('GMT')->format('d M Y, H:i:s')); ?>

                                    GMT
                                </td>
                                <td class="px-6 py-4">
                                    <?php echo $__env->make('orders.partials.status-badge', [
                                        'status' => $order->status,
                                    ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                </td>
                                <td class="px-6 py-4">
                                    <?php echo $__env->make('orders.partials.status-update', [
                                        'status' => $order->status,
                                        'paymentMethod' => $order->payment_method,
                                    ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                </td>
                            </tr>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </tbody>
                </table>
            </div>
        </div>

        <?php if(auth()->user()->type == 1): ?>
            <div class="col-span-1">
                <h3 class="text-xl font-normal text-gray-500 dark:text-gray-400 mb-2">Top selling Restaurants</h3>
                <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
                    <table class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
                        <thead class="text-gray-700 bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                            <tr class="text-base">
                                <th scope="col" class="px-6 py-3">
                                    Name
                                </th>
                                <th scope="col" class="px-6 py-3">
                                    Orders
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $__empty_2 = true; $__currentLoopData = $topPerformingRestaurants; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $restaurant): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_2 = false; ?>
                                <tr
                                    class="bg-white border-b dark:bg-gray-800 dark:border-gray-700 hover:bg-gray-50 dark:hover:bg-gray-600">

                                    <th scope="row"
                                        class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                        <?php echo e($restaurant->name); ?>

                                    </th>
                                    </td>
                                    <td class="px-6 py-4">
                                        <?php echo e($restaurant->orders_count); ?>

                                    </td>
                                </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </tbody>
                    </table>
                </div>
            </div>
        <?php else: ?>
            <div class="col-span-1">
                <h3 class="text-xl font-normal text-gray-500 dark:text-gray-400 mb-2">Top selling Items</h3>
                <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
                    <table class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
                        <thead class="text-gray-700 bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                            <tr class="text-base">
                                <th scope="col" class="px-6 py-3">
                                    Name
                                </th>
                                <th scope="col" class="px-6 py-3">
                                    Quantity
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $__empty_3 = true; $__currentLoopData = $topSellingItems; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_3 = false; ?>
                                <tr
                                    class="bg-white border-b dark:bg-gray-800 dark:border-gray-700 hover:bg-gray-50 dark:hover:bg-gray-600">

                                    <th scope="row"
                                        class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                        <?php echo e($item['name']); ?>

                                    </th>
                                    </td>
                                    <td class="px-6 py-4">
                                        <?php echo e($item['quantity']); ?>

                                    </td>
                                </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </tbody>
                    </table>
                </div>
            </div>
        <?php endif; ?>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.admin.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /media/mahfuz/Codes/side-projects/QRDine/resources/views/dashboard.blade.php ENDPATH**/ ?>