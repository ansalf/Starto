@extends('layouts.navbarTwoForStudent')

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>ReadRacoon</title>
    <link rel="stylesheet" type="text/css" href="{{ asset('/css/achievement.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('/css/app.css') }}">
</head>
<body>

    @section('title')
    <b>Achievement</b>
    @endsection

@section('container')
    <div class="container mx-auto">
        <div class="row">
            <div class="col-12">
                <div class="card w-100 mb-3 card-container2">
                    <div class="card-body d-flex pd-2">
                        <img src="{{ asset('img/profile.svg') }}" alt="description of myimage" class="pp" style="width:10%; height:10%">
                        <div class="details d-flex flex-column mx-4">
                            <div class="words d-flex pe-4">
                                <h5 class="card-title fs-2 fw-bold text-danger">{{$curruser["UserName"]}}</h5>
                                <span class="badge text-dark d-flex align-items-center" style="background-color: #FEF7F7;">
                                    <img src="{{ asset('img/star.svg') }}" alt="description of myimage" class="star" style="width:25px">
                                    <span class="ms-2" style="font-size:15px">Warrior</span>
                                </span>

                            </div>
                            <p class="card-text">Earn {{2000- $userXP }} to be a Legend</p>
                        </div>
                    </div>
                    <div class="progress-container">
                        {{-- <div class="progress-sec" style="width: {{"userXP"}}"></div> --}}
                        <div class="progress-sec" role="progressbar" style="width: {{ ($userXP / 2000) * 100 }}%;" aria-valuenow="{{ $userXP }}" aria-valuemin="0" aria-valuemax="2000"></div>
                    </div>
                </div>

                <div class="sections d-flex">
                    <div class="card mb-3 me-4 card-container">
                        <div class="card-body">
                          <h5 class="card-title fw-bold">Badges</h5>
                            @foreach($badges as $b)
                                <a href="#" class="btn w-100 my-2" style="background-color:#FEF7F7">
                                    <div class="details d-flex align-items-center py-2">
                                        <img class="mx-3" src="{{ asset('img/star.svg') }}" alt="description of myimage" class="star" width="50px">
                                        <div class="text-start">
                                            <p class="fw-bold m-0">{{$b["BadgesName"]}}</p>
                                            <p class="m-0">{{$b["BadgesDescription"]}}</p>
                                        </div>
                                    </div>

                                </a>
                            @endforeach
                        </div>
                    </div>
                    <div class="card mb-3" style="">
                        <div class="card-body">
                          <h5 class="card-title fw-bold">Leaderboard</h5>
                          @foreach($leaderboard as $user)
                          <a href="#" class="btn w-100 my-2" style="background-color:#FEF7F7">
                              <div class="details d-flex align-items-center py-2">
                                  <img class="me-3 align-self-start" src="{{ asset('img/profile.svg') }}" alt="description of myimage" class="star" style="max-width: 50px; height: auto;">
                                  <div class="text-start">
                                    <p class="m-0">{{$user["UserName"]}}</p>
                                    <p class="m-0">{{$user["UserXP"]}}</p>
                                  </div>
                              </div>

                          </a>
                      @endforeach
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    @endsection
</body>
</html>
