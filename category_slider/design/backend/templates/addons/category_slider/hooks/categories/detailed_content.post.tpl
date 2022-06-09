<div class="control-group">
    <label class="control-label">{__("images")}:</label>
    <div class="controls">
        {component name="configurable_page.field" entity="categories" tab="detailed" section="information" field="images"}
            {include
                file="addons/category_slider/common/form_file_uploder.tpl"
                existing_pairs=(($category_data.main_pair) ? [$category_data.main_pair] : []) + $category_data.image_pairs|default:[]
                file_name="file"
                image_pair_types=['N' => 'category_add_additional_image', 'M' => 'category_main_image', 'A' => 'category_additional_image']
                allow_update_files=!$is_shared_category && $allow_update_files|default:true
            }
        {/component}
    </div>
</div>