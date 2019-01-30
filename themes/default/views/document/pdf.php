<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $this->lang->line('Document') . ' ' . $document->reference_no; ?></title>
    <link href="<?= $assets ?>styles/helpers/bootstrap.min.css" rel="stylesheet"/>
    <link href="<?=$assets ?>styles/style.css" rel="stylesheet">
    <style type="text/css">
        html, body {
            height: 100%;
            background: #FFF;
        }
        body:before, body:after {
            display: none !important;
        }
        .table th {
            text-align: center;
            padding: 5px;
        }
        .table td {
            padding: 4px;
        }
    </style>
</head>

<body>
<div class="row">
    <div><h2 class="modal-title" id="myModalLabel" style="color: #00A0C6; text-align:center">Land Information Of <?= $document->name; ?> </h2>
    </div>
    <div class="col-lg-12">
        <div class="table-responsive warning">
            <table class="table table-bordered table-hover table-striped">
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
                    <td style="width: 30%"><b><?= lang("Mouza"); ?>:</b></td>
                    <td style="width: 70%"><?= $document->mujja;?></td>
                </tr>
                <tr>
                    <td style="width: 30%"><b><?= lang("District"); ?>:</b></td>
                    <td style="width: 70%"><?= $district->district;?></td>
                </tr>
                <tr>
                    <td style="width: 30%"><b><?= lang("Division"); ?>:</b></td>
                    <td style="width: 70%"><?= $district->division;?></td>
                </tr>
                <tr>
                    <td style="width: 30%"><b><?= lang("Owner_Name"); ?>:</b></td>
                    <td style="width: 70%"><?= $company->name; ?></td>
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
                    <td style="width: 35%"><b><?= lang("Mouza_Value"); ?>:</b></td>
                    <td style="width: 65%"><?= $document->mouza_value; ?></td>
                </tr>
                <tr>
                    <td style="width: 35%"><b><?= lang("Present_Value"); ?>:</b></td>
                    <td style="width: 65%"><?= $document->present_value; ?></td>
                </tr>
                <tr>
                    <td style="width: 35%"><b><?= lang("Purchased_Value"); ?>:</b></td>
                    <td style="width: 65%"><?= $document->price; ?></td>
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
                    <td style="width: 70%"><?= $doctype->description; ?></td>
                </tr>

                <tr>
                    <td style="width: 30%"><b><?= lang("Registration_Office"); ?>:</b></td>
                    <td style="width: 70%"><?=$document->registration_office; ?></td>
                </tr>
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
                    <td style="width: 30%"><b><?= lang("Namjari_Case_No"); ?>:</b></td>
                    <td style="width: 70%"><?= $document->case_no;?></td>
                </tr>
                <tr>
                    <td style="width: 30%"><b><?= lang("Namjari_Case_Date"); ?>:</b></td>
                    <td style="width: 70%"> <?= $document->case_date;?></td>
                </tr>
                <tr>
                    <td style="width: 30%"><b><?= lang("Jot_No"); ?>:</b></td>
                    <td style="width: 70%"><?= $document->jot_no;?></td>
                </tr>
                <tr>
                    <td style="width: 30%"><b><?= lang("Khajna_Update_Upto"); ?>:</b></td>
                    <td style="width: 70%"><?= $document->khajna_date;?></td>
                </tr>
                <tr>
                    <td style="width: 30%"><b><?= lang("Holding_No"); ?>:</b></td>
                    <td style="width: 70%"><?= $document->holding_no;?></td>
                </tr>
                <tr>
                    <td style="width: 30%"><b><?= lang("Khash_Land_Quantity"); ?>:</b></td>
                    <td style="width: 70%"><?= $document->khash_land_quantity;?></td>
                </tr>
                <tr>
                    <td style="width: 30%"><b><?= lang("Status"); ?>:</b></td>
                    <td style="width: 70%"><?= $document->status_id;?></td>
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
        <div class="clearfix"></div>
        <?php if($document->bank_name){ ?>
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <tbody>
                        <tr>
                            <td colspan="2" style="text-align: center"><b>Mortgage Information</b></td>
                        </tr>
                        <tr>
                            <td><b>Bank Name</b></td>
                            <td><?= $document->bank_name;?></td>
                        </tr>
                        <tr>
                            <td><b>Branch Name</b></td>
                            <td><?= $document->branch_name;?></td>
                        </tr>
                        <tr>
                            <td><b>Additional Info</b></td>
                            <td><?= $document->bank_info;?></td>
                        </tr>
                        </tbody>
                    </table></div>
            <div class="clearfix"></div>
        <?php }?>
        <?php if($document->other_info){ ?>
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <tbody>
                        <tr>
                            <td style="text-align: center"><b>Other Information</b></td>
                        </tr>
                        <tr>
                            <td><?= $document->other_info;?></td>
                        </tr>
                        </tbody>
                    </table></div>
        <?php }?>
        <hr>
        <div style="text-align: center"><?php echo $this->lang->line("Printing_Date").": ".date("d-m-Y h:i:sa"); ?></div>
    </div>
</div>
</body>
</html>