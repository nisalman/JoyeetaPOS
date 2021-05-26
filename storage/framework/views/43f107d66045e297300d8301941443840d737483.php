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
                            <th>Disburse ID</th>
                            <th>Store Name</th>
                            <th>Paid Amount</th>
                            <th>images</th>
                            <th>Comment</th>
                            <th>Date</th>

                        </thead>
                        <tbody>
                        <?php $__currentLoopData = $disbursements; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $disbursement): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                            <tr class="gradeX">
                                <td><a href=""
                                       style="color: red"> <?php echo e($disbursement->disburse_id); ?></a></td>
                                
                                <td><?php echo e(\App\Warehouse::find($disbursement->warehouse_id)->name); ?></td>
                                <td><?php echo e($disbursement->paid_amount); ?></td>
                                <td>
                                    <?php if($disbursement->photos==null): ?>
                                        <img src="<?php echo e(asset('uploads/no_image.png')); ?>" width="40"
                                             height="40">
                                    <?php else: ?>
                                        <img src="<?php echo e(asset('uploads/'.$disbursement->photos)); ?>" width="40"
                                             height="40">
                                    <?php endif; ?>
                                </td>
                                <td><?php echo e($disbursement->comment); ?></td>
                                <td class="center hidden-phone">
                                    <?php echo e(Carbon\Carbon::parse($disbursement->created_at)->format('d/m/Y')); ?>

                                </td>
                                
                                
                            </tr>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </tbody>

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