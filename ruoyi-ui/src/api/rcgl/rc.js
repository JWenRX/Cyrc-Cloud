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
