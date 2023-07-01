import {get, post} from '/@/utils/http/axios';

enum URL {
    create='/myapp/index/order/create',
    cancelUserOrder = '/myapp/index/order/cancel_order',
    userOrderList = '/myapp/index/order/list',
}

const createApi = async (data: any) =>
    post<any>({url: URL.create, data: data, headers: {}});

const userOrderListApi = async (params: any) =>
    get<any>({url: URL.userOrderList, params: params, data: {}, headers: {}});

const cancelUserOrderApi = async (params: any) =>
    post<any>({url: URL.cancelUserOrder, params: params, headers: {}});

export {createApi, userOrderListApi, cancelUserOrderApi};
