<template>
  <div class="content-list">
    <div class="list-title">家教入驻</div>
    <a-spin :spinning="loading" style="min-height: 200px;">
      <div class="list-content">
      <div class="edit-view">
        <div class="item flex-view">
          <div class="label">头像</div>
          <div class="right-box avatar-box flex-view">
            <img v-if="tData.form && tData.form.avatar" :src="tData.form.avatar" class="avatar">
            <img v-else :src="AvatarIcon" class="avatar">
            <div class="change-tips flex-view">
                <a-upload
                  name="file"
                  accept="image/*"
                  :multiple="false"
                  :before-upload="beforeUpload"
                >
                  <label>点击更换头像</label>
                </a-upload>
              <p class="tip">图片格式支持 GIF、PNG、JPEG，尺寸不小于 200 PX，小于 4 MB</p>
            </div>
          </div>
        </div>
        <div class="item flex-view">
          <div class="label">姓名</div>
          <div class="right-box">
            <input type="text" v-model="tData.form.title" placeholder="请输入姓名" maxlength="20" class="input-dom">
            <p class="tip">支持中英文，长度不能超过 20 个字符</p>
          </div>
        </div>
        <div class="item flex-view">
          <div class="label">性别</div>
          <div class="right-box">
            <input type="text" v-model="tData.form.sex" placeholder="请输入性别" maxlength="100" class="input-dom web-input">
          </div>
        </div>
        <div class="item flex-view">
          <div class="label">年龄</div>
          <div class="right-box">
            <input type="text" v-model="tData.form.age" placeholder="请输入年龄" maxlength="100" class="input-dom web-input">
          </div>
        </div>
        <div class="item flex-view">
          <div class="label">地区</div>
          <div class="right-box">
            <input type="text" v-model="tData.form.location" placeholder="请输入地区" maxlength="100" class="input-dom web-input">
          </div>
        </div>
        <div class="item flex-view">
          <div class="label">小时价格</div>
          <div class="right-box">
            <input type="text" v-model="tData.form.price" placeholder="请输入价格" maxlength="100" class="input-dom web-input">
          </div>
        </div>
        <div class="item flex-view">
          <div class="label">手机号</div>
          <div class="right-box">
            <input type="text" v-model="tData.form.mobile" placeholder="请输入邮箱" maxlength="100" class="input-dom web-input">
          </div>
        </div>
        <div class="item flex-view">
          <div class="label">科目</div>
          <div class="right-box">
            <a-select placeholder="请选择"
                      allowClear
                      :options="cData"
                      style="width: 200px;"
                      :field-names="{ label: 'title', value: 'id',}"
                      v-model:value="tData.form.classification">
            </a-select>
          </div>
        </div>
        <div class="item flex-view">
          <div class="label">个人简介</div>
          <div class="right-box">
          <textarea v-model="tData.form.description" placeholder="请输入简介" maxlength="200" class="intro">
          </textarea>
            <p class="tip">限制200字以内</p>
          </div>
        </div>
        <button class="save mg" @click="submit()">保存</button>
      </div>
    </div>
    </a-spin>
  </div>
</template>

<script setup>
import {message} from "ant-design-vue";
import {listUserThingApi, updateApi, createApi} from '/@/api/index/thing'
import {listApi as listClassificationApi} from '/@/api/admin/classification'
import {BASE_URL} from "/@/store/constants";
import {useUserStore} from "/@/store";
import AvatarIcon from '/@/assets/images/avatar.jpg'

const router = useRouter();
const userStore = useUserStore();

let loading = ref(false)
let tData = reactive({
  form:{
    avatar: undefined,
    avatarFile: undefined,
    title: undefined,
    age: undefined,
    sex: undefined,
    price: undefined,
    mobile: undefined,
    location: undefined,
    description: undefined,
    classification: undefined,
  }
})

let cData = ref([])

onMounted(()=>{
  getCDataList()
  getUserThing()
})

const beforeUpload =(file)=> {
  // 改文件名
  const fileName = new Date().getTime().toString() + '.' + file.type.substring(6)
  const copyFile = new File([file], fileName)
  console.log(copyFile)
  tData.form.avatarFile = copyFile
  return false
}

const getCDataList = () => {
  listClassificationApi({}).then(res => {
    cData.value = res.data
  })
}

const getUserThing =()=> {
  loading.value = true
  let userId = userStore.user_id
  listUserThingApi({user: userId}).then(res => {
    console.log(res)
    if(res.data && res.data.length > 0){
      tData.form = res.data[0]
    }
    if (tData.form.cover) {
      tData.form.avatar = BASE_URL  + tData.form.cover
    }
    loading.value = false
  }).catch(err => {
    console.log(err)
    loading.value = false
  })
}
const submit =()=> {
  let formData = new FormData()
  let userId = userStore.user_id
  if (tData.form.avatarFile) {
    formData.append('cover', tData.form.avatarFile)
  }
  if (tData.form.title) {
    formData.append('title', tData.form.title)
  }else {
    message.warn("姓名不能为空")
    return
  }
  if (tData.form.classification) {
    formData.append('classification', tData.form.classification)
  }
  if (tData.form.sex) {
    formData.append('sex', tData.form.sex)
  }else {
    message.warn("性别不能为空")
    return
  }

  if (tData.form.age) {
    formData.append('age', tData.form.age)
  }else {
    message.warn("年龄不能为空")
    return
  }
  if (tData.form.mobile) {
    formData.append('mobile', tData.form.mobile)
  }else {
    message.warn("手机号不能为空")
    return
  }
  if (tData.form.location) {
    formData.append('location', tData.form.location)
  }else {
    message.warn("地区不能为空")
    return
  }
  if (tData.form.price) {
    formData.append('price', tData.form.price)
  }else {
    message.warn("价格不能为空")
    return
  }
  if (tData.form.description) {
    formData.append('description', tData.form.description)
  }else {
    message.warn("简介不能为空")
    return
  }
  formData.append('user', userId)
  formData.append('status', '1')

  if(tData.form.id) {
    updateApi({
      id: tData.form.id
    },formData).then(res => {
      message.success('保存成功，后台审核中')
      getUserThing()
    }).catch(err => {
      console.log(err)
    })
  }else {
    createApi(formData).then(res => {
      message.success('保存成功，后台审核中')
      getUserThing()
    }).catch(err => {
      console.log(err)
    })
  }

}

</script>

<style scoped lang="less">
input, textarea {
  border-style: none;
  outline: none;
  margin: 0;
  padding: 0;
}

.flex-view {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
}

.content-list {
  -webkit-box-flex: 1;
  -ms-flex: 1;
  flex: 1;

  .list-title {
    color: #152844;
    font-weight: 600;
    font-size: 18px;
    line-height: 48px;
    height: 48px;
    margin-bottom: 4px;
    border-bottom: 1px solid #cedce4;
  }

  .edit-view {
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

      .right-box {
        -webkit-box-flex: 1;
        -ms-flex: 1;
        flex: 1;
      }

      .avatar {
        width: 64px;
        height: 64px;
        border-radius: 50%;
        margin-right: 16px;
      }

      .change-tips {
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        -ms-flex-wrap: wrap;
        flex-wrap: wrap;
      }

      label {
        color: #4684e2;
        font-size: 14px;
        line-height: 22px;
        height: 22px;
        cursor: pointer;
        width: 100px;
        display: block;
      }

      .tip {
        color: #6f6f6f;
        font-size: 14px;
        height: 22px;
        line-height: 22px;
        margin: 0;
        width: 100%;
      }

      .right-box {
        -webkit-box-flex: 1;
        -ms-flex: 1;
        flex: 1;
      }

      .input-dom {
        width: 400px;
      }

      .input-dom {
        background: #f8fafb;
        border-radius: 4px;
        height: 40px;
        line-height: 40px;
        font-size: 14px;
        color: #152844;
        padding: 0 12px;
      }

      .tip {
        font-size: 12px;
        line-height: 16px;
        color: #6f6f6f;
        height: 16px;
        margin-top: 4px;
      }

      .intro {
        resize: none;
        background: #f8fafb;
        width: 100%;
        padding: 8px 12px;
        height: 82px;
        line-height: 22px;
        font-size: 14px;
        color: #152844;
      }
    }

    .save {
      background: #4684e2;
      border-radius: 32px;
      width: 96px;
      height: 32px;
      line-height: 32px;
      font-size: 14px;
      color: #fff;
      border: none;
      outline: none;
      cursor: pointer;
    }

    .mg {
      margin-left: 100px;
    }
  }
}

</style>
