<?php echo $header; ?>
<div id="content">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($error_warning) { ?>
  <div class="alert alert-error"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box">
    <div class="box-heading">
      <h1><i class="icon-edit"></i> <?php echo $heading_title; ?></h1>
    </div>
    <div class="box-content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
        <div class="buttons"><a onclick="$('#form').submit();" class="btn"><i class="icon-ok"></i> <?php echo $button_save; ?></a> <a href="<?php echo $cancel; ?>" class="btn"><i class="icon-remove"></i> <?php echo $button_cancel; ?></a></div>
        <ul class="nav nav-tabs">
          <li class="active"><a href="#tab-general" data-toggle="tab"><?php echo $tab_general; ?></a></li>
          <?php if ($customer_id) { ?>
          <li><a href="#tab-history" data-toggle="tab"><?php echo $tab_history; ?></a></li>
          <li><a href="#tab-transaction" data-toggle="tab"><?php echo $tab_transaction; ?></a></li>
          <li><a href="#tab-reward" data-toggle="tab"><?php echo $tab_reward; ?></a></li>
          <?php } ?>
          <li><a href="#tab-ip" data-toggle="tab"><?php echo $tab_ip; ?></a></li>
        </ul>
        <div class="tab-content">
          <div class="tab-pane active" id="tab-general">
            <div class="tabbable tabs-left">
              <ul class="nav nav-tabs" id="address">
                <li class="active"><a href="#tab-customer" data-toggle="tab"><?php echo $tab_general; ?></a></li>
                <?php $address_row = 1; ?>
                <?php foreach ($addresses as $address) { ?>
                <li><a href="#tab-address<?php echo $address_row; ?>" data-toggle="tab"><?php echo $tab_address . ' ' . $address_row; ?> <img src="view/image/icon-delete.png" alt="" onclick="$('#address a[href=\'#tab-address<?php echo $address_row; ?>\']').parent().remove(); $('#tab-address<?php echo $address_row; ?>').remove();" /></a></li>
                <?php $address_row++; ?>
                <?php } ?>
                <li id="address-add"><?php echo $button_add_address; ?> <img src="view/image/icon-add.png" alt="" onclick="addAddress();" /></li>
              </ul>
              <div class="tab-content">
                <div class="tab-pane active" id="tab-customer">
                  <div class="control-group">
                    <label class="control-label" for="input-name"><span class="required">*</span> <?php echo $entry_firstname; ?></label>
                    <div class="controls">
                      <input type="text" name="firstname" value="<?php echo $firstname; ?>" placeholder="<?php echo $entry_firstname; ?>" />
                      <?php if ($error_firstname) { ?>
                      <span class="error"><?php echo $error_firstname; ?></span>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="control-group">
                    <label class="control-label" for="input-name"><span class="required">*</span> <?php echo $entry_lastname; ?></label>
                    <div class="controls">
                      <input type="text" name="lastname" value="<?php echo $lastname; ?>" placeholder="<?php echo $entry_lastname; ?>" />
                      <?php if ($error_lastname) { ?>
                      <span class="error"><?php echo $error_lastname; ?></span>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="control-group">
                    <label class="control-label" for="input-name"><span class="required">*</span> <?php echo $entry_email; ?></label>
                    <div class="controls">
                      <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" />
                      <?php if ($error_email) { ?>
                      <span class="error"><?php echo $error_email; ?></span>
                      <?php  } ?>
                    </div>
                  </div>
                  <div class="control-group">
                    <label class="control-label" for="input-name"><span class="required">*</span> <?php echo $entry_telephone; ?></label>
                    <div class="controls">
                      <input type="text" name="telephone" value="<?php echo $telephone; ?>" placeholder="<?php echo $entry_telephone; ?>" />
                      <?php if ($error_telephone) { ?>
                      <span class="error"><?php echo $error_telephone; ?></span>
                      <?php  } ?>
                    </div>
                  </div>
                  <div class="control-group">
                    <label class="control-label" for="input-name"><?php echo $entry_fax; ?></label>
                    <div class="controls">
                      <input type="text" name="fax" value="<?php echo $fax; ?>" placeholder="<?php echo $entry_fax; ?>" />
                    </div>
                  </div>
                  <div class="control-group">
                    <label class="control-label" for="input-name"><?php echo $entry_password; ?></label>
                    <div class="controls">
                      <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" />
                      <?php if ($error_password) { ?>
                      <span class="error"><?php echo $error_password; ?></span>
                      <?php  } ?>
                    </div>
                  </div>
                  <div class="control-group">
                    <label class="control-label" for="input-name"><?php echo $entry_confirm; ?></label>
                    <div class="controls">
                      <input type="password" name="confirm" value="<?php echo $confirm; ?>" placeholder="<?php echo $entry_confirm; ?>" />
                      <?php if ($error_confirm) { ?>
                      <span class="error"><?php echo $error_confirm; ?></span>
                      <?php  } ?>
                    </div>
                  </div>
                  <div class="control-group">
                    <label class="control-label" for="input-name"><?php echo $entry_newsletter; ?></label>
                    <div class="controls">
                      <select name="newsletter">
                        <?php if ($newsletter) { ?>
                        <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                        <option value="0"><?php echo $text_disabled; ?></option>
                        <?php } else { ?>
                        <option value="1"><?php echo $text_enabled; ?></option>
                        <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                        <?php } ?>
                      </select>
                    </div>
                  </div>
                  <div class="control-group">
                    <label class="control-label" for="input-name"><?php echo $entry_customer_group; ?></label>
                    <div class="controls">
                      <select name="customer_group_id">
                        <?php foreach ($customer_groups as $customer_group) { ?>
                        <?php if ($customer_group['customer_group_id'] == $customer_group_id) { ?>
                        <option value="<?php echo $customer_group['customer_group_id']; ?>" selected="selected"><?php echo $customer_group['name']; ?></option>
                        <?php } else { ?>
                        <option value="<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></option>
                        <?php } ?>
                        <?php } ?>
                      </select>
                    </div>
                  </div>
                  <div class="control-group">
                    <label class="control-label" for="input-name"><?php echo $entry_status; ?></label>
                    <div class="controls">
                      <select name="status">
                        <?php if ($status) { ?>
                        <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                        <option value="0"><?php echo $text_disabled; ?></option>
                        <?php } else { ?>
                        <option value="1"><?php echo $text_enabled; ?></option>
                        <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                        <?php } ?>
                      </select>
                    </div>
                  </div>
                </div>
                <?php $address_row = 1; ?>
                <?php foreach ($addresses as $address) { ?>
                <div class="tab-pane" id="tab-address<?php echo $address_row; ?>">
                  <input type="hidden" name="address[<?php echo $address_row; ?>][address_id]" value="<?php echo $address['address_id']; ?>" />
                  <div class="control-group">
                    <label class="control-label" for="input-name"><span class="required">*</span> <?php echo $entry_firstname; ?></label>
                    <div class="controls">
                      <input type="text" name="address[<?php echo $address_row; ?>][firstname]" value="<?php echo $address['firstname']; ?>" placeholder="<?php echo $entry_firstname; ?>" />
                      <?php if (isset($error_address_firstname[$address_row])) { ?>
                      <span class="error"><?php echo $error_address_firstname[$address_row]; ?></span>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="control-group">
                    <label class="control-label" for="input-name"><span class="required">*</span> <?php echo $entry_lastname; ?></label>
                    <div class="controls">
                      <input type="text" name="address[<?php echo $address_row; ?>][lastname]" value="<?php echo $address['lastname']; ?>" placeholder="<?php echo $entry_lastname; ?>" />
                      <?php if (isset($error_address_lastname[$address_row])) { ?>
                      <span class="error"><?php echo $error_address_lastname[$address_row]; ?></span>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="control-group">
                    <label class="control-label" for="input-name"><?php echo $entry_company; ?></label>
                    <div class="controls">
                      <input type="text" name="address[<?php echo $address_row; ?>][company]" value="<?php echo $address['company']; ?>" placeholder="<?php echo $entry_company; ?>" />
                    </div>
                  </div>
                  <div class="control-group">
                    <label class="control-label" for="input-name"><span class="required">*</span> <?php echo $entry_address_1; ?></label>
                    <div class="controls">
                      <input type="text" name="address[<?php echo $address_row; ?>][address_1]" value="<?php echo $address['address_1']; ?>" placeholder="<?php echo $entry_address_1; ?>" />
                      <?php if (isset($error_address_address_1[$address_row])) { ?>
                      <span class="error"><?php echo $error_address_address_1[$address_row]; ?></span>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="control-group">
                    <label class="control-label" for="input-name"><?php echo $entry_address_2; ?></label>
                    <div class="controls">
                      <input type="text" name="address[<?php echo $address_row; ?>][address_2]" value="<?php echo $address['address_2']; ?>" placeholder="<?php echo $entry_address_2; ?>" />
                    </div>
                  </div>
                  <div class="control-group">
                    <label class="control-label" for="input-name"><span class="required">*</span> <?php echo $entry_city; ?></label>
                    <div class="controls">
                      <input type="text" name="address[<?php echo $address_row; ?>][city]" value="<?php echo $address['city']; ?>" placeholder="<?php echo $entry_city; ?>" />
                      <?php if (isset($error_address_city[$address_row])) { ?>
                      <span class="error"><?php echo $error_address_city[$address_row]; ?></span>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="control-group">
                    <label class="control-label" for="input-name">
                    <<span id="postcode-required<?php echo $address_row; ?>" class="required">*</span> <?php echo $entry_postcode; ?>/label>
                    <div class="controls">
                      <input type="text" name="address[<?php echo $address_row; ?>][postcode]" value="<?php echo $address['postcode']; ?>" placeholder="<?php echo $entry_postcode; ?>" />
                    </div>
                  </div>
                  <div class="control-group">
                    <label class="control-label" for="input-name"><span class="required">*</span> <?php echo $entry_country; ?></label>
                    <div class="controls">
                      <select name="address[<?php echo $address_row; ?>][country_id]" onchange="country(this, '<?php echo $address_row; ?>', '<?php echo $address['zone_id']; ?>');">
                        <option value=""><?php echo $text_select; ?></option>
                        <?php foreach ($countries as $country) { ?>
                        <?php if ($country['country_id'] == $address['country_id']) { ?>
                        <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
                        <?php } else { ?>
                        <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                        <?php } ?>
                        <?php } ?>
                      </select>
                      <?php if (isset($error_address_country[$address_row])) { ?>
                      <span class="error"><?php echo $error_address_country[$address_row]; ?></span>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="control-group">
                    <label class="control-label" for="input-name"><span class="required">*</span> <?php echo $entry_zone; ?></label>
                    <div class="controls">
                      <select name="address[<?php echo $address_row; ?>][zone_id]">
                      </select>
                      <?php if (isset($error_address_zone[$address_row])) { ?>
                      <span class="error"><?php echo $error_address_zone[$address_row]; ?></span>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="control-group">
                    <label class="control-label" for="input-name"><?php echo $entry_default; ?></label>
                    <div class="controls">
                      <label class="radio">
                        <?php if (($address['address_id'] == $address_id) || !$addresses) { ?>
                        <input type="radio" name="address[<?php echo $address_row; ?>][default]" value="<?php echo $address_row; ?>" checked="checked" />
                        <?php } else { ?>
                        <input type="radio" name="address[<?php echo $address_row; ?>][default]" value="<?php echo $address_row; ?>" />
                        <?php } ?>
                      </label>
                    </div>
                  </div>
                </div>
                <?php $address_row++; ?>
                <?php } ?>
              </div>
            </div>
          </div>
          <?php if ($customer_id) { ?>
          <div class="tab-pane" id="tab-history">
            <div id="history"></div>
            <?php echo $entry_comment; ?>
            <textarea name="comment" cols="40" rows="8" placeholder="<?php echo $entry_comment; ?>" style="width: 99%;"></textarea>
            <a id="button-history" class="btn"><span><?php echo $button_add_history; ?></span></a> </div>
          <div class="tab-pane" id="tab-transaction">
            <div class="control-group">
              <label class="control-label" for="input-name"><?php echo $entry_description; ?></label>
              <div class="controls">
                <input type="text" name="description" value="" placeholder="<?php echo $entry_description; ?>" />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="input-name"><?php echo $entry_amount; ?></label>
              <div class="controls">
                <input type="text" name="amount" value="" placeholder="<?php echo $entry_amount; ?>" />
              </div>
            </div>
            <a id="button-transaction" class="btn" onclick="addTransaction();"><span><?php echo $button_add_transaction; ?></span></a>
            <div id="transaction"></div>
          </div>
          <div class="tab-pane" id="tab-reward">
            <div class="control-group">
              <label class="control-label" for="input-name"><?php echo $entry_description; ?></label>
              <div class="controls">
                <input type="text" name="description" value="" placeholder="<?php echo $entry_description; ?>" />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="input-name"><?php echo $entry_points; ?></label>
              <div class="controls">
                <input type="text" name="points" value="" placeholder="<?php echo $entry_points; ?>" />
                <span class="help-block"><?php echo $help_points; ?></span></div>
            </div>
            <a id="button-reward" class="btn" onclick="addRewardPoints();"><span><?php echo $button_add_reward; ?></span></a>
            <div id="reward"></div>
          </div>
          <?php } ?>
          <div class="tab-pane" id="tab-ip">
            <table class="table table-striped table-bordered table-hover">
              <thead>
                <tr>
                  <td class="left"><?php echo $column_ip; ?></td>
                  <td class="right"><?php echo $column_total; ?></td>
                  <td class="left"><?php echo $column_date_added; ?></td>
                  <td class="right"><?php echo $column_action; ?></td>
                </tr>
              </thead>
              <tbody>
                <?php if ($ips) { ?>
                <?php foreach ($ips as $ip) { ?>
                <tr>
                  <td class="left"><a href="http://www.geoiptool.com/en/?IP=<?php echo $ip['ip']; ?>" target="_blank"><?php echo $ip['ip']; ?></a></td>
                  <td class="right"><a href="<?php echo $ip['filter_ip']; ?>" target="_blank"><?php echo $ip['total']; ?></a></td>
                  <td class="left"><?php echo $ip['date_added']; ?></td>
                  <td class="right"><?php if ($ip['ban_ip']) { ?>
                    <b>[</b> <a id="<?php echo str_replace('.', '-', $ip['ip']); ?>" onclick="removeBanIP('<?php echo $ip['ip']; ?>');"><?php echo $text_remove_ban_ip; ?></a> <b>]</b>
                    <?php } else { ?>
                    <b>[</b> <a id="<?php echo str_replace('.', '-', $ip['ip']); ?>" onclick="addBanIP('<?php echo $ip['ip']; ?>');"><?php echo $text_add_ban_ip; ?></a> <b>]</b>
                    <?php } ?></td>
                </tr>
                <?php } ?>
                <?php } else { ?>
                <tr>
                  <td class="center" colspan="4"><?php echo $text_no_results; ?></td>
                </tr>
                <?php } ?>
              </tbody>
            </table>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
<script type="text/javascript"><!--
$('select[name=\'customer_group_id\']').on('change', function() {

});

$('select[name=\'customer_group_id\']').trigger('change');
//--></script> 
<script type="text/javascript"><!--
function country(element, index, zone_id) {
  if (element.value != '') {
		$.ajax({
			url: 'index.php?route=sale/customer/country&token=<?php echo $token; ?>&country_id=' + element.value,
			dataType: 'json',
			beforeSend: function() {
				$('select[name=\'address[' + index + '][country_id]\']').after('<img src="view/image/loading.gif" class="loading" style="padding-left: 5px;" />');
			},
			complete: function() {
				$('.loading').remove();
			},			
			success: function(json) {
				if (json['postcode_required'] == '1') {
					$('#postcode-required' + index).show();
				} else {
					$('#postcode-required' + index).hide();
				}
				
				html = '<option value=""><?php echo $text_select; ?></option>';
				
				if (json['zone'] != '') {
					for (i = 0; i < json['zone'].length; i++) {
						html += '<option value="' + json['zone'][i]['zone_id'] + '"';
						
						if (json['zone'][i]['zone_id'] == zone_id) {
							html += ' selected="selected"';
						}
		
						html += '>' + json['zone'][i]['name'] + '</option>';
					}
				} else {
					html += '<option value="0"><?php echo $text_none; ?></option>';
				}
				
				$('select[name=\'address[' + index + '][zone_id]\']').html(html);
			},
			error: function(xhr, ajaxOptions, thrownError) {
				alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});
	}
}

$('select[name$=\'[country_id]\']').trigger('change');
//--></script> 
<script type="text/javascript"><!--
var address_row = <?php echo $address_row; ?>;

function addAddress() {	
	html  = '<div class="tab-pane" id="tab-address' + address_row + '">';
	html += '  <input type="hidden" name="address[' + address_row + '][address_id]" value="" />';

	html += '  <div class="control-group">';
	html += '    <label class="control-label" for="input-name"><span class="required">*</span> <?php echo $entry_firstname; ?></label>';
	html += '    <div class="controls"><input type="text" name="address[' + address_row + '][firstname]" value="" placeholder="<?php echo $entry_firstname; ?>" /></div>';
	html += '  </div>'; 
	
	html += '  <div class="control-group">';
	html += '    <label class="control-label" for="input-name"><span class="required">*</span> <?php echo $entry_lastname; ?></label>';
	html += '    <div class="controls"><input type="text" name="address[' + address_row + '][lastname]" value="" placeholder="<?php echo $entry_lastname; ?>" /></div>';
	html += '  </div>'; 
	
	html += '  <div class="control-group">';
	html += '    <label class="control-label" for="input-name"><?php echo $entry_company; ?></label>';
	html += '    <div class="controls"><input type="text" name="address[' + address_row + '][company]" value="" placeholder="<?php echo $entry_company; ?>" /></div>';
	html += '  </div>'; 
	
	html += '  <div class="control-group">';
	html += '    <label class="control-label" for="input-name"><span class="required">*</span> <?php echo $entry_address_1; ?></label>';
	html += '    <div class="controls"><input type="text" name="address[' + address_row + '][address_1]" value="" placeholder="<?php echo $entry_address_1; ?>" /></div>';
	html += '  </div>'; 		
	
	html += '  <div class="control-group">';
	html += '    <label class="control-label" for="input-name"><?php echo $entry_address_2; ?></label>';
	html += '    <div class="controls"><input type="text" name="address[' + address_row + '][address_2]" value="" placeholder="<?php echo $entry_address_2; ?>" /></div>';
	html += '  </div>'; 
	
	html += '  <div class="control-group">';
	html += '    <label class="control-label" for="input-name"><span class="required">*</span> <?php echo $entry_city; ?></label>';
	html += '    <div class="controls"><input type="text" name="address[' + address_row + '][city]" value="" placeholder="<?php echo $entry_city; ?>" /></div>';
	html += '  </div>'; 
	
	html += '  <div class="control-group">';
	html += '    <label class="control-label" for="input-name"><span id="postcode-required' + address_row + '" class="required">*</span> <?php echo $entry_postcode; ?></label>';
	html += '    <div class="controls"><input type="text" name="address[' + address_row + '][postcode]" value="" placeholder="<?php echo $entry_postcode; ?>" /></div>';
	html += '  </div>'; 

	html += '  <div class="control-group">';
	html += '    <label class="control-label" for="input-name"><span class="required">*</span> <?php echo $entry_country; ?></label>';
	html += '    <div class="controls"><select name="address[' + address_row + '][country_id]" onchange="country(this, \'' + address_row + '\', \'0\');">';
    html += '         <option value=""><?php echo $text_select; ?></option>';
    <?php foreach ($countries as $country) { ?>
    html += '         <option value="<?php echo $country['country_id']; ?>"><?php echo addslashes($country['name']); ?></option>';
    <?php } ?>
    html += '      </select></div>';
	html += '  </div>'; 

	html += '  <div class="control-group">';
	html += '    <label class="control-label" for="input-name"><span class="required">*</span> <?php echo $entry_zone; ?></label>';
	html += '    <div class="controls"><select name="address[' + address_row + '][zone_id]"><option value="false"><?php echo $this->language->get('text_none'); ?></option></select></div>';
	html += '  </div>'; 

	html += '  <div class="control-group">';
	html += '    <label class="control-label" for="input-name"><?php echo $entry_default; ?></label>';
	html += '    <div class="controls"><label class="radio"><input type="radio" name="address[' + address_row + '][default]" value="1" /></label></div>';
	html += '  </div>'; 
								
    html += '</div>';
	
	$('#tab-general .tab-content').append(html);
	
	$('select[name=\'address[' + address_row + '][country_id]\']').trigger('change');	
	
	$('#address-add').before('<li><a href="#tab-address' + address_row + '" data-toggle="tab"><?php echo $tab_address; ?> ' + address_row + '&nbsp;<img src="view/image/icon-delete.png" alt="" onclick="$(\'#address a:first\').tab(\'show\'); $(\'a[href=\\\'#tab-address' + address_row + '\\\']\').parent().remove(); $(\'#tab-address' + address_row + '\').remove();" /></a></li>');
	
	$('#address a[href=\'#tab-address' + address_row + '\']').tab('show');
	
	address_row++;
}
//--></script> 
<script type="text/javascript"><!--
$('#history .pagination a').on('click', function() {
	$('#history').load(this.href);
	
	return false;
});			

$('#history').load('index.php?route=sale/customer/history&token=<?php echo $token; ?>&customer_id=<?php echo $customer_id; ?>');

$('#button-history').on('click', function() {
	$.ajax({
		url: 'index.php?route=sale/customer/history&token=<?php echo $token; ?>&customer_id=<?php echo $customer_id; ?>',
		type: 'post',
		dataType: 'html',
		data: 'comment=' + encodeURIComponent($('#tab-history textarea[name=\'comment\']').val()),
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#button-history').attr('disabled', true);
			$('#history').before('<div class="attention"><img src="view/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#button-history').attr('disabled', false);
			$('.attention').remove();
      		$('#tab-history textarea[name=\'comment\']').val('');
		},
		success: function(html) {
			$('#history').html(html);
			
			$('#tab-history input[name=\'comment\']').val('');
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('#transaction .pagination a').on('click', function() {
	$('#transaction').load(this.href);
	
	return false;
});			

$('#transaction').load('index.php?route=sale/customer/transaction&token=<?php echo $token; ?>&customer_id=<?php echo $customer_id; ?>');

$('#button-transaction').on('click', function() {
	$.ajax({
		url: 'index.php?route=sale/customer/transaction&token=<?php echo $token; ?>&customer_id=<?php echo $customer_id; ?>',
		type: 'post',
		dataType: 'html',
		data: 'description=' + encodeURIComponent($('#tab-transaction input[name=\'description\']').val()) + '&amount=' + encodeURIComponent($('#tab-transaction input[name=\'amount\']').val()),
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#button-transaction').attr('disabled', true);
			$('#transaction').before('<div class="attention"><img src="view/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#button-transaction').attr('disabled', false);
			$('.attention').remove();
		},
		success: function(html) {
			$('#transaction').html(html);
			
			$('#tab-transaction input[name=\'amount\']').val('');
			$('#tab-transaction input[name=\'description\']').val('');
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('#reward .pagination a').on('click', function() {
	$('#reward').load(this.href);
	
	return false;
});			

$('#reward').load('index.php?route=sale/customer/reward&token=<?php echo $token; ?>&customer_id=<?php echo $customer_id; ?>');

function addRewardPoints() {
	$.ajax({
		url: 'index.php?route=sale/customer/reward&token=<?php echo $token; ?>&customer_id=<?php echo $customer_id; ?>',
		type: 'post',
		dataType: 'html',
		data: 'description=' + encodeURIComponent($('#tab-reward input[name=\'description\']').val()) + '&points=' + encodeURIComponent($('#tab-reward input[name=\'points\']').val()),
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#button-reward').attr('disabled', true);
			$('#reward').before('<div class="attention"><img src="view/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#button-reward').attr('disabled', false);
			$('.attention').remove();
		},
		success: function(html) {
			$('#reward').html(html);
								
			$('#tab-reward input[name=\'points\']').val('');
			$('#tab-reward input[name=\'description\']').val('');
		}
	});
}

function addBanIP(ip) {
	var id = ip.replace(/\./g, '-');
	
	$.ajax({
		url: 'index.php?route=sale/customer/addbanip&token=<?php echo $token; ?>',
		type: 'post',
		dataType: 'json',
		data: 'ip=' + encodeURIComponent(ip),
		beforeSend: function() {
			$('.success, .warning').remove();
			
			$('.box').before('<div class="attention"><img src="view/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');		
		},
		complete: function() {
			
		},			
		success: function(json) {
			$('.attention').remove();
			
			if (json['error']) {
				 $('.box').before('<div class="alert alert-error" style="display: none;">' + json['error'] + '</div>');
				
				$('.warning').fadeIn('slow');
			}
						
			if (json['success']) {
                $('.box').before('<div class="alert alert-success" style="display: none;">' + json['success'] + '</div>');
				
				$('.success').fadeIn('slow');
				
				$('#' + id).replaceWith('<a id="' + id + '" onclick="removeBanIP(\'' + ip + '\');"><?php echo $text_remove_ban_ip; ?></a>');
			}
		}
	});	
}

function removeBanIP(ip) {
	var id = ip.replace(/\./g, '-');
	
	$.ajax({
		url: 'index.php?route=sale/customer/removebanip&token=<?php echo $token; ?>',
		type: 'post',
		dataType: 'json',
		data: 'ip=' + encodeURIComponent(ip),
		beforeSend: function() {
			$('.success, .warning').remove();
			
			$('.box').before('<div class="attention"><img src="view/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');					
		},	
		success: function(json) {
			$('.attention').remove();
			
			if (json['error']) {
				 $('.box').before('<div class="alert alert-error" style="display: none;">' + json['error'] + '</div>');
				
				$('.warning').fadeIn('slow');
			}
			
			if (json['success']) {
				 $('.box').before('<div class="alert alert-success" style="display: none;">' + json['success'] + '</div>');
				
				$('.success').fadeIn('slow');
				
				$('#' + id).replaceWith('<a id="' + id + '" onclick="addBanIP(\'' + ip + '\');"><?php echo $text_add_ban_ip; ?></a>');
			}
		}
	});	
};
//--></script> 
<?php echo $footer; ?>