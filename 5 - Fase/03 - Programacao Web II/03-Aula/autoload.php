<?php
    spl_autoload_register(function($className) {
        $file = 'Model/' . $className . '.class.php';
        if (file_exists($file)) {
            require_once $file;
        }
    });
?>