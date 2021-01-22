@extends('layouts.app')
@extends('layouts.navbar')

@section('content')
    <strong>From:</strong> {{ $message->userFrom->name }}
    <br>
    <strong>Email:</strong> {{ $message->userFrom->email }}
    <br>
    <strong>Subject:</strong> {{ $message->subject }}
    <hr>
    <strong>Message:</strong>
    <br><br>
    {{$message->body }}
    <hr>
    <a href="{{ route('create', [$message->userFrom->id, $message->subject]) }}" class="btn btn-primary">Reply</a>
    <a href="{{ route('home') }}" class="btn btn-success">Cancel</a>
    <a href="{{ route('delete', $message->id) }}" class="btn btn-danger float-right">Delete</a>
@endsection
