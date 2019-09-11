
; /* Start:"a:4:{s:4:"full";s:85:"/bitrix/components/bitrix/main.profile/templates/.default/script.min.js?1567599820634";s:6:"source";s:67:"/bitrix/components/bitrix/main.profile/templates/.default/script.js";s:3:"min";s:71:"/bitrix/components/bitrix/main.profile/templates/.default/script.min.js";s:3:"map";s:71:"/bitrix/components/bitrix/main.profile/templates/.default/script.map.js";}"*/
function removeElement(e,n){var o=new Array;for(var i=0;i<e.length;i++)if(e[i]!=n)o[o.length]=e[i];e=null;e=new Array;for(var i=0;i<o.length;i++)e[i]=o[i];o=null;return e}function SectionClick(e){var n=document.getElementById("user_div_"+e);if(n.className=="profile-block-hidden"){opened_sections[opened_sections.length]=e}else{opened_sections=removeElement(opened_sections,e)}document.cookie=cookie_prefix+"_user_profile_open="+opened_sections.join(",")+"; expires=Thu, 31 Dec 2020 23:59:59 GMT; path=/;";n.className=n.className=="profile-block-hidden"?"profile-block-shown":"profile-block-hidden"}
/* End */
;; /* /bitrix/components/bitrix/main.profile/templates/.default/script.min.js?1567599820634*/

//# sourceMappingURL=page_f248a210ff497d331669fae9dfdc8520.map.js