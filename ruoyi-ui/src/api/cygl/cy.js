import request from '@/utils/request'

// 查询产业管理列表
export function listCy(query) {
  return request({
    url: '/cygl/cy/list',
    method: 'get',
    params: query
  })
}

// 查询产业管理详细
export function getCy(cyId) {
  return request({
    url: '/cygl/cy/' + cyId,
    method: 'get'
  })
}

// 新增产业管理
export function addCy(data) {
  return request({
    url: '/cygl/cy',
    method: 'post',
    data: data
  })
}

// 修改产业管理
export function updateCy(data) {
  return request({
    url: '/cygl/cy',
    method: 'put',
    data: data
  })
}

// 删除产业管理
export function delCy(cyId) {
  return request({
    url: '/cygl/cy/' + cyId,
    method: 'delete'
  })
}

// 产业分布
export function selectCyDistribute() {
  return request({
    url: "/cygl/cy/cyDistribute",
    method: 'get'
  })
}
