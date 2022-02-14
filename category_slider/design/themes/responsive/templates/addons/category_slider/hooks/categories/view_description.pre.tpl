{if $category_data.image_pairs}
    <div id="category_slider_{$block.snapping_id}" class="banners owl-carousel ty-scroller"
        data-ca-scroller-item="1"
        data-ca-scroller-item-desktop="1"
        data-ca-scroller-item-desktop-small="1"
        data-ca-scroller-item-tablet="1"
        data-ca-scroller-item-mobile="1">

        {foreach from=$category_data.image_pairs item="banner" key="key"}
            <div class="ty-banner__image-item ty-scroller__item">
                {include 
                file="common/image.tpl" 
                images=$banner
                class="ty-banner__image"
                image_height=300
                }
            </div>
        {/foreach}
    </div>
{/if}

<script>
(function(_, $) {
    $.ceEvent('on', 'ce.commoninit', function(context) {
        var slider = context.find('#category_slider_{$block.snapping_id}');
        if (slider.length) {
            slider.owlCarousel({
                singleItem: true,
                slideSpeed: 100,
                autoPlay: true,
                stopOnHover: true,
            });
        }
    });
}(Tygh, Tygh.$));
</script>