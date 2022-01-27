@foreach($categorySections as $categorySection)
    <?php
    if ($categorySection->type == 1){
        $viewFile = 'theme-soccer._partials.home.category.'. data_get($categorySection, 'section_style', 'style_1');
    }
    elseif($categorySection->type == 2){
        $viewFile = 'theme-soccer._partials.home.category.'. data_get($categorySection, 'section_style', 'style_1');
    }
    elseif($categorySection->type == 3){
        $viewFile = 'theme-soccer._partials.home.category.latest_posts';
    }
    elseif($categorySection->type == 4){
        $viewFile = 'theme-soccer._partials.home.category.gallery';
    }
    //    if($categorySection->type != 3):
    //        $viewFile = 'theme-soccer._partials.home.category.'. data_get($categorySection, 'section_style', 'style_1');
    //    else:
    //        $viewFile = 'theme-soccer._partials.home.category.latest_posts';
    //    endif;
    ?>

    @php
        $posts = [];
        $album = [];
            if($categorySection->type == 1):
                $posts = data_get($categorySection, 'newPosts', collect([]));
            elseif($categorySection->type == 2):
                $posts = $video_posts;
            elseif($categorySection->type == 3):
                $posts = $latest_posts;
            elseif($categorySection->type == 4):
                $album = $categorySection->album();
            endif;
    @endphp
    @if(!blank($posts) OR !blank($album))
        @if(view()->exists($viewFile))
            @include($viewFile, [
                '$categorySection' => $categorySection,
                '$posts' => $posts,
                'album' => $album
            ])
        @endif

        @if(data_get($categorySection, 'ad') != "")
            @include('theme-soccer._partials.home.category.ad_section', ["ad" => data_get($categorySection, 'ad')])
        @endif
    @endif
@endforeach
