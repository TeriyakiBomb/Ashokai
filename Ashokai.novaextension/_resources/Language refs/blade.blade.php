<!DOCTYPE html>
<html>
<head>
    <title>Blade Template Demo</title>
</head>
<body>
    <h1>Blade Template Demo</h1>

    @if ($age >= 18)
        <p>Welcome, {{ $name }}! You are eligible to vote.</p>
    @else
        <p>Sorry, {{ $name }}! You are not eligible to vote yet.</p>
    @endif

    <ul>
        @foreach ($numbers as $number)
            <li>{{ $number }}</li>
        @endforeach
    </ul>

    @php
        function calculateSum($a, $b) {
            return $a + $b;
        }

        $result = calculateSum(10, 20);
    @endphp

    <p>The sum of 10 and 20 is {{ $result }}.</p>

    @section('footer')
        <footer>
            <p>This is the footer section.</p>
        </footer>
    @show
</body>
</html>