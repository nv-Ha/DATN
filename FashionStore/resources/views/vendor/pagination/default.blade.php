@if ($paginator->hasPages())
    <ul class="pagination pagination">
        {{-- Previous Page Link --}}
        @if ($paginator->onFirstPage())
            <li class="disabled" aria-disabled="true" aria-label="@lang('pagination.previous')">
                <span aria-hidden="true" style="color: #FF6600;">&lsaquo;</span>
            </li>
        @else
            <li class="page-item"><a class="page-link" href="{{$paginator->previousPageUrl()}}" style="color: #FF6600;">&lsaquo;</a></li>
        @endif

        @if($paginator->currentPage() > 5)
            <li class="hidden-xs page-item"><a href="{{ $paginator->url(1) }}" style="color: #FF6600;">1</a></li>
        @endif
        @if($paginator->currentPage() > 6)
            <li class="disabled hidden-xs page-item"><span style="color: #FF6600;">...</span></li>
        @endif

        @foreach(range(1, $paginator->lastPage()) as $i)
            @if($i >= $paginator->currentPage() - 2 && $i <= $paginator->currentPage() + 2)
                @if ($i == $paginator->currentPage())
                    <li class="page-item active"><a class="page-link" style="cursor: none; color: #fff; background-color: #FF6600; border-color: #FF6600;">{{ $i }}</a></li>
                @else
                    <li><a href="{{ $paginator->url($i) }}" style="color: #FF6600;">{{ $i }}</a></li>
                @endif
            @endif
        @endforeach

        @if($paginator->currentPage() < $paginator->lastPage() - 3)
            <li class="disabled hidden-xs page-item"><span style="color: #FF6600;">...</span></li>
        @endif
        @if($paginator->currentPage() < $paginator->lastPage() - 2)
            <li class="hidden-xs page-item"><a href="{{ $paginator->url($paginator->lastPage()) }}" style="color: #FF6600;">{{ $paginator->lastPage() }}</a></li>
        @endif

        {{-- Next Page Link --}}
        @if ($paginator->hasMorePages())
            <li class="page-item"> 
                <a class="page-link" href="{{ $paginator->nextPageUrl() }}" rel="next" aria-label="@lang('pagination.next')" style="color: #FF6600;">&rsaquo;</a>
            </li>
        @else
            <li class="disabled" aria-disabled="true" aria-label="@lang('pagination.next')">
                <span aria-hidden="true" style="color: #FF6600;">&rsaquo;</span>
            </li>
        @endif
    </ul>
@endif


