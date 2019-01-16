<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<div class="modal-dialog modal-lg">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                <i class="fa fa-2x">&times;</i>
            </button>
            <button type="button" class="btn btn-xs btn-default no-print pull-right" style="margin-right:15px;" onclick="window.print();">
                <i class="fa fa-print"></i> <?= lang('print'); ?>
            </button>
            <h2 class="modal-title" id="myModalLabel" style="color: #00A0C6; text-align:center">Document Details Of <?= $document->name; ?></h2>
        </div>
        <div class="modal-body">
            <div class="row">
                <div class="col-xs-12">
                <div class="col-xs-6">
                    <div class="table-responsive">
                        <table class="table table-borderless table-striped ">
                            <tbody>
                            <tr>
                                <td style="width: 30%"><b><?= lang("reference_no"); ?>:</b></td>
                                <td style="width: 70%"><?= $document->reference_no ?></td>
                            </tr>
                            <tr>
                                <td style="width: 30%"><b><?= lang("name"); ?>:</b></td>
                                <td style="width: 70%"><?= $document->name; ?></td>
                            </tr>
                            <tr>
                                <td style="width: 30%"><b><?= lang("Owner_Name"); ?>:</b></td>
                                <td style="width: 70%"><?= $company->name; ?></td>
                            </tr>
                            <tr>
                                <td style="width: 30%"><b><?= lang("Status"); ?>:</b></td>
                                <td style="width: 70%"><?= $document->status_id;?></td>
                            </tr>
                            <tr>
                                <td style="width: 30%"><b><?= lang("Seller_Name"); ?>:</b></td>
                                <td style="width: 70%"><?= $document->seller_name; ?></td>
                            </tr>
                            <tr>
                                <td style="width: 30%"><b><?= lang("Land_Quantity"); ?>:</b></td>
                                <td style="width: 70%"><?= $document->land_quantity; ?></td>
                            </tr>
                            <tr>
                                <td style="width: 30%"><b><?= lang("Price"); ?>:</b></td>
                                <td style="width: 70%"><?= $document->price; ?></td>
                            </tr>
                            <tr>
                                <td><b><?= lang("Bia_Deed_No"); ?>:</b></td>
                                <td><?= $document->bia_deed_no; ?></td>
                            </tr>
                            <tr>
                                <td style="width: 30%"><b><?= lang("Bia_Deed_Date"); ?>:</b></td>
                                <td style="width: 70%"><?= $document->bia_deed_date; ?></td>
                            </tr>
                            <tr>
                                <td style="width: 30%"><b><?= lang("DCR_No"); ?>:</b></td>
                                <td style="width: 70%"><?= $document->dcr_no; ?></td>
                            </tr>
                            <tr>
                                <td style="width: 30%"><b><?= lang("Dag_No"); ?>:</b></td>
                                <td style="width: 70%"><?= $document->dag_no; ?></td>
                            </tr>
                            <tr>
                                <td style="width: 30%"><b><?= lang("Khotian_No"); ?>:</b></td>
                                <td style="width: 70%"><?= $document->khotian_no; ?></td>
                            </tr>
                            <tr>
                                <td style="width: 30%"><b><?= lang("Document_Type"); ?>:</b></td>
                                <td style="width: 70%"><?= $doctype->name; ?></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="col-xs-6">
                    <div class="table-responsive">
                        <table class="table table-borderless table-striped">
                            <tbody>
                            <tr>
                                <td style="width: 30%"><b><?= lang("Registration_Office"); ?>:</b></td>
                                <td style="width: 70%"><?=$document->registration_office; ?></td>
                            </tr
                            <tr>
                                <td style="width: 30%" ><b><?= lang("Registration_Expense"); ?>:</b></td>
                                <td style="width: 70%" ><?= $document->registration_expense; ?></td>
                            </tr>
                            <tr>
                                <td style="width: 30%"><b><?= lang("Registration_Date"); ?>:</b></td>
                                <td style="width: 70%"><?= $document->registration_date; ?></td>
                            </tr>
                            <tr>
                                <td ><b><?= lang("Deed_No"); ?>:</b></td>
                                <td ><?= $document->deed_no;?></td>
                            </tr>
                            <tr>
                                <td style="width: 30%"> <b><?= lang("Deed_Date"); ?>:</b></td>
                                <td style="width: 70%"><?= $document->deed_date; ?></td>
                            </tr>
                            <tr>
                                <td style="width: 30%"><b><?= lang("UM"); ?>:</b></td>
                                <td style="width: 70%">Decimal</td>
                            </tr>
                            <tr>
                                <td style="width: 30%"><b>Currency:</b></td>
                                <td style="width: 70%">BDT</td>
                            </tr>
                            <tr>
                                <td style="width: 30%"><b><?= lang("Case_No"); ?>:</b></td>
                                <td style="width: 70%"><?= $document->case_no;?></td>
                            </tr>
                            <tr>
                                <td style="width: 30%"><b><?= lang("Case_Date"); ?>:</b></td>
                                <td style="width: 70%"> <?= $document->case_date;?></td>
                            </tr>
                            <tr>
                                <td style="width: 30%"><b><?= lang("Jot_No"); ?>:</b></td>
                                <td style="width: 70%"><?= $document->jot_no;?></td>
                            </tr>
                            <tr>
                                <td style="width: 30%"><b><?= lang("Mujja"); ?>:</b></td>
                                <td style="width: 70%"><?= $document->mujja;?></td>
                            </tr>
                            <tr>
                                <td style="width: 30%"><b><?= lang("Rack_No"); ?>:</b></td>
                                <td style="width: 70%"><?= $document->rack_no;?></td>
                            </tr>
                            <tr>
                                <td style="width: 30%"><b><?= lang("Location"); ?>:</b></td>
                                <td style="width: 70%"><?= $document->location;?></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                </div>
                <div class="clearfix"></div>

                <div class="col-xs-12">

                    <?= $product->details ? '<div class="panel panel-success"><div class="panel-heading">' . lang('product_details_for_invoice') . '</div><div class="panel-body">' . $product->details . '</div></div>' : ''; ?>
                    <?= $product->product_details ? '<div class="panel panel-primary"><div class="panel-heading">' . lang('product_details') . '</div><div class="panel-body">' . $product->product_details . '</div></div>' : ''; ?>

                </div>
            </div>
                <div class="buttons">
                    <div class="btn-group btn-group-justified">
                        <div class="btn-group">
                            <a href="<?= site_url('products/print_barcodes/' . $product->id) ?>" class="tip btn btn-primary" title="<?= lang('print_barcode_label') ?>">
                                <i class="fa fa-print"></i>
                                <span class="hidden-sm hidden-xs"><?= lang('print_barcode_label') ?></span>
                            </a>
                        </div>
                        <div class="btn-group">
                            <a href="<?= site_url('document/pdf/' . $document->id) ?>" class="tip btn btn-primary" title="<?= lang('pdf') ?>">
                                <i class="fa fa-download"></i>
                                <span class="hidden-sm hidden-xs"><?= lang('pdf') ?></span>
                            </a>
                        </div>
                        <div class="btn-group">
                            <a href="<?= site_url('products/edit/' . $product->id) ?>" class="tip btn btn-warning tip" title="<?= lang('edit_product') ?>">
                                <i class="fa fa-edit"></i>
                                <span class="hidden-sm hidden-xs"><?= lang('edit') ?></span>
                            </a>
                        </div>
                        <div class="btn-group">
                            <a href="#" class="tip btn btn-danger bpo" title="<b><?= lang("delete_product") ?></b>"
                               data-content="<div style='width:150px;'><p><?= lang('r_u_sure') ?></p><a class='btn btn-danger' href='<?= site_url('products/delete/' . $product->id) ?>'><?= lang('i_m_sure') ?></a> <button class='btn bpo-close'><?= lang('no') ?></button></div>"
                               data-html="true" data-placement="top">
                                <i class="fa fa-trash-o"></i>
                                <span class="hidden-sm hidden-xs"><?= lang('delete') ?></span>
                            </a>
                        </div>
                    </div>
                </div>
                <script type="text/javascript">
                    $(document).ready(function () {
                        $('.tip').tooltip();
                    });
                </script>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function() {
        $('.change_img').click(function(event) {
            event.preventDefault();
            var img_src = $(this).attr('href');
            $('#pr-image').attr('src', img_src);
            return false;
        });
    });
</script>