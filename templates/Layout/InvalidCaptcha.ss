<div class="unit horizontal-center layout on-1 columns" style="width:100%;height:850px;background:url('themes/looloochoo/images/bg.png') repeat-x;">
	<div class="unit horizontal-center layout on-1 columns" style="width:960px;height:850px;background:url('themes/looloochoo/images/bg.png') repeat-x;">
	<div class="unit horizontal-center layout on-1 columns header-2">
		
		<div class="top-line">
		   
		</div>
		
		<% include Header %>
		
	</div>
	
	<div class="unit horizontal-center layout on-1 columns main-content-2">
		<div class="left-side-area">
			<div class="menu-left">
				<div class="menu-left-icon" style="background:url('$Parent.Icon.URL') no-repeat;">
				</div>	
				<div class="menu-left-text">
						$Parent.Title
				</div>
				<div class="link-left-menu">
					<ul>
						<% control Menu(2) %>
						      <li class="$LinkingMode">> <a href="$Link" title="Go to the &quot;{$Title}&quot; page">$MenuTitle</a></li>
						<% end_control %>
					</ul>
				</div>
			</div>
		</div>
		
		<div class="center-side-area">
			<div class="main-image-content">
				<img src="$HeadImage.URL" alt="About Us">
			</div>
			<div class="content-title">
				$TitleContent
			</div>
			<div class="the-content">
				<p>
<% if InvalidCaptcha %>

Your Captcha Is Invalid, Please Try Again<br /><br />

<a href="http://looloochoo.com/contact/general-information/">Back</a>

<% else %>

<% if Success %>
						$SubmitText
					<% else %>
						$Content <br /><br />
					<script type="text/javascript" src="http://looloochoo.com/sapphire/thirdparty/prototype/prototype.js?m=1328047221"></script>
					<script type="text/javascript" src="http://looloochoo.com/sapphire/thirdparty/behaviour/behaviour.js?m=1328047221"></script>
					<script type="text/javascript" src="http://looloochoo.com/sapphire/javascript/prototype_improvements.js?m=1328047221"></script>
					<script type="text/javascript" src="http://looloochoo.com/sapphire/javascript/i18n.js?m=1328047221"></script>
					<script type="text/javascript" src="http://looloochoo.com/sapphire/javascript/lang/en_US.js?m=1328047221"></script>
					<script type="text/javascript" src="http://looloochoo.com/sapphire/javascript/Validator.js?m=1328047221"></script>
					<script type="text/javascript">//<![CDATA[
						Behaviour.register({
							"#contact_form": {
								validateEmailField: function(fieldName) {
									var el = _CURRENT_FORM.elements[fieldName];
									if(!el || !el.value) return true;

								 	if(el.value.match(/^[a-z0-9!#$%&'*+\/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+\/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$/i)) {
								 		return true;
								 	} else {
										validationError(el, "Please enter an email address.","validation");
								 		return false;
								 	} 	
								}
							}
						});

						//]]></script><script type="text/javascript">//<![CDATA[
						Behaviour.register({
							'#contact_form': {
								validate : function(fromAnOnBlur) {
									initialiseForm(this, fromAnOnBlur);
									if(typeof fromAnOnBlur != 'undefined'){
							if(fromAnOnBlur.name == 'email')
								$('contact_form').validateEmailField('email');
						}else{
							$('contact_form').validateEmailField('email');
						}
												if(typeof fromAnOnBlur != 'undefined'){

													if(fromAnOnBlur.name == 'name')

														require(fromAnOnBlur);

												}else{
													require('name');
												}						
												if(typeof fromAnOnBlur != 'undefined'){

													if(fromAnOnBlur.name == 'email')

														require(fromAnOnBlur);

												}else{
													require('email');
												}						
												if(typeof fromAnOnBlur != 'undefined'){

													if(fromAnOnBlur.name == 'message')

														require(fromAnOnBlur);

												}else{
													require('message');
												}

									var error = hasHadFormError();
									if(!error && fromAnOnBlur) clearErrorMessage(fromAnOnBlur);
									if(error && !fromAnOnBlur) focusOnFirstErroredField();

									return !error;
								},
								onsubmit : function() {
									if(typeof this.bypassValidation == 'undefined' || !this.bypassValidation) return this.validate();
								}
							},
							'#contact_form input' : {
								initialise: function() {
									if(!this.old_onblur) this.old_onblur = function() { return true; } 
									if(!this.old_onfocus) this.old_onfocus = function() { return true; } 
								},
								onblur : function() {
									if(this.old_onblur()) {
										// Don't perform instant validation for CalendarDateField fields; it creates usability wierdness.
										if(this.parentNode.className.indexOf('calendardate') == -1 || this.value) {
											return $('contact_form').validate(this);
										} else {
											return true;
										}
									}
								}
							},
							'#contact_form textarea' : {
								initialise: function() {
									if(!this.old_onblur) this.old_onblur = function() { return true; } 
									if(!this.old_onfocus) this.old_onfocus = function() { return true; } 
								},
								onblur : function() {
									if(this.old_onblur()) {
										return $('contact_form').validate(this);
									}
								}
							},
							'#contact_form select' : {
								initialise: function() {
									if(!this.old_onblur) this.old_onblur = function() { return true; } 
								},
								onblur : function() {
									if(this.old_onblur()) {
										return $('contact_form').validate(this); 
									}
								}
							}
						});

						//]]>
					</script>
					
					
					
					<form action="/contact/general-information/SendContactForm" method='post' id='contact_form'>  	
					<div style="width:466px;float:left;">
						<div style="width:466px;float:left;margin-bottom:10px;">	
							<div style="width:100px;float:left;">
							I Want To 
							</div> 
							<div style="width:366px;float:left;">
							<div>
								<div style="width:183px;float:left;">
									<input name="purpose" type="radio" value="Give Feedback"  class="radio" checked /> 
									<label >Give Feedback</label>
								</div>	
								<div style="width:183px;float:left;">
									<input name="purpose" type="radio" value="Do A Collaboration"  class="radio" /> 
									<label>Do A Collaboration</label>
								</div>	
							</div>  
							</div>
						</div>	
						
						<div style="width:466px;float:left;margin-bottom:10px;">	
							<div style="width:100px;float:left;">
							Name (*)
							</div> 
							<div style="width:366px;float:left;">
							<div id='name_error' class='error' style="display:none;"> I don't talk to strangers.</div>  
							<div>
								<input type='text' name='name' id='name' style="width:360px;">	
							</div>  
							</div>
						</div>
						
						<div style="width:466px;float:left;margin-bottom:10px;">	
							<div style="width:233px;float:left;margin-bottom:10px;">	
								<div style="width:100px;float:left;">
								Occupation 
								</div> 
								<div style="width:133px;float:left;">
								<div>
									<select name="occupation" style="width:127px;">
										<option value=" " selected="selected">Choose One</option>
										<option value="Accounting/Finance">Accounting/Finance</option>
										<option value="Administrative">Administrative</option>
										<option value="Advertising">Advertising</option>
										<option value="Artist/Actor/Creative/Performer">Artist/Actor/Creative/Performer</option>
										<option value="Professor">Professor</option>
										<option value="Programmer">Programmer</option>
									</select>
								</div>  
								</div>
							</div>
							
							<div style="width:223px;float:left;margin-bottom:10px;">	
								<div style="width:60px;float:left;padding-right:10px;">
									<div style="float:left;margin-left:20px;">Other</div> 
								</div>
								<div style="width:153px;float:left;"> 
								<div>
									<input type='text' name='other' id='other' style="width:157px;">	
								</div>  
								</div>
							</div>
						</div>
						
						<div style="width:466px;float:left;margin-bottom:10px;">	
							<div style="width:233px;float:left;margin-bottom:10px;">	
								<div style="width:100px;float:left;">
								Country 
								</div> 
								<div style="width:133px;float:left;">
								<div>
									<select name="country" style="width:127px;">
										<option value=" " selected="selected">Choose One</option>
										<option value="Afghanistan">Afghanistan</option> 
										<option value="Albania">Albania</option> 
										<option value="Algeria">Algeria</option> 
										<option value="American Samoa">American Samoa</option> 
										<option value="Andorra">Andorra</option> 
										<option value="Angola">Angola</option> 
										<option value="Anguilla">Anguilla</option> 
										<option value="Antarctica">Antarctica</option> 
										<option value="Antigua and Barbuda">Antigua and Barbuda</option> 
										<option value="Argentina">Argentina</option> 
										<option value="Armenia">Armenia</option> 
										<option value="Aruba">Aruba</option> 
										<option value="Australia">Australia</option> 
										<option value="Austria">Austria</option> 
										<option value="Azerbaijan">Azerbaijan</option> 
										<option value="Bahamas">Bahamas</option> 
										<option value="Bahrain">Bahrain</option> 
										<option value="Bangladesh">Bangladesh</option> 
										<option value="Barbados">Barbados</option> 
										<option value="Belarus">Belarus</option> 
										<option value="Belgium">Belgium</option> 
										<option value="Belize">Belize</option> 
										<option value="Benin">Benin</option> 
										<option value="Bermuda">Bermuda</option> 
										<option value="Bhutan">Bhutan</option> 
										<option value="Bolivia">Bolivia</option> 
										<option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option> 
										<option value="Botswana">Botswana</option> 
										<option value="Bouvet Island">Bouvet Island</option> 
										<option value="Brazil">Brazil</option> 
										<option value="British Indian Ocean Territory">British Indian Ocean Territory</option> 
										<option value="Brunei Darussalam">Brunei Darussalam</option> 
										<option value="Bulgaria">Bulgaria</option> 
										<option value="Burkina Faso">Burkina Faso</option> 
										<option value="Burundi">Burundi</option> 
										<option value="Cambodia">Cambodia</option> 
										<option value="Cameroon">Cameroon</option> 
										<option value="Canada">Canada</option> 
										<option value="Cape Verde">Cape Verde</option> 
										<option value="Cayman Islands">Cayman Islands</option> 
										<option value="Central African Republic">Central African Republic</option> 
										<option value="Chad">Chad</option> 
										<option value="Chile">Chile</option> 
										<option value="China">China</option> 
										<option value="Christmas Island">Christmas Island</option> 
										<option value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option> 
										<option value="Colombia">Colombia</option> 
										<option value="Comoros">Comoros</option> 
										<option value="Congo">Congo</option> 
										<option value="Congo, The Democratic Republic of The">Congo, The Democratic Republic of The</option> 
										<option value="Cook Islands">Cook Islands</option> 
										<option value="Costa Rica">Costa Rica</option> 
										<option value="Cote D"ivoire">Cote D"ivoire</option> 
										<option value="Croatia">Croatia</option> 
										<option value="Cuba">Cuba</option> 
										<option value="Cyprus">Cyprus</option> 
										<option value="Czech Republic">Czech Republic</option> 
										<option value="Denmark">Denmark</option> 
										<option value="Djibouti">Djibouti</option> 
										<option value="Dominica">Dominica</option> 
										<option value="Dominican Republic">Dominican Republic</option> 
										<option value="Ecuador">Ecuador</option> 
										<option value="Egypt">Egypt</option> 
										<option value="El Salvador">El Salvador</option> 
										<option value="Equatorial Guinea">Equatorial Guinea</option> 
										<option value="Eritrea">Eritrea</option> 
										<option value="Estonia">Estonia</option> 
										<option value="Ethiopia">Ethiopia</option> 
										<option value="Falkland Islands (Malvinas)">Falkland Islands (Malvinas)</option> 
										<option value="Faroe Islands">Faroe Islands</option> 
										<option value="Fiji">Fiji</option> 
										<option value="Finland">Finland</option> 
										<option value="France">France</option> 
										<option value="French Guiana">French Guiana</option> 
										<option value="French Polynesia">French Polynesia</option> 
										<option value="French Southern Territories">French Southern Territories</option> 
										<option value="Gabon">Gabon</option> 
										<option value="Gambia">Gambia</option> 
										<option value="Georgia">Georgia</option> 
										<option value="Germany">Germany</option> 
										<option value="Ghana">Ghana</option> 
										<option value="Gibraltar">Gibraltar</option> 
										<option value="Greece">Greece</option> 
										<option value="Greenland">Greenland</option> 
										<option value="Grenada">Grenada</option> 
										<option value="Guadeloupe">Guadeloupe</option> 
										<option value="Guam">Guam</option> 
										<option value="Guatemala">Guatemala</option> 
										<option value="Guinea">Guinea</option> 
										<option value="Guinea-bissau">Guinea-bissau</option> 
										<option value="Guyana">Guyana</option> 
										<option value="Haiti">Haiti</option> 
										<option value="Heard Island and Mcdonald Islands">Heard Island and Mcdonald Islands</option> 
										<option value="Holy See (Vatican City State)">Holy See (Vatican City State)</option> 
										<option value="Honduras">Honduras</option> 
										<option value="Hong Kong">Hong Kong</option> 
										<option value="Hungary">Hungary</option> 
										<option value="Iceland">Iceland</option> 
										<option value="India">India</option> 
										<option value="Indonesia">Indonesia</option> 
										<option value="Iran, Islamic Republic of">Iran, Islamic Republic of</option> 
										<option value="Iraq">Iraq</option> 
										<option value="Ireland">Ireland</option> 
										<option value="Israel">Israel</option> 
										<option value="Italy">Italy</option> 
										<option value="Jamaica">Jamaica</option> 
										<option value="Japan">Japan</option> 
										<option value="Jordan">Jordan</option> 
										<option value="Kazakhstan">Kazakhstan</option> 
										<option value="Kenya">Kenya</option> 
										<option value="Kiribati">Kiribati</option> 
										<option value="Korea, Democratic People"s Republic of">Korea, Democratic People"s Republic of</option> 
										<option value="Korea, Republic of">Korea, Republic of</option> 
										<option value="Kuwait">Kuwait</option> 
										<option value="Kyrgyzstan">Kyrgyzstan</option> 
										<option value="Lao People"s Democratic Republic">Lao People"s Democratic Republic</option> 
										<option value="Latvia">Latvia</option> 
										<option value="Lebanon">Lebanon</option> 
										<option value="Lesotho">Lesotho</option> 
										<option value="Liberia">Liberia</option> 
										<option value="Libyan Arab Jamahiriya">Libyan Arab Jamahiriya</option> 
										<option value="Liechtenstein">Liechtenstein</option> 
										<option value="Lithuania">Lithuania</option> 
										<option value="Luxembourg">Luxembourg</option> 
										<option value="Macao">Macao</option> 
										<option value="Macedonia, The Former Yugoslav Republic of">Macedonia, The Former Yugoslav Republic of</option> 
										<option value="Madagascar">Madagascar</option> 
										<option value="Malawi">Malawi</option> 
										<option value="Malaysia">Malaysia</option> 
										<option value="Maldives">Maldives</option> 
										<option value="Mali">Mali</option> 
										<option value="Malta">Malta</option> 
										<option value="Marshall Islands">Marshall Islands</option> 
										<option value="Martinique">Martinique</option> 
										<option value="Mauritania">Mauritania</option> 
										<option value="Mauritius">Mauritius</option> 
										<option value="Mayotte">Mayotte</option> 
										<option value="Mexico">Mexico</option> 
										<option value="Micronesia, Federated States of">Micronesia, Federated States of</option> 
										<option value="Moldova, Republic of">Moldova, Republic of</option> 
										<option value="Monaco">Monaco</option> 
										<option value="Mongolia">Mongolia</option> 
										<option value="Montserrat">Montserrat</option> 
										<option value="Morocco">Morocco</option> 
										<option value="Mozambique">Mozambique</option> 
										<option value="Myanmar">Myanmar</option> 
										<option value="Namibia">Namibia</option> 
										<option value="Nauru">Nauru</option> 
										<option value="Nepal">Nepal</option> 
										<option value="Netherlands">Netherlands</option> 
										<option value="Netherlands Antilles">Netherlands Antilles</option> 
										<option value="New Caledonia">New Caledonia</option> 
										<option value="New Zealand">New Zealand</option> 
										<option value="Nicaragua">Nicaragua</option> 
										<option value="Niger">Niger</option> 
										<option value="Nigeria">Nigeria</option> 
										<option value="Niue">Niue</option> 
										<option value="Norfolk Island">Norfolk Island</option> 
										<option value="Northern Mariana Islands">Northern Mariana Islands</option> 
										<option value="Norway">Norway</option> 
										<option value="Oman">Oman</option> 
										<option value="Pakistan">Pakistan</option> 
										<option value="Palau">Palau</option> 
										<option value="Palestinian Territory, Occupied">Palestinian Territory, Occupied</option> 
										<option value="Panama">Panama</option> 
										<option value="Papua New Guinea">Papua New Guinea</option> 
										<option value="Paraguay">Paraguay</option> 
										<option value="Peru">Peru</option> 
										<option value="Philippines">Philippines</option> 
										<option value="Pitcairn">Pitcairn</option> 
										<option value="Poland">Poland</option> 
										<option value="Portugal">Portugal</option> 
										<option value="Puerto Rico">Puerto Rico</option> 
										<option value="Qatar">Qatar</option> 
										<option value="Reunion">Reunion</option> 
										<option value="Romania">Romania</option> 
										<option value="Russian Federation">Russian Federation</option> 
										<option value="Rwanda">Rwanda</option> 
										<option value="Saint Helena">Saint Helena</option> 
										<option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option> 
										<option value="Saint Lucia">Saint Lucia</option> 
										<option value="Saint Pierre and Miquelon">Saint Pierre and Miquelon</option> 
										<option value="Saint Vincent and The Grenadines">Saint Vincent and The Grenadines</option> 
										<option value="Samoa">Samoa</option> 
										<option value="San Marino">San Marino</option> 
										<option value="Sao Tome and Principe">Sao Tome and Principe</option> 
										<option value="Saudi Arabia">Saudi Arabia</option> 
										<option value="Senegal">Senegal</option> 
										<option value="Serbia and Montenegro">Serbia and Montenegro</option> 
										<option value="Seychelles">Seychelles</option> 
										<option value="Sierra Leone">Sierra Leone</option> 
										<option value="Singapore">Singapore</option> 
										<option value="Slovakia">Slovakia</option> 
										<option value="Slovenia">Slovenia</option> 
										<option value="Solomon Islands">Solomon Islands</option> 
										<option value="Somalia">Somalia</option> 
										<option value="South Africa">South Africa</option> 
										<option value="South Georgia and The South Sandwich Islands">South Georgia and The South Sandwich Islands</option> 
										<option value="Spain">Spain</option> 
										<option value="Sri Lanka">Sri Lanka</option> 
										<option value="Sudan">Sudan</option> 
										<option value="Suriname">Suriname</option> 
										<option value="Svalbard and Jan Mayen">Svalbard and Jan Mayen</option> 
										<option value="Swaziland">Swaziland</option> 
										<option value="Sweden">Sweden</option> 
										<option value="Switzerland">Switzerland</option> 
										<option value="Syrian Arab Republic">Syrian Arab Republic</option> 
										<option value="Taiwan, Province of China">Taiwan, Province of China</option> 
										<option value="Tajikistan">Tajikistan</option> 
										<option value="Tanzania, United Republic of">Tanzania, United Republic of</option> 
										<option value="Thailand">Thailand</option> 
										<option value="Timor-leste">Timor-leste</option> 
										<option value="Togo">Togo</option> 
										<option value="Tokelau">Tokelau</option> 
										<option value="Tonga">Tonga</option> 
										<option value="Trinidad and Tobago">Trinidad and Tobago</option> 
										<option value="Tunisia">Tunisia</option> 
										<option value="Turkey">Turkey</option> 
										<option value="Turkmenistan">Turkmenistan</option> 
										<option value="Turks and Caicos Islands">Turks and Caicos Islands</option> 
										<option value="Tuvalu">Tuvalu</option> 
										<option value="Uganda">Uganda</option> 
										<option value="Ukraine">Ukraine</option> 
										<option value="United Arab Emirates">United Arab Emirates</option> 
										<option value="United Kingdom">United Kingdom</option> 
										<option value="United States">United States</option> 
										<option value="United States Minor Outlying Islands">United States Minor Outlying Islands</option> 
										<option value="Uruguay">Uruguay</option> 
										<option value="Uzbekistan">Uzbekistan</option> 
										<option value="Vanuatu">Vanuatu</option> 
										<option value="Venezuela">Venezuela</option> 
										<option value="Viet Nam">Viet Nam</option> 
										<option value="Virgin Islands, British">Virgin Islands, British</option> 
										<option value="Virgin Islands, U.S.">Virgin Islands, U.S.</option> 
										<option value="Wallis and Futuna">Wallis and Futuna</option> 
										<option value="Western Sahara">Western Sahara</option> 
										<option value="Yemen">Yemen</option> 
										<option value="Zambia">Zambia</option> 
										<option value="Zimbabwe">Zimbabwe</option>
									</select>
								</div>  
								</div>
							</div>	
							<div style="width:223px;float:left;margin-bottom:10px;">	
								<div style="width:60px;float:left;padding-right:10px;">
									<div style="float:left;margin-left:20px;">City</div> 
								</div> 
								<div style="width:153px;float:left;"> 
								<div>
									<input type='text' name='city' id='city' style="width:157px;">	
								</div>  
								</div>
							</div>
						</div>
						
						<div style="width:466px;float:left;margin-bottom:10px;">	
							<div style="width:100px;float:left;">
							Email (*)
							</div> 
							<div style="width:366px;float:left;">
							<div id='email_error' class='error' style="display: none;"> You don't want me to answer?</div>  
							<div>
								<input type='text' name='email' id='email' style="width:360px;">	
							</div>  
							</div>
						</div>
						
						<div style="width:466px;float:left;margin-bottom:10px;">	
							<div style="width:100px;float:left;">
							Message (*)
							</div> 
							<div style="width:366px;float:left;">
							
							<div>
								<textarea type='text' name='message' id='message' style="width:360px;height:100px"></textarea>	
							</div>  
							</div>
						</div>
						
						
						<input class="hidden" type="hidden" id="Form_ContactForm_SecurityID" name="SecurityID" value="9dc593625f6c0a05cc0bb7e5f6a11f79ee9e8f7c" />
							
					</div>	
<div style="float:left;">					
$GetCaptcha
</div>	
<div style="float:right;margin-top:30px;">
<input type='image' src='themes/looloochoo/images/button-submit.png' width='78' height='35' id='send_message' value='Send The Message'>
</div>  


					</form>
					
					<% end_if %>

<% end_if %>
					
				</p>
			</div>
		</div>
		
		<div class="right-side-area">
			<div class="featured-2">
				<div class="featured-2-icon" style="background:url('$IconFeatured.URL') no-repeat;">
				</div>	
				<div class="featured-2-text">
					$TitleFeatured
				</div>
				<div class="featured-title">
					<% if TargetUrlFeatured %>
						<a href="$TargetUrlFeatured">$TitleContentFeatured</a>
					<% else %>
						$TitleContentFeatured
					<% end_if %>	
				</div>
				<div class="featured-content">
						$ContentFeatured
				</div>
			</div>
		</div>
	</div>

	<% include Footer %>
	
	</div>
</div>