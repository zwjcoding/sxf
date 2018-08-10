package com.pos.cn.sxf.CommonUtil;

public enum RestCode {

         SUCCESS("0000","请求成功"),
         FAILE("4444","请求失败");


        private String code;

        private String msg;

        RestCode(String code,String msg){
            this.code = code;
            this.msg = msg;
        }

        public String getCode() {
            return code;
        }

        public void setCode(String code) {
            this.code = code;
        }

        public String getMsg() {
            return msg;
        }

        public void setMsg(String msg) {
            this.msg = msg;
        }
}
