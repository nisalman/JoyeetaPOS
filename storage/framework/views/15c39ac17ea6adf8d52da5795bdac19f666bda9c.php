 <?php $__env->startSection('content'); ?>
    <section class="forms">
        <div class="container-fluid">
            <div class="card">
                <div class="card-header mt-2">
                    <h3 class="text-center"><?php echo e(trans('file.Warehouse Report')); ?></h3>
                </div>
                
                <div class="table-responsive mb-4">
                    <table id="sale-table" class="table table-hover">
                        <thead>
                        <tr>
                            <th>Batch ID</th>
                            <th>Store Name</th>
                            <th>Final payment</th>
                            <th>From - To</th>
                            <th>Action</th>
                        </tr>
                        </thead>

                        <?php $__currentLoopData = $trans; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$batchTran): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <tr>
                                <td><a href=""
                                       style="color: red"> <?php echo e($key); ?></a></td>
                                <td><?php echo e($batchTran['store_name']); ?></td>
                                <td><?php echo e($batchTran['total_pay']); ?></td>
                                <td><?php echo e(Carbon\Carbon::parse($batchTran['fromDate'])->format('d/m/y')); ?> - <?php echo e(Carbon\Carbon::parse($batchTran['toDate'])->format('d/m/y')); ?></td>
                                <td>
                                    <?php echo Form::open(['route' => 'disbursement.payment'], ['method'=>'post']); ?>

                                    <input type="hidden" name="batchID" value="<?php echo e($key); ?>">
                                    <input type="hidden" name="transactionID" value="<?php echo e($batchTran['transactionID']); ?>">
                                    <input type="hidden" name="storeID" value="<?php echo e($batchTran['store_id']); ?>">
                                    <input type="hidden" name="storeName" value="<?php echo e($batchTran['store_name']); ?>">
                                    <input type="hidden" name="totalAmount" value="<?php echo e($batchTran['total_pay']); ?>">
                                    <button type="submit" class="btn btn-sm btn-outline-info">Disburse</button>

                                    <a href="<?php echo e(route('batch.delete',$key)); ?>"> <button type="button" class="btn btn-sm btn-outline-danger">Delete</button></a>
                                    <?php echo Form::close(); ?>

                                </td>
                            </tr>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </table>

                </div>

            </div>
        </div>



        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
             aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalCenterTitle"></h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <section class="card">
                            <div class="card-body">
                                <div class="adv-table">
                                    <table class="display table table-bordered table-striped">
                                        <tbody>
                                        <tr class="gradeX" width="30%">
                                            <td>Batch ID</td>
                                            <td id="storeLocation">loading...</td>
                                        </tr>
                                        <tr class="gradeX" width="30%">
                                            <td>Store Name</td>
                                            <td id="storeName"></td>
                                        </tr>
                                        <tr class="gradeX" width="30%">
                                            <td>Total Amount</td>
                                            <td id="customerName">loading...</td>
                                        </tr>
                                        <tr class="gradeX" width="30%">
                                            <td>Image</td>
                                            <td id="customerNumber">loading...</td>
                                        </tr>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </section>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

    </section>

    <script>
        $(document).ready(function () {
            $('#select-all').click(function () {
                $('input[type="checkbox"]').prop('checked', this.checked);
            })
        });

        $('#warehouse_id').val($('input[name="warehouse_id_hidden"]').val());
        $('.selectpicker').selectpicker('refresh');

        $('#sale-table').DataTable( {
            "order": [],
            'columnDefs': [
                {
                    "orderable": false,
                    'targets': 0
                },
                {
                    'render': function(data, type, row, meta){
                        if(type === 'display'){
                            data = '<div class="checkbox"><input type="checkbox" class="dt-checkboxes"><label></label></div>';
                        }

                        return data;
                    },
                }
            ],
            'select': { style: 'multi',  selector: 'td:first-child'},
            'lengthMenu': [[10, 25, 50, -1], [10, 25, 50, "All"]],
            dom: '<"row"lfB>rtip',
            buttons: [
                {
                    extend: 'pdf',
                    exportOptions: {
                        columns: ':visible:Not(.not-exported-sale)',
                        rows: ':visible'
                    },
                    action: function(e, dt, button, config) {
                        datatable_sum_sale(dt, true);
                        $.fn.dataTable.ext.buttons.pdfHtml5.action.call(this, e, dt, button, config);
                        datatable_sum_sale(dt, false);
                    },
                    footer:true
                },
                {
                    extend: 'csv',
                    exportOptions: {
                        columns: ':visible:Not(.not-exported-sale)',
                        rows: ':visible'
                    },
                    action: function(e, dt, button, config) {
                        datatable_sum_sale(dt, true);
                        $.fn.dataTable.ext.buttons.csvHtml5.action.call(this, e, dt, button, config);
                        datatable_sum_sale(dt, false);
                    },
                    footer:true
                },
                {
                    extend: 'print',
                    exportOptions: {
                        columns: ':visible:Not(.not-exported-sale)',
                        rows: ':visible'
                    },
                    action: function(e, dt, button, config) {
                        datatable_sum_sale(dt, true);
                        $.fn.dataTable.ext.buttons.print.action.call(this, e, dt, button, config);
                        datatable_sum_sale(dt, false);
                    },
                    footer:true
                },
                {
                    extend: 'colvis',
                    columns: ':gt(0)'
                }
            ],
            drawCallback: function () {
                var api = this.api();
                datatable_sum_sale(api, false);
            }
        } );

        function datatable_sum_sale(dt_selector, is_calling_first) {
            if (dt_selector.rows( '.selected' ).any() && is_calling_first) {
                var rows = dt_selector.rows( '.selected' ).indexes();

                $( dt_selector.column( 5 ).footer() ).html(dt_selector.cells( rows, 5, { page: 'current' } ).data().sum().toFixed(2));
                $( dt_selector.column( 6 ).footer() ).html(dt_selector.cells( rows, 6, { page: 'current' } ).data().sum().toFixed(2));
                $( dt_selector.column( 7 ).footer() ).html(dt_selector.cells( rows, 7, { page: 'current' } ).data().sum().toFixed(2));
            }
            else {
                $( dt_selector.column( 5 ).footer() ).html(dt_selector.column( 5, {page:'current'} ).data().sum().toFixed(2));
                $( dt_selector.column( 6 ).footer() ).html(dt_selector.column( 6, {page:'current'} ).data().sum().toFixed(2));
                $( dt_selector.column( 7 ).footer() ).html(dt_selector.cells( rows, 7, { page: 'current' } ).data().sum().toFixed(2));
            }
        }
    </script>



<?php $__env->stopSection(); ?>
<?php echo $__env->make('layout.main', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>