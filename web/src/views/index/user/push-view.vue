<template>
  <div class="content-list">
    <div class="list-title">推送设置</div>
    <div class="list-content">
      <div class="push-view">
        <div class="item flex-view">
          <div class="label">推送邮箱</div>
          <div class="right-box">
            <input type="text" class="input-dom" placeholder="请输入邮箱" v-model="push_email">
          </div>
        </div>
        <div class="item flex-view">
          <div class="label">接受邮件消息</div>
          <div class="right-box">
            <a-switch v-model:checked="push_switch"/>
          </div>
        </div>
        <button class="save mg" @click="handleSave()">保存</button>
      </div>
    </div>
  </div>
</template>

<script setup>
import {message} from "ant-design-vue";
import {detailApi, updateUserInfoApi} from '/@/api/index/user'
import {useUserStore} from "/@/store";

const router = useRouter();
const userStore = useUserStore();

let push_email = ref('')
let push_switch = ref(false)

onMounted(()=>{
  getUserInfo()

})

const getUserInfo =()=> {
  let userId = userStore.user_id

  detailApi({id: userId}).then(res => {
    if (res.data) {
      push_email.value = res.data.push_email
      if(res.data.push_switch){
        push_switch.value = true
      }
    }
  }).catch(err => {
    console.log(err)
  })
}

const handleSave =()=> {
  const reg = /^[a-zA-Z0-9][a-zA-Z0-9_]+\@[a-zA-Z0-9]+\.[a-zA-Z]{2,5}(\.[a-zA-Z]{2,5})*$/i

  if (!push_email.value.match(reg)) {
    message.warn('请输入正确的邮箱格式')
    return
  }

  let userId = userStore.user_id
  const formData = new FormData()
  if (push_email.value) {
    formData.append('push_email', push_email.value)
  }
  formData.append('push_switch', push_switch.value? 'true':'false')
  updateUserInfoApi({
    id:userId
  },formData).then(res => {
    getUserInfo()
    message.success('保存成功')
  }).catch(err => {
    console.log(err)
  })
}

</script>
<style scoped lang="less">
progress {
  vertical-align: baseline;
}

.flex-view {
  display: flex;
}

input, textarea {
  outline: none;
  border-style: none;
}

button {
  padding: 0;
}

.content-list {
  flex: 1;

  .list-title {
    color: #152844;
    font-weight: 600;
    font-size: 18px;
    //line-height: 24px;
    height: 48px;
    margin-bottom: 4px;
    border-bottom: 1px solid #cedce4;
  }
}

.push-view {
  .item {
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    margin: 24px 0;

    .label {
      width: 100px;
      color: #152844;
      font-weight: 600;
      font-size: 14px;
    }

    .input-dom {
      background: #f8fafb;
      border-radius: 4px;
      width: 400px;
      height: 40px;
      line-height: 40px;
      font-size: 14px;
      color: #152844;
      padding: 0 12px;
    }
  }

  .mg {
    margin-left: 100px;
  }

  .save {
    cursor: pointer;
    background: #4684e2;
    border-radius: 32px;
    width: 96px;
    height: 32px;
    line-height: 32px;
    font-size: 14px;
    color: #fff;
    border: none;
    outline: none;
  }
}

.switch-view {
  position: relative;
  background: #a1adc5;
  border-radius: 32px;
  width: 48px;
  height: 28px;
  cursor: pointer;

  .circle {
    position: absolute;
    margin-left: 4px;
    top: 4px;
    width: 20px;
    height: 20px;
    background: #fff;
    border-radius: 50%;
  }

  .selected {
    right: 4px;
  }
}

.selected {
  background: #58b251;
}

</style>
