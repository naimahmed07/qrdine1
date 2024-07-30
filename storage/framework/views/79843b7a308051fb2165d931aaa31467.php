<div>
    <h1 class="text-2xl font-semibold mb-4">Counter</h1>
    <div class="flex items-center">
        <button wire:click="decrement" class="px-4 py-2 bg-red-500 text-white rounded-lg">-</button>
        <span class="mx-4"><?php echo e($count); ?></span>
        <button wire:click="increment" class="px-4 py-2 bg-green-500 text-white rounded-lg">+</button>
    </div>
</div>
<?php /**PATH /media/mahfuz/Codes/side-projects/QRDine/resources/views/livewire/counter.blade.php ENDPATH**/ ?>