// 权限问题后期增加
import { get, post } from '/@/utils/http/axios';
import { UserState } from '/@/store/modules/user/types';
// import axios from 'axios';
enum URL {
    userLogin = '/myapp/index/user/login',
    userRegister = '/myapp/index/user/register',
    detail = '/myapp/index/user/info',
    updateUserPwd = '/myapp/index/user/updatePwd',
    updateUserInfo = '/myapp/index/user/update',
}
interface LoginRes {
    token: string;
}

export interface LoginData {
    username: string;
    password: string;
}

const detailApi = async (params: any) => get<any>({ url: URL.detail, params: params, data: {}, headers: {} });
const userLoginApi = async (data: LoginData) => post<any>({ url: URL.userLogin, data, headers: { 'Content-Type': 'multipart/form-data;charset=utf-8' } });
const userRegisterApi = async (data: any) => post<any>({ url: URL.userRegister, params: {}, data: data });
const updateUserPwdApi = async (params: any, data:any) => post<any>({ url: URL.updateUserPwd, params: params, data:data });
const updateUserInfoApi = async (params: any,data: any) => post<any>({ url: URL.updateUserInfo, params:params, data: data, headers: { 'Content-Type': 'multipart/form-data;charset=utf-8' } });

export { detailApi, userLoginApi, userRegisterApi, updateUserPwdApi, updateUserInfoApi};
