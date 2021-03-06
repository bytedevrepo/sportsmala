@extends('common::layouts.master')
@section('match-list')
    active
@endsection
@section('tournament')
    active
@endsection
@section('content')
    <div class="dashboard-ecommerce">
        @include('tournament::sub-menu')
        <div class="container-fluid dashboard-content ">
            <!-- page info start-->
            <div class="row clearfix">
                <div class="col-md-12">
                    <div class="row">
                        @include('tournament::alert')
                        <div class="col-md-12">
                            <div class="add-new-page  bg-white p-20 m-b-20">
                                <div class="block-header">
                                    <h2>Archived Match</h2>
                                </div>
                                <div class="row mb-2">
                                    <div class="col-md-4">
                                        <form action="{{ route('match-list-archived') }}" method="get" id="filter">
                                            <select name="tournament" class="form-control" id="filter-by-tournament">
                                                <option value="">All Tournaments</option>
                                                @if(isset($tournaments))
                                                    @foreach($tournaments as $val)
                                                        <option value="{{ $val->id }}" @if(request('tournament') == $val->id) selected @endif>{{ $val->tournament_name }}</option>
                                                    @endforeach
                                                @endif
                                            </select>
                                        </form>
                                    </div>
                                    <div class="com-md-4">
                                        <select name="bulk_action" class="form-control" id="bulk-action">
                                            <option value="">Bulk Action</option>
                                            <option value="delete">Delete</option>
                                        </select>
                                    </div>
                                    <div class="col-md-4">
                                        {{--<button type="submit" class="btn btn-primary pull-left btn-xs">Filter</button>--}}
                                        {{--<button type="submit" class="btn btn-primary btn-xs pull-right">All Match</button>--}}
                                        <a href="{{ route('game-create') }}" class="btn btn-primary pull-right btn-xs">Create New Match</a>

                                    </div>
                                </div>
                                <div class="table-responsive all-pages">
                                    <table class="table table-bordered table-striped">
                                        <thead>
                                        <tr role="row">
                                            <th>
                                                <input type="checkbox" id="masterCheck" value="">
                                            </th>
                                            <th>#</th>
                                            <th>Tournament</th>
                                            <th class="text-center">Game</th>
                                            <th class="text-center">Score</th>
                                            <th class="text-center">Game Date</th>
                                            <th class="text-center">Game Status</th>
                                            @if(Sentinel::getUser()->hasAccess(['category_write']) || Sentinel::getUser()->hasAccess(['category_delete']))
                                                <th class="text-center">{{ __('options') }}</th>
                                            @endif
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @if(isset($games))
                                            @foreach ($games as $value)
                                                <form action="{{ route('game-update') }}" method="post">
                                                    @csrf
                                                    <tr role="row" class="odd" id="row_{{ $value->id }}">
                                                        <input type="hidden" value="{{ $value->id }}" name="id">
                                                        <td class="sorting_1">
                                                            <input type="checkbox" class="child" value="{{ $value->id }}">
                                                        </td>
                                                        <td class="">{{ $value->id }}</td>
                                                        <td>
                                                            @if(!blank($value->tournament))
                                                                {{ data_get($value, 'tournament.tournament_name') }}
                                                            @endif
                                                        </td>
                                                        <td class="text-center">{{ data_get($value, 'team1.team_name') }}
                                                            <br>
                                                            <small> VS </small>
                                                            <br>
                                                            {{ data_get($value, 'team2.team_name') }}
                                                        </td>
                                                        <td class="text-center">
                                                            <span class="float-left">{{ data_get($value, 'team1.team_name') }} :</span> <span class="float-right">{{ $value->team1_score }}</span>
                                                            <br>
                                                            <span class="float-left">{{ data_get($value, 'team2.team_name') }} :</span> <span class="float-right">{{ $value->team2_score }}</span>
                                                        </td>
                                                        <td class="text-center">{{ date_format($value->game_date,"M d Y") }} </td>
                                                        <td class="text-center">
                                                            @if($value->game_status == 0)
                                                                <span class="badge badge-primary">UP-COMING</span>
                                                            @elseif($value->game_status == 1)
                                                                <span class="badge badge-secondary">ON-GOING</span>
                                                            @elseif($value->game_status == 2)
                                                                <span class="badge badge-success">COMPLETED</span>
                                                            @endif
                                                        </td>
                                                        @if(Sentinel::getUser()->hasAccess(['category_write']) || Sentinel::getUser()->hasAccess(['category_delete']))
                                                            <td class="text-center">
                                                                @if(Sentinel::getUser()->hasAccess(['category_delete']))
                                                                    <a href="javascript:void(0)"
                                                                       onclick="delete_item('tournament_games','{{ $value->id }}')">
                                                                        <i class="fa fa-trash option-icon"></i>
                                                                    </a>
                                                                @endif
                                                            </td>
                                                        @endif
                                                    </tr>
                                                </form>
                                            @endforeach
                                        @endif
                                        </tbody>
                                    </table>
                                    <div class="float-right">
                                        {!! $games->links() !!}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- page info end-->
    </div>

    <!-- Modal -->
    <div class="modal" id="updateScore" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <a href="#" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </a>
                </div>
                <div class="modal-body">
                    <p>Woohoo, You are readng this text in a modal! Use Bootstrap???s JavaScript modal plugin to add dialogs to your site for lightboxes, user notifications, or completely custom content.</p>
                </div>
                <div class="modal-footer">
                    <a href="#" class="btn btn-secondary" data-dismiss="modal">Close</a>
                    <a href="#" class="btn btn-primary">Save changes</a>
                </div>
            </div>
        </div>
    </div>

    <div class="modal" id="bulkActionModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Bulk Action</h5>
                    <a href="#" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </a>
                </div>
                <div class="modal-body">
                    <p>Are you sure you want to perform this action?</p>
                    <form action="{{ route('game.bulk-action') }}" method="post" id="bulk-action-form">
                        @csrf
                        <input type="hidden" name="action" id="bulk_action">
                        <input type="hidden" name="ids_json" id="bulk_ids">
                    </form>
                </div>
                <div class="modal-footer">
                    <a href="#" class="btn btn-secondary" data-dismiss="modal">Close</a>
                    <a href="#" class="btn btn-primary" id="confirm-bulk-action">Confirm</a>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    <script>
        $(document).ready(function () {
            $("#filter-by-tournament").on("change", function () {
                $("#filter").submit()
            });
            $("#bulk-action").on("change", function () {
                let action = this.value;
                var ids = [];

                $('input:checked').each(function(){
                    if ($(this).val() !== ''){
                        ids.push($(this).val());
                    }
                });
                $("#bulk_ids").val(JSON.stringify(ids));
                $("#bulk_action").val(action);
                $("#bulkActionModal").modal('show');
            });

            $("#masterCheck").click(function() {
                $(".child").prop("checked", this.checked);
            });

            $('.child').click(function() {
                if ($('.child:checked').length == $('.child').length) {
                    $('#parent').prop('checked', true);
                } else {
                    $('#parent').prop('checked', false);
                }
            });

            $("#confirm-bulk-action").on('click', function (e) {
                e.preventDefault();
                $("#bulk-action-form").submit();
            })
        });
    </script>
@endsection
