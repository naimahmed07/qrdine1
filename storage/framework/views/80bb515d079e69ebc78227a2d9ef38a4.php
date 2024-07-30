<?php
// dd(Session::all());
?>
<div>
    <!-- Backdrop overlay -->
    <div id="backdrop"
        class="fixed inset-0 bg-black opacity-0 pointer-events-none z-10 transition-opacity duration-300 ease-in-out">
    </div>

    <!-- Cart Modal Button -->
    <button onclick="openCartModal()"
        class="fixed bottom-6 right-6 bg-gray-500 text-white py-2 px-4 rounded-full shadow-md z-20">
        Cart <?php echo e(count($cartItems) > 0 ? array_sum($cartItems) : ''); ?>

    </button>

    <!-- Item Modal -->
    <div id="itemModal"
        class="<?php echo e($curItem ? '' : 'translate-y-full'); ?> fixed bottom-0 inset-x-0 bg-white p-4 transform transition duration-300 ease-in-out z-30 rounded-t-3xl mx-2">
        <!-- Close button and Item name -->
        <div class="flex justify-between mb-3">
            <h2 class="text-2xl font-semibold"><?php echo e($curItem ? $curItem->name : ''); ?></h2>
            <button onclick="closeItemModal()" class="bg-gray-200 text-gray-600 rounded-full px-3 py-1">&times;</button>
        </div>
        <!-- Item details -->
        <div class="grid grid-cols-1 md:grid-cols-2 gap-4 mb-4">
            <img src="<?php echo e($curItem ? $curItem->imageUrl : ''); ?>" alt="Item Image" class="w-full h-full rounded-md">
            <div>
                <p class="font-semibold text-lg"><?php echo e($curItem ? $curItem->name : ''); ?></p>
                <p class="text-gray-600"><?php echo e($curItem ? $curItem->description : ''); ?></p>
                <!-- Quantity selector -->
                <div class="mt-3 flex items-center">
                    <button wire:click="decCurItemQty"
                        class="bg-gray-300 text-gray-700 rounded px-3 py-1 mr-2">-</button>
                    <span class="text-lg"><?php echo e($curItemQty); ?></span>
                    <button wire:click="incCurItemQty"
                        class="bg-gray-300 text-gray-700 rounded px-3 py-1 ml-2">+</button>
                </div>
                <!-- Allergens and toppings here -->
                <!-- ... -->
            </div>
        </div>
        <!-- Checkout button -->
        <button onclick="addToCart()" class="w-full bg-blue-500 text-white py-2 mt-4 rounded-lg">
            Add to Cart
        </button>
    </div>


    <!-- Cart Modal -->
    <div id="cartModal"
        class="fixed bottom-0 inset-x-0 bg-white p-4 transform translate-y-full transition duration-300 ease-in-out z-30 rounded-t-3xl mx-2">
        <!-- Close button -->
        <div class="flex justify-between mb-3">
            <h2 class="text-2xl font-semibold">Cart</h2>
            <button onclick="closeCartModal()" class="bg-gray-200 text-gray-600 rounded-full px-3 py-1">&times;</button>
        </div>
        <!-- Cart items list -->
        <div class="overflow-y-auto max-h-96">
            <!-- Iterate over cart items and display them here -->
            
        </div>
        <!-- Checkout button -->
        <button onclick="openCheckoutModal()"
            class="w-full bg-gray-500 text-white py-2 mt-4 rounded-lg">Checkout</button>
    </div>

    <!-- Checkout Modal -->
    <div id="checkoutModal"
        class="fixed bottom-0 inset-x-0 bg-white p-4 transform translate-y-full transition duration-300 ease-in-out z-30 rounded-t-3xl mx-2">

        <div class="flex justify-between mb-3">
            <h2 class="text-2xl font-semibold">Checkout</h2>
            <button onclick="closeCheckoutModal()"
                class="bg-gray-200 text-gray-600 rounded-full px-3 py-1">&times;</button>
        </div>
        <form class="space-y-4">
            <div>
                <label for="name" class="block font-semibold">Name</label>
                <input type="text" id="name" name="name"
                    class="w-full border border-gray-200 rounded-md py-2 px-3">
            </div>
            <div>
                <label for="phone" class="block font-semibold">Phone</label>
                <input type="text" id="phone" name="phone"
                    class="w-full border border-gray-200 rounded-md py-2 px-3">
            </div>
            <div>
                <label for="coupon" class="block font-semibold">Coupon Code</label>
                <input type="text" id="coupon" name="coupon"
                    class="w-full border border-gray-200 rounded-md py-2 px-3">
            </div>
            <!-- Submit button -->
            <button type="submit" class="w-full bg-gray-500 text-white py-2 rounded-lg">Place Order</button>
        </form>
    </div>

    <!-- Cover Image -->
    <div class="bg-cover bg-center h-80 hidden md:block"
        style="background-image: url('<?php echo e($restaurant->cover != '' ? $restaurant->cover : 'https://bikri.io/uploads/restorants/38/a17479bd-fc39-4858-98e3-fef835c4edd6_cover.jpg'); ?>');">
    </div>

    <div class="container mx-auto px-4 lg:px-0">
        <!-- Restaurant Logo and Name -->
        <div class="flex flex-col items-center mt-2 md:items-start">
            <img src="<?php echo e($restaurant->logo != '' ? $restaurant->logo : 'https://rimazkitchen.bikri.io/uploads/restorants/19/eb0861c1-0316-4f30-b8fa-a5cffdbb8cb4_thumbnail.jpg'); ?>"
                alt="<?php echo e($restaurant->name); ?> Logo" class="w-32 h-32 p-1 rounded-full border-black border-4 mb-4">
            <h2 class="text-3xl font-semibold my-4"><?php echo e($restaurant->name); ?></h2>
            <p class="text-gray-600"><?php echo e($restaurant->description); ?></p>
        </div>

        <!-- Categories List -->
        <div class="flex items-center justify-between mt-6 overflow-x-auto sticky top-1 mb-3">
            <div class="flex gap-3 mb-1">
                <!--[if BLOCK]><![endif]--><?php $__currentLoopData = $restaurant->categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <a href="#cat-<?php echo e(str_replace(' ', '-', $category->name)); ?>"
                        class="category-link bg-gray-300 text-lg text-gray-700 px-3 py-1 rounded-xl hover:bg-gray-400"
                        onclick="toggleActive(this)"><?php echo e($category->name); ?></a>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><!--[if ENDBLOCK]><![endif]-->
            </div>
        </div>


        <!-- Categories and Items -->
        <div class="flex flex-col gap-y-6 mt-6 mb-5">
            <!--[if BLOCK]><![endif]--><?php $__currentLoopData = $restaurant->categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <!--[if BLOCK]><![endif]--><?php if($category->items->isNotEmpty() && $category->active): ?>
                    <div class="bg-green-10 max-w-5xl rounded-lg"
                        id="cat-<?php echo e(str_replace(' ', '-', $category->name)); ?>">
                        <h2 class="text-xl font-semibold mb-2"><?php echo e($category->name); ?></h2>
                        <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                            <!--[if BLOCK]><![endif]--><?php $__currentLoopData = $category->items; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div class="flex items-center gap-x-2 justify-between border p-2 mb-2 rounded-lg cursor-pointer"
                                    wire:click="setCurItem(<?php echo e($item->id); ?>)">
                                    <div class="ml-3">
                                        <p class="text-md font-semibold"><?php echo e($item->name); ?></p>
                                        <p class="text-gray-600"><?php echo e($item->price); ?></p>
                                        <!-- Description for small devices -->
                                        <p class="text-gray-500">
                                            <?php echo e(Str::limit($item->description, 50)); ?></p>
                                    </div>
                                    <div class="flex-shrink-0">
                                        <img src="<?php echo e($item->logo != '' ? $item->logo : 'https://rimazkitchen.bikri.io/uploads/restorants/19/d4f6f2a1-f34c-42e9-9537-4ea6d29cd451_thumbnail.jpg'); ?>"
                                            alt="<?php echo e($item->name); ?>" class="w-20 h-20 rounded-md">
                                    </div>
                                </div>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><!--[if ENDBLOCK]><![endif]-->
                        </div>
                    </div>
                <?php endif; ?><!--[if ENDBLOCK]><![endif]-->
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><!--[if ENDBLOCK]><![endif]-->
        </div>
    </div>
</div>
<?php /**PATH /media/mahfuz/Codes/side-projects/QRDine/resources/views/livewire/simple-resto-template.blade.php ENDPATH**/ ?>