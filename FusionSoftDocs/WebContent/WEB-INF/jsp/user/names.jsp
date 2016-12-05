<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<div class="fb-item fb-50-item-column" id="item4">
        <div class="fb-grouplabel">
          <label id="item4_label_0" style="display: inline;">First Name</label>
        </div>
        <div class="fb-input-box">
          <form:input name="firstname" id="item4_text_1" required="required" type="text" maxlength="254"
          placeholder="First Name" data-hint="" autocomplete="on" path="firstname"/>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item5" style="opacity: 1;">
        <div class="fb-grouplabel">
          <label id="item5_label_0" style="display: inline;">Middle Name</label>
        </div>
        <div class="fb-input-box">
          <form:input name="middlename" id="item5_text_1" type="text" maxlength="254"
          placeholder="middlename" data-hint="" autocomplete="off" path="middlename" />
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item6">
        <div class="fb-grouplabel">
          <label id="item6_label_0" style="display: inline;">Last Name</label>
        </div>
        <div class="fb-input-box">
          <form:input name="lastname" id="item6_text_1" required="required" type="text" maxlength="254"
          placeholder="Last Name" data-hint="" autocomplete="off" path="lastname"/>
        </div>
      </div>
      <div class="fb-item fb-50-item-column" id="item7">
        <div class="fb-grouplabel">
          <label id="item7_label_0" style="display: inline;">Maiden Name(If Applicable)</label>
        </div>
        <div class="fb-input-box">
          <form:input name="maidenname" id="item7_text_1" type="text" maxlength="254"
          placeholder="Maiden Name" data-hint="" autocomplete="off" path="maidenname"/>
        </div>
      </div>
      <div class="fb-item fb-100-item-column" id="item8">
        <div class="fb-grouplabel">
          <label id="item8_label_0" style="display: inline;">Full Name(Exactly As In Passport)</label>
        </div>
        <div class="fb-input-box">
          <form:input name="fullname" id="item8_text_1" required="required" type="text" maxlength="254"
          placeholder="Full Name" data-hint="" autocomplete="off" path="fullname"/>
        </div>
      </div>