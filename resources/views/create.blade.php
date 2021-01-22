@extends('layouts.create')
@extends('layouts.navbar')

@section('content')

    <form action="{{ route('send') }}" method="post">
        @csrf
        <div class="form-group">
            <label for="to"><strong>To</strong></label>
            <select class="form-control" name="to" id="to">
                @foreach($users as $user)
                    <option value="{{ $user->id }}">{{ $user->name }}, {{ $user->email }}</option>
                @endforeach
            </select>
        </div>
        <div class="form-group">
            <strong><label for="subject">Subject</label></strong>
            <input type="text" class="form-control" name="subject" id="subject" placeholder="Enter subject" value="{{ $subject }}">
        </div>
        <div class="form-group">
            <label for="message"><strong>Message</strong></label>
            <textarea class="form-control" name="message" id="message" rows="3" placeholder="Enter message"></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
        <a href="{{ route('home') }}" class="btn btn-success">Cancel</a>

    </form>
@endsection
