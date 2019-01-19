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
        <div><h2 class="modal-title" id="myModalLabel" style="color: #00A0C6; text-align:center">Document Details</h2>
        </div>
        <br>
            <div class="col-lg-12">
                <div class="table-responsive warning">
                    <table class="table table-bordered table-hover table-striped">
                        <tbody>
                        <tr class="warning">
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
                            <td style="width: 70%"><?= $document->land_quantity; ?>&nbsp;Decimal</td>
                        </tr>
                        <tr>
                            <td style="width: 30%"><b><?= lang("Price"); ?>:</b></td>
                            <td style="width: 70%"><?= $document->price; ?> &nbsp;BDT</td>
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
                            <td style="width: 70%" ><?= $document->registration_expense; ?> &nbsp;BDT</td>
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
                        <tr>
                            <td style="width: 30%"><b><?= lang("Other_Information"); ?>:</b></td>
                            <td style="width: 70%"><?= $document->other_info;?></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <hr>
                <div style="text-align: center"><?php echo $this->lang->line("Printing_Date").": ".date("d-m-Y h:i:sa"); ?></div>
            </div>
    </div>
</body>
</html>