<?php
function funcErrorMessage($msg) {
    ob_start();
    $document = JFactory::getDocument();
    ?>
    <div class=" bd-errormessage-1 alert alert-danger">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <span><?php echo $msg; ?></span>
    </div>
    <?php
    return ob_get_clean();
}