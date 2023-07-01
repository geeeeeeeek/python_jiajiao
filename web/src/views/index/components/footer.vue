<template>
  <div class="footer-view">
    <div class="foot-link-box flex-view">
      <a class="foot-link" @click="handleSource">源码</a>
      <div class="link-split"></div>
      <a href="/admin" class="foot-link" target="_blank">后台管理</a>
      <div class="link-split"></div>
      <a class="foot-link" @click="handleSource">关于我们</a>
    </div>
    <div class="footer-infos">
<span>
<a style="color: rgb(174, 174, 174);">鲁ICP备12345678号</a>
</span>
      <span>&nbsp;&nbsp;鲁公网安备123456&nbsp;&nbsp;新出发零字第东123456号&nbsp;&nbsp;作者微信: lengqin1024</span>
    </div>
    <div class="address">2022-2023 © 梦想工作室 · All Rights Reserved</div>
  </div>
</template>

<script>
import {Modal} from "ant-design-vue";

export default {
  name: 'Footer',
  data () {
    return {}
  },
  methods: {
    handleSource(){
      Modal.info({
        title: '欢迎体验',
        content: '使用过程中遇到问题，可以咨询作者：lengqin1024（微信）',
        onOk() {},
      });
    }
  }
}
</script>

<style scoped lang="less">
.flex-view {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
}

.footer-view {
  max-width: 1108px;
  margin: 0 auto;
  padding: 24px 0 20px 54px;

  .foot-link-box {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    overflow: hidden;
    margin: 24px auto 16px;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
    .foot-link {
      margin: 0 16px;
      color: #2a4f88;
    }
    a {
      background-color: transparent;
      text-decoration: none;
      color: var(--mid-blue);
    }
  }

  .footer-infos {
    height: 16px;
    line-height: 16px;
    font-size: 12px;
    padding-left: 63px;
    color: #aeaeae;
    margin-top: 16px;
    text-align: center;
  }
  .address {
    text-align: center;
    height: 16px;
    line-height: 16px;
    font-size: 12px;
    color: #aeaeae;
    margin-top: 8px;
  }
}
</style>
