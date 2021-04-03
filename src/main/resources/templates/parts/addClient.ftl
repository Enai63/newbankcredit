<#import '../parts/common.ftl' as c>
<@c.page>
    <!-- Button trigger modal -->
    <button type="button" class="btn btn btn-outline-secondary" data-toggle="modal" data-target="#staticBackdrop">
        Add client
    </button>

    <!-- Modal -->
    <div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Add client</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <#include "editClient.ftl">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-outline-success">Add client</button>
                </div>
            </div>
        </div>
    </div>
</@c.page>