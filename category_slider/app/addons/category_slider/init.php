<?php

if (!defined('BOOTSTRAP')) {
    die('Access denied');
}

fn_register_hooks(
    'update_category_post',
    'get_category_data_post'
);
