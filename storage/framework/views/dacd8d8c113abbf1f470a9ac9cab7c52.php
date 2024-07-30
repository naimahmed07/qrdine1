<?php $__env->startSection('title', 'Edit Restaurant'); ?>
<?php $__env->startSection('main'); ?>
    <main class="bg-white dark:bg-gray-800 p-6 rounded-lg max-w-2xl">
        <h1 class="mb-5 text-3xl font-bold text-gray-900 dark:text-white">Edit Restaurant</h1>
        <form class="space-y-8 mb-5" action="<?php echo e(route('restaurants.update', $restaurant->id)); ?>" method="POST">
            <?php echo csrf_field(); ?>
            <?php echo method_field('PUT'); ?>

            <div>
                <h3
                    class="text-xl font-semibold mb-4 border-b pb-2 text-gray-900 dark:text-white border-gray-300 dark:border-gray-700">
                    Basic Info</h3>
                <div class="space-y-3">
                    <?php if (isset($component)) { $__componentOriginalc1d2405c7f8100d77292f2d0299ccd96 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96 = $attributes; } ?>
<?php $component = App\View\Components\Form\Input::resolve(['label' => 'Restaurant Name','type' => 'text','name' => 'name','id' => 'name','value' => ''.e($restaurant->name).'','placeholder' => 'Enter restaurant name','required' => '1'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('form.input'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Form\Input::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96)): ?>
<?php $attributes = $__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96; ?>
<?php unset($__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc1d2405c7f8100d77292f2d0299ccd96)): ?>
<?php $component = $__componentOriginalc1d2405c7f8100d77292f2d0299ccd96; ?>
<?php unset($__componentOriginalc1d2405c7f8100d77292f2d0299ccd96); ?>
<?php endif; ?>

                    <?php if (isset($component)) { $__componentOriginalc1d2405c7f8100d77292f2d0299ccd96 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96 = $attributes; } ?>
<?php $component = App\View\Components\Form\Input::resolve(['label' => 'Slug','type' => 'text','name' => 'slug','id' => 'slug','value' => ''.e($restaurant->slug).'','placeholder' => 'Enter a unique slug','required' => '1','disabled' => 'true','class' => 'bg-gray-200 dark:bg-gray-600 text-gray-500 dark:text-gray-300'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('form.input'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Form\Input::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96)): ?>
<?php $attributes = $__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96; ?>
<?php unset($__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc1d2405c7f8100d77292f2d0299ccd96)): ?>
<?php $component = $__componentOriginalc1d2405c7f8100d77292f2d0299ccd96; ?>
<?php unset($__componentOriginalc1d2405c7f8100d77292f2d0299ccd96); ?>
<?php endif; ?>

                    <?php if (isset($component)) { $__componentOriginal02f71db4cef74cc926a09e94ec7369e1 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal02f71db4cef74cc926a09e94ec7369e1 = $attributes; } ?>
<?php $component = App\View\Components\Form\InputTextarea::resolve(['label' => 'Description','name' => 'description','id' => 'description','value' => ''.e($restaurant->description).'','placeholder' => 'Enter restaurant description','required' => '1'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('form.input-textarea'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Form\InputTextarea::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['rows' => '3']); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal02f71db4cef74cc926a09e94ec7369e1)): ?>
<?php $attributes = $__attributesOriginal02f71db4cef74cc926a09e94ec7369e1; ?>
<?php unset($__attributesOriginal02f71db4cef74cc926a09e94ec7369e1); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal02f71db4cef74cc926a09e94ec7369e1)): ?>
<?php $component = $__componentOriginal02f71db4cef74cc926a09e94ec7369e1; ?>
<?php unset($__componentOriginal02f71db4cef74cc926a09e94ec7369e1); ?>
<?php endif; ?>

                    <?php if (isset($component)) { $__componentOriginalc1d2405c7f8100d77292f2d0299ccd96 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96 = $attributes; } ?>
<?php $component = App\View\Components\Form\Input::resolve(['label' => 'Address','type' => 'text','name' => 'address','id' => 'address','value' => ''.e($restaurant->address).'','placeholder' => 'Enter restaurant address','required' => '0'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('form.input'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Form\Input::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96)): ?>
<?php $attributes = $__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96; ?>
<?php unset($__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc1d2405c7f8100d77292f2d0299ccd96)): ?>
<?php $component = $__componentOriginalc1d2405c7f8100d77292f2d0299ccd96; ?>
<?php unset($__componentOriginalc1d2405c7f8100d77292f2d0299ccd96); ?>
<?php endif; ?>
                </div>
            </div>

            <div>
                <h3
                    class="text-xl font-semibold mb-4 border-b pb-2 text-gray-900 dark:text-white border-gray-300 dark:border-gray-700">
                    Ordering</h3>
                <div class="space-y-3">
                    <?php if (isset($component)) { $__componentOriginalfd89ecdf7278f67d2ab8cfc191263edb = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginalfd89ecdf7278f67d2ab8cfc191263edb = $attributes; } ?>
<?php $component = App\View\Components\Form\InputCheckbox::resolve(['label' => 'Enable online ordering','name' => 'enable_ordering','id' => 'enable_ordering','checked' => ''.e($restaurant->enable_ordering).'','required' => '1'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('form.input-checkbox'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Form\InputCheckbox::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginalfd89ecdf7278f67d2ab8cfc191263edb)): ?>
<?php $attributes = $__attributesOriginalfd89ecdf7278f67d2ab8cfc191263edb; ?>
<?php unset($__attributesOriginalfd89ecdf7278f67d2ab8cfc191263edb); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalfd89ecdf7278f67d2ab8cfc191263edb)): ?>
<?php $component = $__componentOriginalfd89ecdf7278f67d2ab8cfc191263edb; ?>
<?php unset($__componentOriginalfd89ecdf7278f67d2ab8cfc191263edb); ?>
<?php endif; ?>

                    <?php if (isset($component)) { $__componentOriginalc1d2405c7f8100d77292f2d0299ccd96 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96 = $attributes; } ?>
<?php $component = App\View\Components\Form\Input::resolve(['divClass' => ''.e($restaurant->enable_ordering ? 'hidden' : '').'','label' => 'Disable Ordering Message','type' => 'text','name' => 'disable_ordering_message','id' => 'disable_ordering_message','value' => ''.e($restaurant->disable_ordering_message).'','placeholder' => 'Leave a message','required' => ''.e($restaurant->enable_ordering ? '0' : '1').''] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('form.input'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Form\Input::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96)): ?>
<?php $attributes = $__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96; ?>
<?php unset($__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc1d2405c7f8100d77292f2d0299ccd96)): ?>
<?php $component = $__componentOriginalc1d2405c7f8100d77292f2d0299ccd96; ?>
<?php unset($__componentOriginalc1d2405c7f8100d77292f2d0299ccd96); ?>
<?php endif; ?>

                    <?php if (isset($component)) { $__componentOriginalc1d2405c7f8100d77292f2d0299ccd96 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96 = $attributes; } ?>
<?php $component = App\View\Components\Form\Input::resolve(['label' => 'Minimum order amount','type' => 'number','name' => 'minimum_order_amount','id' => 'minimum_order_amount','value' => ''.e($restaurant->minimum_order_amount).'','placeholder' => 'Enter minimum order amount','required' => '0'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('form.input'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Form\Input::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96)): ?>
<?php $attributes = $__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96; ?>
<?php unset($__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc1d2405c7f8100d77292f2d0299ccd96)): ?>
<?php $component = $__componentOriginalc1d2405c7f8100d77292f2d0299ccd96; ?>
<?php unset($__componentOriginalc1d2405c7f8100d77292f2d0299ccd96); ?>
<?php endif; ?>

                    <?php if (isset($component)) { $__componentOriginalfd89ecdf7278f67d2ab8cfc191263edb = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginalfd89ecdf7278f67d2ab8cfc191263edb = $attributes; } ?>
<?php $component = App\View\Components\Form\InputCheckbox::resolve(['label' => 'Cash on delivery','name' => 'cod','id' => 'cod','checked' => ''.e($restaurant->cod).'','required' => '0'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('form.input-checkbox'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Form\InputCheckbox::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginalfd89ecdf7278f67d2ab8cfc191263edb)): ?>
<?php $attributes = $__attributesOriginalfd89ecdf7278f67d2ab8cfc191263edb; ?>
<?php unset($__attributesOriginalfd89ecdf7278f67d2ab8cfc191263edb); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalfd89ecdf7278f67d2ab8cfc191263edb)): ?>
<?php $component = $__componentOriginalfd89ecdf7278f67d2ab8cfc191263edb; ?>
<?php unset($__componentOriginalfd89ecdf7278f67d2ab8cfc191263edb); ?>
<?php endif; ?>

                    <?php if (isset($component)) { $__componentOriginalfd89ecdf7278f67d2ab8cfc191263edb = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginalfd89ecdf7278f67d2ab8cfc191263edb = $attributes; } ?>
<?php $component = App\View\Components\Form\InputCheckbox::resolve(['label' => 'Payment through Stripe','name' => 'stripe_payment','id' => 'stripe_payment','checked' => ''.e($restaurant->stripe_payment).'','required' => '0'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('form.input-checkbox'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Form\InputCheckbox::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginalfd89ecdf7278f67d2ab8cfc191263edb)): ?>
<?php $attributes = $__attributesOriginalfd89ecdf7278f67d2ab8cfc191263edb; ?>
<?php unset($__attributesOriginalfd89ecdf7278f67d2ab8cfc191263edb); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalfd89ecdf7278f67d2ab8cfc191263edb)): ?>
<?php $component = $__componentOriginalfd89ecdf7278f67d2ab8cfc191263edb; ?>
<?php unset($__componentOriginalfd89ecdf7278f67d2ab8cfc191263edb); ?>
<?php endif; ?>

                    <?php if (isset($component)) { $__componentOriginalc1d2405c7f8100d77292f2d0299ccd96 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96 = $attributes; } ?>
<?php $component = App\View\Components\Form\Input::resolve(['label' => 'Stripe secret key','type' => 'text','name' => 'stripe_id','id' => 'stripe_id','value' => ''.e($restaurant->stripe_id).'','placeholder' => 'Enter stripe secret key','required' => '0'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('form.input'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Form\Input::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96)): ?>
<?php $attributes = $__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96; ?>
<?php unset($__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc1d2405c7f8100d77292f2d0299ccd96)): ?>
<?php $component = $__componentOriginalc1d2405c7f8100d77292f2d0299ccd96; ?>
<?php unset($__componentOriginalc1d2405c7f8100d77292f2d0299ccd96); ?>
<?php endif; ?>
                </div>
            </div>

            <div>
                <h3
                    class="text-xl font-semibold mb-4 border-b pb-2 text-gray-900 dark:text-white border-gray-300 dark:border-gray-700">
                    WhatsApp Integration</h3>
                <div class="space-y-3">
                    <?php if (isset($component)) { $__componentOriginalc1d2405c7f8100d77292f2d0299ccd96 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96 = $attributes; } ?>
<?php $component = App\View\Components\Form\Input::resolve(['label' => 'Phone','type' => 'text','name' => 'phone','id' => 'phone','value' => ''.e($restaurant->phone).'','placeholder' => 'Enter restaurant phone','required' => '0'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('form.input'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Form\Input::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96)): ?>
<?php $attributes = $__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96; ?>
<?php unset($__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc1d2405c7f8100d77292f2d0299ccd96)): ?>
<?php $component = $__componentOriginalc1d2405c7f8100d77292f2d0299ccd96; ?>
<?php unset($__componentOriginalc1d2405c7f8100d77292f2d0299ccd96); ?>
<?php endif; ?>

                    <?php if (isset($component)) { $__componentOriginalfd89ecdf7278f67d2ab8cfc191263edb = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginalfd89ecdf7278f67d2ab8cfc191263edb = $attributes; } ?>
<?php $component = App\View\Components\Form\InputCheckbox::resolve(['label' => 'Enable WhatsApp notification','name' => 'enable_wa_notification','id' => 'enable_wa_notification','checked' => ''.e($restaurant->enable_wa_notification).'','required' => '0'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('form.input-checkbox'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Form\InputCheckbox::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginalfd89ecdf7278f67d2ab8cfc191263edb)): ?>
<?php $attributes = $__attributesOriginalfd89ecdf7278f67d2ab8cfc191263edb; ?>
<?php unset($__attributesOriginalfd89ecdf7278f67d2ab8cfc191263edb); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalfd89ecdf7278f67d2ab8cfc191263edb)): ?>
<?php $component = $__componentOriginalfd89ecdf7278f67d2ab8cfc191263edb; ?>
<?php unset($__componentOriginalfd89ecdf7278f67d2ab8cfc191263edb); ?>
<?php endif; ?>
                </div>
            </div>

            <?php if (isset($component)) { $__componentOriginale67687e3e4e61f963b25a6bcf3983629 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginale67687e3e4e61f963b25a6bcf3983629 = $attributes; } ?>
<?php $component = App\View\Components\Button::resolve(['type' => 'submit','id' => 'edit-restaurant-btn','usage' => 'update'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('button'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Button::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['class' => 'bg-blue-600 dark:bg-blue-800 text-white dark:text-white rounded px-4 py-2 transition duration-300 hover:bg-blue-700 dark:hover:bg-blue-900']); ?>
                Save
             <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginale67687e3e4e61f963b25a6bcf3983629)): ?>
<?php $attributes = $__attributesOriginale67687e3e4e61f963b25a6bcf3983629; ?>
<?php unset($__attributesOriginale67687e3e4e61f963b25a6bcf3983629); ?>
<?php endif; ?>
<?php if (isset($__componentOriginale67687e3e4e61f963b25a6bcf3983629)): ?>
<?php $component = $__componentOriginale67687e3e4e61f963b25a6bcf3983629; ?>
<?php unset($__componentOriginale67687e3e4e61f963b25a6bcf3983629); ?>
<?php endif; ?>
        </form>
    </main>
<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts'); ?>
    <script>
        const phoneInput = document.getElementById('phone');
        const enableWANotification = document.getElementById('enable_wa_notification');

        const enableOrdering = document.getElementById('enable_ordering');
        const disableOrderingMessageInput = document.getElementById('disable_ordering_message');
        const disableOrderingMessageInputDiv = document.getElementById('disable_ordering_message_div');
        const codInput = document.getElementById('cod');
        const stripePaymentInput = document.getElementById('stripe_payment');
        const stripeIdInput = document.getElementById('stripe_id');

        // only contain numbers and + sign, not more than 15 characters, not less than 10 characters
        phoneInput.addEventListener('input', function() {
            phoneInput.value = phoneInput.value.replace(/[^0-9+]/g, '');
            if (phoneInput.value.length == 0) {
                enableWANotification.checked = false;
                enableWANotification.setAttribute('disabled', 'disabled');
            } else {
                // if no + sign, set error
                if (!phoneInput.value.includes('+')) {
                    phoneInput.setCustomValidity('Must contain + sign at the beginning');
                    enableWANotification.checked = false;
                    enableWANotification.setAttribute('disabled', 'disabled');
                    return;
                }
                if (phoneInput.value.length > 15) {
                    phoneInput.setCustomValidity('Must be at most 15 characters including + sign');
                    phoneInput.value = phoneInput.value.slice(0, 15);
                    return;
                }
                if (phoneInput.value.length < 10) {
                    phoneInput.setCustomValidity('Must be at least 10 characters including + sign');
                    return;
                }
                phoneInput.setCustomValidity('');
            }
        });

        const toggleOrdering = () => {
            if (codInput.checked || stripePaymentInput.checked) {
                enableOrdering.checked = true;
                disableOrderingMessageInput.removeAttribute('required');
                disableOrderingMessageInputDiv.classList.add('hidden');
            } else {
                enableOrdering.checked = false;
                disableOrderingMessageInput.setAttribute('required', '1');
                disableOrderingMessageInputDiv.classList.remove('hidden');
            }
        }

        enableOrdering.addEventListener('change', () => {
            if (enableOrdering.checked) {
                disableOrderingMessageInput.removeAttribute('required');
                disableOrderingMessageInputDiv.classList.add('hidden');
            } else {
                disableOrderingMessageInput.setAttribute('required', '1');
                disableOrderingMessageInputDiv.classList.remove('hidden');
            }
        });

        // if both COD and Stripe Payment are checked, disable ordering
        codInput.addEventListener('change', toggleOrdering);
        stripePaymentInput.addEventListener('change', () => {
            if (stripePaymentInput.checked) {
                stripeIdInput.setAttribute('required', '1');
            } else {
                // remove required from stripe id input
                stripeIdInput.removeAttribute('required');
            }
            toggleOrdering();
        });
    </script>
<?php $__env->stopPush(); ?>

<?php echo $__env->make('layouts.admin.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /media/mahfuz/Codes/side-projects/QRDine/resources/views/restaurants/edit.blade.php ENDPATH**/ ?>