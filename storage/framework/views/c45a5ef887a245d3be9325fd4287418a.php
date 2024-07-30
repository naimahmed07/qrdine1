<?php $__env->startSection('title', 'Dinein Tables'); ?>

<?php $__env->startSection('main'); ?>
    <!-- Add modal -->
    <div id="add-table-modal" data-modal-backdrop="static" tabindex="-1" aria-hidden="true"
        class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
        <div class="relative p-3 w-full max-w-2xl max-h-full">
            <!-- Modal content -->
            <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                <!-- Modal header -->
                <div
                    class="flex items-center justify-between px-4 py-2 md:px-5 md:py-3 border-b rounded-t dark:border-gray-600">
                    <h3 class="text-xl font-semibold text-gray-900 dark:text-white">
                        Add new table
                    </h3>
                    <button type="button"
                        class="text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white"
                        data-modal-hide="add-table-modal">
                        <i class="fas fa-times text-lg" aria-hidden="true"></i>
                        <span class="sr-only">Close modal</span>
                    </button>
                </div>
                <!-- Modal body -->
                <div class="px-4 pb-3 md:px-5 md:pb-4">
                    <form class="space-y-4" action="<?php echo e(route('dinein-tables.store')); ?>" method="POST" id="add-table-form">
                        <?php echo csrf_field(); ?>
                        <?php if (isset($component)) { $__componentOriginalc1d2405c7f8100d77292f2d0299ccd96 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96 = $attributes; } ?>
<?php $component = App\View\Components\Form\Input::resolve(['label' => 'Table Name','type' => 'text','name' => 'name','id' => 'name','placeholder' => 'Enter table name','required' => 'true'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
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
<?php $component = App\View\Components\Form\InputCheckbox::resolve(['label' => 'Active','name' => 'active','id' => 'active','checked' => 'false','required' => 'false'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
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

                        <?php if (isset($component)) { $__componentOriginale67687e3e4e61f963b25a6bcf3983629 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginale67687e3e4e61f963b25a6bcf3983629 = $attributes; } ?>
<?php $component = App\View\Components\Button::resolve(['type' => 'submit','id' => 'add-table-btn','usage' => 'create'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('button'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Button::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
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
                </div>
            </div>
        </div>
    </div>

    <!-- Update modal -->
    <button data-modal-target="update-table-modal" data-modal-toggle="update-table-modal" id="update-table-modal-btn"
        class="hidden" type="button">
    </button>
    <div id="update-table-modal" data-modal-backdrop="static" tabindex="-1" aria-hidden="true"
        class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
        <div class="relative p-4 w-full max-w-2xl max-h-full">
            <!-- Modal content -->
            <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                <!-- Modal header -->
                <div
                    class="flex items-center justify-between px-4 py-2 md:px-5 md:py-3 border-b rounded-t dark:border-gray-600">
                    <h3 class="text-xl font-semibold text-gray-900 dark:text-white">
                        Update table
                    </h3>
                    <button type="button"
                        class="text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white"
                        data-modal-hide="update-table-modal">
                        <i class="fas fa-times text-lg" aria-hidden="true"></i>
                        <span class="sr-only">Close modal</span>
                    </button>
                </div>
                <!-- Modal body -->
                <div class="px-4 pb-3 md:px-5 md:pb-4">
                    <form class="space-y-4" action="" method="POST" id="update-table-form">
                        <?php echo csrf_field(); ?>
                        <?php echo method_field('PUT'); ?>
                        <?php if (isset($component)) { $__componentOriginalc1d2405c7f8100d77292f2d0299ccd96 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginalc1d2405c7f8100d77292f2d0299ccd96 = $attributes; } ?>
<?php $component = App\View\Components\Form\Input::resolve(['label' => 'Table Name','type' => 'text','name' => 'name','id' => 'update-name','placeholder' => 'Enter table name','required' => 'true'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
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
<?php $component = App\View\Components\Form\InputCheckbox::resolve(['label' => 'Active','name' => 'active','id' => 'update-active','checked' => 'false','required' => 'false'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
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

                        <?php if (isset($component)) { $__componentOriginale67687e3e4e61f963b25a6bcf3983629 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginale67687e3e4e61f963b25a6bcf3983629 = $attributes; } ?>
<?php $component = App\View\Components\Button::resolve(['type' => 'submit','id' => 'update-table-btn','usage' => 'update'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('button'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\Button::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
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
                </div>
            </div>
        </div>
    </div>

    <!-- Delete modal -->
    <button id="delete-table-modal-btn" data-modal-target="delete-table-modal" data-modal-toggle="delete-table-modal"
        class="hidden" type="button">
    </button>
    <div id="delete-table-modal" tabindex="-1"
        class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
        <div class="relative p-4 w-full max-w-md max-h-full">
            <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                <div class="p-4 md:p-5 text-center">
                    <i class="fas fa-circle-info text-6xl mx-auto mb-4 text-gray-600 w-12 h-12 dark:text-gray-200"></i>
                    <h3 class="mb-5 text-lg font-normal text-gray-500 dark:text-gray-400">Are you sure you want to delete
                        this table?</h3>
                    <button data-modal-hide="delete-table-modal" type="button" onclick="deleteTable()"
                        class="text-white bg-red-600 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-red-300 dark:focus:ring-red-800 font-medium rounded-lg text-sm inline-flex items-center px-5 py-2.5 text-center">
                        Yes, I'm sure
                    </button>
                    <button data-modal-hide="delete-table-modal" type="button"
                        class="py-2.5 px-5 ms-3 text-sm font-medium text-gray-900 focus:outline-none bg-white rounded-lg border border-gray-200 hover:bg-gray-100 hover:text-blue-700 focus:z-10 focus:ring-4 focus:ring-gray-100 dark:focus:ring-gray-700 dark:bg-gray-800 dark:text-gray-400 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-700">No,
                        cancel</button>
                </div>
            </div>
        </div>
    </div>


    <main>
        <div class="flex justify-between mb-5">
            <h1 class="text-2xl font-bold text-black dark:text-gray-200">Dinein Tables</h1>
            <button data-modal-target="add-table-modal" data-modal-toggle="add-table-modal" id="add-table-modal-btn"
                class="block text-white bg-green-700 hover:bg-green-800 focus:ring-4 focus:outline-none focus:ring-green-300 font-medium rounded-lg text-sm px-3 py-2 text-center dark:bg-green-600 dark:hover:bg-green-700 dark:focus:ring-green-800"
                type="button">
                Add new table
            </button>
        </div>

        <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
            <table class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
                <thead class="text-xs text-gray-700 bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                    <tr class="text-lg">
                        <th scope="col" class="px-6 py-3 text-sm">
                            Name
                        </th>
                        <th scope="col" class="px-6 py-3 text-sm">
                            Active
                        </th>
                        <th scope="col" class="px-6 py-3 text-sm">
                            Created at
                        </th>
                        <th scope="col" class="px-6 py-3 text-sm">
                            Actions
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <?php $__currentLoopData = $tables; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $table): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <tr
                            class="bg-white border-b dark:bg-gray-800 dark:border-gray-700 hover:bg-gray-50 dark:hover:bg-gray-600">
                            <th scope="row"
                                class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                <?php echo e($table->name); ?>

                            </th>
                            <td class="px-6 py-4">
                                <?php echo e($table->active ? 'Yes' : 'No'); ?>

                            </td>
                            <td class="px-6 py-4">
                                <?php echo e($table->created_at->setTimezone('GMT')->format('d M Y, H:i:s')); ?> GMT
                            </td>
                            <td class="px-6 py-4 flex gap-x-3 text-right">
                                <button data-modal-target="update-table-modal" data-modal-toggle="update-table-modal"
                                    id="update-table-modal-btn"
                                    class="text-white
                                    bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300
                                    font-medium rounded-lg text-sm px-2 py-1 text-center dark:bg-blue-600
                                    dark:hover:bg-blue-700 dark:focus:ring-blue-800"
                                    type="button"
                                    onclick="editTable('<?php echo e($table->id); ?>', '<?php echo e($table->name); ?>', '<?php echo e($table->active); ?>', '<?php echo e(route('dinein-tables.update', ['dineinTable' => $table->id])); ?>')">
                                    <i class="fas fa-edit" aria-hidden="true"></i>
                                </button>
                                <button
                                    class="text-white
                                bg-red-600 hover:bg-red-700 focus:ring-4 focus:outline-none focus:ring-red-300
                                font-medium rounded-lg text-sm px-2 py-1 text-center dark:bg-red-500
                                dark:hover:bg-red-600 dark:focus:ring-red-700"
                                    type="button" onclick="tableToDelete('<?php echo e($table->id); ?>')">
                                    <i class="fas fa-trash-alt" aria-hidden="true"></i>
                                </button>

                                
                                <button
                                    class="text-white bg-green-700 hover:bg-green-800 focus:ring-4 focus:outline-none focus:ring-green-300 font-medium rounded-lg text-sm px-2 py-1 text-center dark:bg-green-600 dark:hover:bg-green-700 dark:focus:ring-green-800"
                                    type="button" onclick="generateQrCode('<?php echo e($table->id); ?>')">
                                    <i class="fas fa-qrcode" aria-hidden="true"></i>
                                </button>
                            </td>
                        </tr>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </tbody>
            </table>
        </div>
    </main>
<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts'); ?>
    <script>
        const appBase = '<?php echo e(env('APP_BASE')); ?>';
        const addTableForm = document.getElementById('add-table-form');
        const updateTableForm = document.getElementById('update-table-form');
        let deleteTableId = null;

        // define iziToast options
        // open from the right
        iziToast.settings({
            position: 'topRight',
            transitionIn: 'fadeInLeft',
            transitionOut: 'fadeOutRight'
        });

        const editTable = (id, name, active, action) => {
            document.getElementById('update-table-form').action = `dinein-tables/${id}`;
            document.getElementById('update-name').value = name;
            document.getElementById('update-active').checked = active == 1 ? true : false;
        }

        const tableToDelete = (id) => {
            deleteTableId = id;
            document.getElementById('delete-table-modal-btn').click();
        }

        addTableForm.addEventListener('submit', (e) => {
            e.preventDefault();
            const formData = new FormData(addTableForm);
            console.log(Object.fromEntries(formData));
            axios.post(addTableForm.action, Object.fromEntries(formData))
                .then(response => {
                    console.log(response);
                    iziToast.success({
                        title: 'Success',
                        message: 'Table added successfully'
                    });
                    setTimeout(() => {
                        window.location.reload();
                    }, 2000);
                })
                .catch(error => {
                    console.error(error);
                    iziToast.error({
                        title: 'Error',
                        message: error.response.data.message
                    });
                });
        });

        updateTableForm.addEventListener('submit', (e) => {
            e.preventDefault();
            const formData = new FormData(updateTableForm);
            console.log(Object.fromEntries(formData));
            axios.put(updateTableForm.action, Object.fromEntries(formData))
                .then(response => {
                    console.log(response);
                    iziToast.success({
                        title: 'Success',
                        message: 'Table updated successfully'
                    });
                    setTimeout(() => {
                        window.location.reload();
                    }, 2000);
                })
                .catch(error => {
                    console.error(error);
                    iziToast.error({
                        title: 'Error',
                        message: error.response.data.message
                    });
                });
        });

        const deleteTable = () => {
            const action = appBase + '/dinein-tables/' + deleteTableId;
            axios.delete(action)
                .then(response => {
                    console.log(response);
                    iziToast.success({
                        title: 'Success',
                        message: 'Table deleted successfully'
                    });
                    setTimeout(() => {
                        window.location.reload();
                    }, 2000);
                })
                .catch(error => {
                    console.error(error);
                    iziToast.error({
                        title: 'Error',
                        message: error.response.data.message
                    });
                });
        }

        const generateQrCode = (dineinTableId) => {
            const url = `/dinein-tables/${dineinTableId}/generate-qr`;
            console.log(url);
            axios({
                    url: url,
                    method: 'POST',
                    responseType: 'blob', // Important
                })
                .then((response) => {
                    const url = window.URL.createObjectURL(new Blob([response.data]));
                    const link = document.createElement('a');
                    link.href = url;

                    const contentDisposition = response.headers['content-disposition'];
                    let fileName = 'download.png';
                    if (contentDisposition) {
                        const fileNameMatch = contentDisposition.match(/filename="(.+)"/);
                        if (fileNameMatch.length === 2) fileName = fileNameMatch[1];
                    }

                    link.setAttribute('download', fileName);
                    document.body.appendChild(link);
                    link.click();
                    link.remove();
                })
                .catch((error) => {
                    console.error('There was an error generating the QR code!', error);
                });
        }
    </script>
<?php $__env->stopPush(); ?>

<?php echo $__env->make('layouts.admin.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /media/mahfuz/Codes/side-projects/QRDine/resources/views/dinein-tables/index.blade.php ENDPATH**/ ?>