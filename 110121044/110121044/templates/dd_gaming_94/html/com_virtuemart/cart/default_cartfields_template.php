<?php
defined('_JEXEC') or die;
?>

<?php
// Status Of Delimiter
$closeDelimiter = false;
$openTable = true;
$hiddenFields = '';
    
if(!empty($this->userFieldsCart['fields'])) {

	// Output: Userfields
	foreach($this->userFieldsCart['fields'] as $field) {
	?>
	<fieldset>
		<div  class="cart <?php echo str_replace('_','-',$field['name']) ?>" >
		<span class="cart <?php echo str_replace('_','-',$field['name']) ?>" ><?php echo $field['title'] ?></span>

		<?php
        if ('customer_note' === $field['name']) {
            $field['formcode'] = str_replace('class="inputbox"', "", $field['formcode']);
        }

		if ($field['hidden'] == true) {
			// We collect all hidden fields
			// and output them at the end
			$hiddenFields .= $field['formcode'] . "\n";
		} else { ?>
				<?php echo $field['formcode'] ?>
			</div>
	<?php } ?>

	</fieldset>

	<?php
	}
	// Output: Hidden Fields
	echo $hiddenFields;
}
?>
