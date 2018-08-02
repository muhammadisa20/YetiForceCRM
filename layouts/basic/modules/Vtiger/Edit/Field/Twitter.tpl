{*<!-- {[The file is published on the basis of YetiForce Public License 3.0 that can be found in the following directory: licenses/LicenseEN.txt or yetiforce.com]} -->*}
{strip}
	{assign var="TWITTER" value=$FIELD_MODEL->get('fieldvalue')}
	<div class="tpl-Edit-Field-Twitter input-group">
		<div class=" input-group-append">
		<span class="input-group-text" title="Twitter">@</span>
		</div>
		<input name="{$FIELD_MODEL->getFieldName()}" value="{\App\Purifier::encodeHtml($TWITTER)}" id="{$MODULE}_editView_fieldName_{$FIELD_MODEL->getName()}" class="form-control"
		   data-validation-engine="validate[{if $FIELD_MODEL->isMandatory() eq true} required,{/if}{if $FIELD_MODEL->get('maximumlength')}maxSize[16],{/if}funcCall[Vtiger_Base_Validator_Js.invokeValidation]]"
		   data-advanced-verification="0" data-fieldinfo='{$FIELD_INFO}'
		   {if !empty($SPECIAL_VALIDATOR)}data-validator={\App\Json::encode($SPECIAL_VALIDATOR)}{/if} {if $FIELD_MODEL->isEditableReadOnly()}readonly="readonly"{/if}
		   title="{\App\Language::translate($FIELD_MODEL->getFieldLabel(), $MODULE)}">
	</div>
{/strip}