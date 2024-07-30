<?php
    $orderStatuses = array_map(function ($status) {
        return ucfirst($status);
    }, config('order.statuses'));
    $paymentMethods = ['cash' => 'Cash', 'card' => 'Card'];
?>


<?php $__env->startSection('title', 'Order Details'); ?>

<?php $__env->startSection('main'); ?>
    <main class="max-w-5xl px-">
        <div class="flex justify-between mb-5">
            <h1 class="text-2xl font-bold text-black dark:text-gray-200">Order #<?php echo e($order->id); ?></h1>
            <a href="<?php echo e(route('orders')); ?>" class="text-blue-600 dark:text-blue-400 underline">Back to Orders</a>
        </div>

        <div class="bg-white dark:bg-gray-800 shadow overflow-hidden sm:rounded-lg">
            <div class="px-4 py-5 sm:px-6">
                <h3 class="text-lg leading-6 font-medium text-gray-900 dark:text-gray-200">
                    Order Information
                </h3>
            </div>
            <div class="border-t border-gray-200 dark:border-gray-700">
                <dl>
                    <div class="bg-gray-50 dark:bg-gray-900 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                        <dt class="text-sm font-medium text-gray-500 dark:text-gray-300">Order ID</dt>
                        <dd class="mt-1 text-sm text-gray-900 dark:text-gray-200 sm:mt-0 sm:col-span-2">#<?php echo e($order->id); ?>

                        </dd>
                    </div>
                    <div class="bg-white dark:bg-gray-800 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                        <dt class="text-sm font-medium text-gray-500 dark:text-gray-300">Placed at</dt>
                        <dd class="mt-1 text-sm text-gray-900 dark:text-gray-200 sm:mt-0 sm:col-span-2">
                            <?php echo e($order->created_at->setTimezone('GMT')->format('d M Y, H:i:s')); ?> GMT
                        </dd>
                    </div>
                    <div class="bg-gray-50 dark:bg-gray-900 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                        <dt class="text-sm font-medium text-gray-500 dark:text-gray-300">Customer Information</dt>
                        <dd class="mt-1 text-sm text-gray-900 dark:text-gray-200 sm:mt-0 sm:col-span-2">
                            <div>Name: <?php echo e($order->customer_name); ?></div>
                            <?php if($order->customer_email): ?>
                                <div>Email: <?php echo e($order->customer_email); ?></div>
                            <?php endif; ?>
                            <div>Phone: <?php echo e($order->customer_phone); ?></div>
                        </dd>
                    </div>
                    <div class="bg-white dark:bg-gray-800 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                        <dt class="text-sm text-gray-500 dark:text-gray-300 mb-2 font-semibold">Order Items</dt>
                        <dd class="mt-1 text-sm text-gray-900 dark:text-gray-200 sm:mt-0 sm:col-span-2">
                            <table class="w-full border-collapse border border-gray-200 dark:border-gray-700">
                                <thead class="bg-gray-50 dark:bg-gray-900">
                                    <tr>
                                        <th class="text-left border border-gray-200 dark:border-gray-700 px-4 py-2">Item
                                            Name</th>
                                        <th class="text-left border border-gray-200 dark:border-gray-700 px-4 py-2">Unit
                                            Price</th>
                                        <th class="text-left border border-gray-200 dark:border-gray-700 px-4 py-2">Quantity
                                        </th>
                                        <th class="text-left border border-gray-200 dark:border-gray-700 px-4 py-2">Total
                                            Price</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $__currentLoopData = $order->items; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <td class="border border-gray-200 dark:border-gray-700 px-4 py-2">
                                                <?php echo e($item['name']); ?></td>
                                            <td class="border border-gray-200 dark:border-gray-700 px-4 py-2">
                                                £<?php echo e($item['price']); ?></td>
                                            <td class="border border-gray-200 dark:border-gray-700 px-4 py-2">
                                                <?php echo e($item['quantity']); ?></td>
                                            <td class="border border-gray-200 dark:border-gray-700 px-4 py-2">
                                                £<?php echo e($item['price'] * $item['quantity']); ?></td>
                                        </tr>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </tbody>
                            </table>
                        </dd>
                    </div>
                    <div class="bg-gray-50 dark:bg-gray-900 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                        <dt class="text-sm font-medium text-gray-500 dark:text-gray-300">Total Amount</dt>
                        <dd class="mt-1 text-sm text-gray-900 dark:text-gray-200 sm:mt-0 sm:col-span-2">
                            £<?php echo e($order->amount); ?></dd>
                    </div>
                    <div class="bg-white dark:bg-gray-800 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                        <dt class="text-sm font-medium text-gray-500 dark:text-gray-300">Discount</dt>
                        <dd class="mt-1 text-sm text-gray-900 dark:text-gray-200 sm:mt-0 sm:col-span-2">
                            <?php if($order->coupon): ?>
                                <?php echo e($order->coupon->coupon_type == 0
                                    ? "{$order->coupon->valu}%, £{$order->coupon->discount}"
                                    : "flat £{$order->coupon->value}"); ?>

                            <?php else: ?>
                                None
                            <?php endif; ?>
                        </dd>
                    </div>
                    <div class="bg-gray-50 dark:bg-gray-900 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                        <dt class="text-sm font-medium text-gray-500 dark:text-gray-300">Amount after Discount</dt>
                        <dd class="mt-1 text-sm text-gray-900 dark:text-gray-200 sm:mt-0 sm:col-span-2">
                            <?php if($order->coupon): ?>
                                £<?php echo e($order->amount - $order->coupon->discount); ?>

                            <?php else: ?>
                                £<?php echo e($order->amount); ?>

                            <?php endif; ?>
                        </dd>
                    </div>
                    <div class="bg-white dark:bg-gray-800 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                        <dt class="text-sm font-medium text-gray-500 dark:text-gray-300">Payment Method</dt>
                        <dd class="mt-1 text-sm text-gray-900 dark:text-gray-200 sm:mt-0 sm:col-span-2">
                            <?php echo e(ucfirst($order->payment_method)); ?>

                        </dd>
                    </div>
                    <?php if($order->payment_method != 'cash'): ?>
                        <div class="bg-white dark:bg-gray-800 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                            <dt class="text-sm font-medium text-gray-500 dark:text-gray-300">Payment ID</dt>
                            <dd class="mt-1 text-sm text-gray-900 dark:text-gray-200 sm:mt-0 sm:col-span-2">
                                #<?php echo e($order->payment->id); ?>

                            </dd>
                        </div>
                    <?php endif; ?>
                    <div class="bg-gray-50 dark:bg-gray-900 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                        <dt class="text-sm font-medium text-gray-500 dark:text-gray-300">Last Update</dt>
                        <dd class="mt-1 text-sm text-gray-900 dark:text-gray-200 sm:mt-0 sm:col-span-2">
                            <?php echo e($order->updated_at ? $order->updated_at->setTimezone('GMT')->format('d M Y, H:i:s') : $order->created_at->setTimezone('GMT')->format('d M Y, H:i:s')); ?>

                            GMT
                        </dd>
                    </div>
                    <div class="bg-white dark:bg-gray-800 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                        <dt class="text-sm font-medium text-gray-500 dark:text-gray-300">Status</dt>
                        <dd class="mt-1 text-sm text-gray-900 dark:text-gray-200 sm:mt-0 sm:col-span-2">
                            <?php echo $__env->make('orders.partials.status-badge', ['status' => $order->status], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        </dd>
                    </div>
                    <div class="bg-gray-50 dark:bg-gray-900 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                        <dt class="text-sm font-medium text-gray-500 dark:text-gray-300">Actions</dt>
                        <dd class="mt-1 text-sm text-gray-900 dark:text-gray-200 sm:mt-0 sm:col-span-2">
                            <?php echo $__env->make('orders.partials.status-update', [
                                'status' => $order->status,
                                'paymentMethod' => $order->payment_method,
                            ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        </dd>
                    </div>
                </dl>
            </div>
        </div>
    </main>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.admin.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /media/mahfuz/Codes/side-projects/QRDine/resources/views/orders/show.blade.php ENDPATH**/ ?>