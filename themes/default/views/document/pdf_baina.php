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
    <div><h2 class="modal-title" id="myModalLabel" style="color: #00A0C6; text-align:center">Baina Information Of <?= $document->name; ?> </h2>
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
                    <td style="width: 30%"><b><?= lang("Baina_Type"); ?>:</b></td>
                    <td style="width: 70%"><?= $doctype->description; ?></td>
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
                    <td style="width: 30%"><b><?= lang("Baina_Date"); ?>:</b></td>
                    <td style="width: 70%"><?= $document->baina_date; ?></td>
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
                    <td style="width: 30%"><b><?= lang("Total_Amount"); ?>:</b></td>
                    <td style="width: 70%"><?= $document->total_amount;?></td>
                </tr>
                <tr>
                    <td style="width: 30%"><b><?= lang("Advance_Amount"); ?>:</b></td>
                    <td style="width: 70%"><?= $document->advance_amount;?></td>
                </tr>
                <tr>
                    <td style="width: 30%"><b><?= lang("Dues"); ?>:</b></td>
                    <td style="width: 70%"><?= $document->dues;?></td>
                </tr>
                <tr>
                    <td style="width: 30%"><b><?= lang("Expiration_Date"); ?>:</b></td>
                    <td style="width: 70%"><?= $document->expire_date; ?></td>
                </tr>
                <tr>
                    <td style="width: 30%"><b><?= lang("UM"); ?>:</b></td>
                    <td style="width: 70%">Decimal</td>
                </tr>
                <tr>
                    <td style="width: 30%"><b>Currency:</b></td>
                    <td style="width: 70%">BDT</td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="clearfix"></div>
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