(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/user-info/userinfo"],{"0787":function(e,t,n){"use strict";n.d(t,"b",(function(){return a})),n.d(t,"c",(function(){return u})),n.d(t,"a",(function(){return r}));var r={wPicker:function(){return Promise.all([n.e("common/vendor"),n.e("components/w-picker/w-picker")]).then(n.bind(null,"b7aa"))}},a=function(){var e=this,t=e.$createElement;e._self._c},u=[]},"07a1":function(e,t,n){"use strict";n.r(t);var r=n("3c3d"),a=n.n(r);for(var u in r)"default"!==u&&function(e){n.d(t,e,(function(){return r[e]}))}(u);t["default"]=a.a},"351e":function(e,t,n){},"3c3d":function(e,t,n){"use strict";(function(e){Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0;var r=a(n("a34a"));function a(e){return e&&e.__esModule?e:{default:e}}function u(e,t,n,r,a,u,i){try{var o=e[u](i),s=o.value}catch(c){return void n(c)}o.done?t(s):Promise.resolve(s).then(r,a)}function i(e){return function(){var t=this,n=arguments;return new Promise((function(r,a){var i=e.apply(t,n);function o(e){u(i,r,a,o,s,"next",e)}function s(e){u(i,r,a,o,s,"throw",e)}o(void 0)}))}}var o={data:function(){return{ruleForm:{},tableName:"",sexTypesOptions:[],sexTypesIndex:0,banjiTypesOptions:[],banjiTypesIndex:0}},onLoad:function(){var t=this;return i(r.default.mark((function n(){var a,u,i,o,s,c;return r.default.wrap((function(n){while(1)switch(n.prev=n.next){case 0:return a=e.getStorageSync("nowTable"),n.next=3,t.$api.session(a);case 3:if(u=n.sent,t.ruleForm=u.data,t.tableName=a,"yonghu"!=t.tableName){n.next=17;break}return i={page:1,limit:100,dicCode:"sex_types"},n.next=10,t.$api.page("dictionary",i);case 10:return o=n.sent,t.sexTypesOptions=o.data.list,s={page:1,limit:100,dicCode:"banji_types"},n.next=15,t.$api.page("dictionary",s);case 15:c=n.sent,t.banjiTypesOptions=c.data.list;case 17:case"end":return n.stop()}}),n)})))()},methods:{yonghusexTypesChange:function(e){this.sexTypesIndex=e.target.value,this.ruleForm.sexValue=this.sexTypesOptions[this.sexTypesIndex].indexName,this.ruleForm.sexTypes=this.sexTypesOptions[this.sexTypesIndex].codeIndex},yonghubanjiTypesChange:function(e){this.banjiTypesIndex=e.target.value,this.ruleForm.banjiValue=this.banjiTypesOptions[this.banjiTypesIndex].indexName,this.ruleForm.banjiTypes=this.banjiTypesOptions[this.banjiTypesIndex].codeIndex},createTimeConfirm:function(e){console.log(e),this.ruleForm.createTime=e.result,this.$forceUpdate()},getUUID:function(){return(new Date).getTime()},logout:function(){e.setStorageSync("token",""),this.$utils.jump("../login/login")},update:function(){var t=this;return i(r.default.mark((function n(){var a;return r.default.wrap((function(n){while(1)switch(n.prev=n.next){case 0:if(t.ruleForm.username||"yonghu"!=t.tableName){n.next=3;break}return t.$utils.msg("账户不能为空"),n.abrupt("return");case 3:if(t.ruleForm.yonghuName||"yonghu"!=t.tableName){n.next=6;break}return t.$utils.msg("学生姓名不能为空"),n.abrupt("return");case 6:if(t.ruleForm.yonghuPhoto||"yonghu"!=t.tableName){n.next=9;break}return t.$utils.msg("头像不能为空"),n.abrupt("return");case 9:if("yonghu"!=t.tableName||!t.ruleForm.yonghuPhone||t.$validate.isMobile(t.ruleForm.yonghuPhone)){n.next=12;break}return t.$utils.msg("联系方式应输入正确格式"),n.abrupt("return");case 12:if("yonghu"!=t.tableName||!t.ruleForm.yonghuIdNumber||t.$validate.checkIdCard(t.ruleForm.yonghuIdNumber)){n.next=15;break}return t.$utils.msg("学生身份证号应输入正确格式"),n.abrupt("return");case 15:if("yonghu"!=t.tableName||!t.ruleForm.yonghuEmail||t.$validate.isEmail(t.ruleForm.yonghuEmail)){n.next=18;break}return t.$utils.msg("邮箱应输入正确格式"),n.abrupt("return");case 18:return a=e.getStorageSync("nowTable"),n.next=21,t.$api.update(a,t.ruleForm);case 21:t.$utils.msgBack("修改成功");case 23:case"end":return n.stop()}}),n)})))()},yonghuPhotoTap:function(){var e=this;this.$api.upload((function(t){e.ruleForm.yonghuPhoto=e.$base.url+"upload/"+t.file,e.$forceUpdate()}))},toggleTab:function(e){this.$refs[e].show()}}};t.default=o}).call(this,n("543d")["default"])},"536d":function(e,t,n){"use strict";(function(e){n("48e8");r(n("66fd"));var t=r(n("cbc1"));function r(e){return e&&e.__esModule?e:{default:e}}wx.__webpack_require_UNI_MP_PLUGIN__=n,e(t.default)}).call(this,n("543d")["createPage"])},"8bf0":function(e,t,n){"use strict";var r=n("351e"),a=n.n(r);a.a},cbc1:function(e,t,n){"use strict";n.r(t);var r=n("0787"),a=n("07a1");for(var u in a)"default"!==u&&function(e){n.d(t,e,(function(){return a[e]}))}(u);n("8bf0");var i,o=n("f0c5"),s=Object(o["a"])(a["default"],r["b"],r["c"],!1,null,"475466e4",null,!1,r["a"],i);t["default"]=s.exports}},[["536d","common/runtime","common/vendor"]]]);