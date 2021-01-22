@extends('layouts.sent')
@extends('layouts.navbar')

@section('content')
    @if (count($messages) > 0)
        <ul class="list-group">
            @php $c = 0;  @endphp
            @foreach($messages as $message)
                @php $c = $c +1; @endphp
                <li class="list-group-item">@php echo $c; @endphp &nbsp;&nbsp;
                    <strong>To: {{$message->userTo->name }}, {{ $message->userTo->email }}</strong>
                    | Subject: {{ $message->subject }}
                    @if ($message->read)
                        <span class="badge badge-success float-right">{{$message->userTo->name }}&nbsp; read this message</span>
                    @endif
                </li>
            @endforeach
        </ul>
    @else
        <strong>{{ Auth::user()->name }}</strong>
        has not written to anyone yet
    @endif
@endsection
