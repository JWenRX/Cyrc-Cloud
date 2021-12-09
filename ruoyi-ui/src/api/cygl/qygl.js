import request from '@/utils/request'

// 查询企业管理列表
export function listQygl(query) {
  return request({
    url: '/cygl/qygl/list',
    method: 'get',
    params: query
  })
}

// 查询企业管理详细
export function getQygl(qyId) {
  return request({
    url: '/cygl/qygl/' + qyId,
    method: 'get'
  })
}

// 新增企业管理
export function addQygl(data) {
  return request({
    url: '/cygl/qygl',
    method: 'post',
    data: data
  })
}

// 修改企业管理
export function updateQygl(data) {
  return request({
    url: '/cygl/qygl',
    method: 'put',
    data: data
  })
}

// 删除企业管理
export function delQygl(qyId) {
  return request({
    url: '/cygl/qygl/' + qyId,
    method: 'delete'
  })
}

// 查询产业列表
export function cyList() {
  return request({
    url: '/cygl/qygl/cyList',
    method: 'get'
  })
}
