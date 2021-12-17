import request from '@/utils/request'

// 查询人才列表
export function listRc(query) {
  return request({
    url: '/rcgl/rc/list',
    method: 'get',
    params: query
  })
}

// 查询人才详细
export function getRc(rcId) {
  return request({
    url: '/rcgl/rc/' + rcId,
    method: 'get'
  })
}

// 新增人才
export function addRc(data) {
  return request({
    url: '/rcgl/rc',
    method: 'post',
    data: data
  })
}

// 修改人才
export function updateRc(data) {
  return request({
    url: '/rcgl/rc',
    method: 'put',
    data: data
  })
}

// 删除人才
export function delRc(rcId) {
  return request({
    url: '/rcgl/rc/' + rcId,
    method: 'delete'
  })
}

// 查询企业列表
export function qyList() {
  return request({
    url: '/rcgl/rc/qyList',
    method: 'get'
  })
}

// 查询人才所属产业领域
export function selectCyDirection(query) {
  return request({
    url: '/rcgl/rc/cyDirection',
    method: 'get',
    params: query
  })
}

// 查询高级人才分布
export function selectRcDistribute() {
  return request({
    url: '/rcgl/rc/rcDistribute',
    method: 'get'
  })
}

// 查询人才领域分布
export function selectRcDirection() {
  return request({
    url: '/rcgl/rc/rcDirection',
    method: 'get'
  })
}
