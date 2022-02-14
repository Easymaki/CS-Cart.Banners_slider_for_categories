<?php

if (!defined('BOOTSTRAP')) {
    die('Access denied');
}

function fn_category_slider_get_category_data_post(&$category_id, $field_list, $get_main_pair, $skip_company_condition, $lang_code, &$category_data)
{
    $category_data['main_pair'] = fn_get_image_pairs($category_id, 'category', 'M', true, true, $lang_code);
    $category_data['image_pairs'] = fn_get_image_pairs($category_id, 'category', 'A', true, true, $lang_code);

    if (AREA == 'C') {
        if (!empty($category_data['main_pair'])) {
            array_unshift($category_data['image_pairs'], $category_data['main_pair']);
        }
    }
}

function fn_category_slider_update_category_post(&$category_data, &$category_id, $lang_code, $create)
{
    fn_attach_image_pairs('category_main', 'category', $category_id, $lang_code);
    fn_attach_image_pairs('category_additional', 'category', $category_id, $lang_code);
    fn_attach_image_pairs('category_add_additional', 'category', $category_id, $lang_code);

    if (!empty($category_data['removed_image_pair_ids'])) {
        fn_delete_image_pairs($category_id, 'category', '', $category_data['removed_image_pair_ids']);
    }
}
