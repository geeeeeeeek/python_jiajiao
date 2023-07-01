import {get, post} from '/@/utils/http/axios';

enum URL {
    list = '/myapp/index/notice/list_api',
}

const listApi = async (params: any) =>
    get<any>({url: URL.list, params: params, data: {}, headers: {}});

export {listApi};
