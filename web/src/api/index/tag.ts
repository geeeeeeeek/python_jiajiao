import {get, post} from '/@/utils/http/axios';

enum URL {
    list = '/myapp/index/tag/list',
}

const listApi = async (params: any) =>
    get<any>({url: URL.list, params: params, data: {}, headers: {}});

export {listApi};
