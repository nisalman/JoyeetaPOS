 <?php $__env->startSection('content'); ?>
    <section class="forms">
        <div class="container-fluid">
            <div class="card">
                <div class="card-header mt-2">
                    <h3 class="text-center"><?php echo e(trans('file.Warehouse Report')); ?></h3>
                </div>
                


            </div>
        </div>

        <div class="card-body">
            Batch ID: <?php echo e($request->batchID); ?><br>
            Store ID: <?php echo e($request->storeName); ?><br>
            Total amount: <?php echo e($request->totalAmount); ?><br>
<           <form action="<?php echo e(route('disbursement.confirmation')); ?>" enctype="multipart/form-data"
                  method="post">
                <?php echo csrf_field(); ?>
                Image:<br><input type="file" name="image"> <br><br>
                Comment:<br><textarea name="comment" cols="38" rows="4"></textarea> <br>
                <input type="hidden" name="batchID" value="<?php echo e($request->batchID); ?>">
                <input type="hidden" name="storeID" value="<?php echo e($request->storeID); ?>">
                <input type="hidden" name="totalAmount" value="<?php echo e($request->totalAmount); ?>">
                <button type="submit" class="btn btn-sm btn-success">Submit</button>
            </form>

        </div>

    </section>

    <script>
        $(document).ready(function () {
            $('#select-all').click(function () {
                $('input[type="checkbox"]').prop('checked', this.checked);
            })
        });
    </script>



<?php $__env->stopSection(); ?>
<?php echo $__env->make('layout.main', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>