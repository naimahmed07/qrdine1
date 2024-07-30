<div class="{{ $divClass }}" id="{{ $id }}_div">
    <label for="{{ $id }}" class="text-black dark:text-white block mb-2 text-sm font-medium">
        {{ $label }}
    </label>

    <input type="{{ $type }}" value="{{ $value }}"
        class="border text-sm rounded-lg block w-full p-2 dark:bg-gray-700 dark:border-gray-600 dark:text-white light:bg-gray-200 light:border-gray-300 light:text-black{{ $disabled ? ' opacity-75' : '' }}{{ $class }}"
        name="{{ $name }}" id="{{ $id }}" {{ $type == 'number' && $min != null ? 'min=' . $min : '' }}
        {{ $type == 'number' && $max != null ? 'max=' . $max : '' }}
        {{ $type == 'number' && $step != null ? 'step=' . $step : '' }} placeholder="{{ $placeholder }}"
        {{ $required ? 'required' : '' }} {{ $disabled ? 'disabled' : '' }} />
</div>
