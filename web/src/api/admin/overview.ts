import {get, post} from '/@/utils/http/axios';

enum URL {
    list = '/myapp/admin/overview/count',
    sysInfo= '/myapp/admin/overview/sysInfo',
}

const listApi = async (params: any) =>
    get<any>({url: URL.list, params: params, data: {}, headers: {}});


const sysInfoApi = async (params: any) =>
    get<any>({url: URL.sysInfo, params: params, data: {}, headers: {}});

export {listApi, sysInfoApi};
