import {get, post} from '/@/utils/http/axios';

enum URL {
    list = '/myapp/admin/order/list',
    create = '/myapp/admin/order/create',
    update = '/myapp/admin/order/update',
    delete = '/myapp/admin/order/delete',
    cancel = '/myapp/admin/order/cancel_order',
    cancelUserOrder = '/api/order/cancelUserOrder',
    userOrderList = '/api/order/userOrderList',
}

const listApi = async (params: any) =>
    get<any>({url: URL.list, params: params, data: {}, headers: {}});
const userOrderListApi = async (params: any) =>
    get<any>({url: URL.userOrderList, params: params, data: {}, headers: {}});

const createApi = async (data: any) =>
    post<any>({
        url: URL.create,
        params: {},
        data: data,
        headers: {'Content-Type': 'multipart/form-data;charset=utf-8'}
    });
const updateApi = async (params: any, data: any) =>
    post<any>({
        url: URL.update,
        params: params,
        data: data,
        headers: {'Content-Type': 'multipart/form-data;charset=utf-8'}
    });
const deleteApi = async (params: any) =>
    post<any>({url: URL.delete, params: params, headers: {}});

const cancelApi = async (params: any) =>
    post<any>({url: URL.cancel, params: params, headers: {}});

const cancelUserOrderApi = async (params: any) =>
    post<any>({url: URL.cancelUserOrder, params: params, headers: {}});

export {listApi, userOrderListApi, createApi, updateApi, deleteApi, cancelApi, cancelUserOrderApi};
