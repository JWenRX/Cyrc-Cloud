<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="企业名称" prop="qyName">
        <el-input
          v-model="queryParams.qyName"
          placeholder="请输入企业名称"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="所属产业" prop="qyIndustry">
        <el-select v-model="queryParams.qyIndustry"
                   placeholder="请选择企业所属产业"
                   clearable
                   filterable
                   @keyup.enter.native="handleQuery"
                   size="small">
          <el-option
            v-for="item in cyList"
            :key="item.cyId"
            :label="item.cyName"
            :value="item.cyId">
          </el-option>
        </el-select>
      </el-form-item>
      <el-form-item label="所在城市" prop="selectedOptions">
        <div id="app">
          <el-cascader
            :options="options"
            size="small"
            v-model="selectedOptions"
            clearable
            filterable
            @change="rcAreasChange2"
            @keyup.enter.native="handleQuery"
          />
        </div>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['cygl:qygl:add']"
        >新增
        </el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['cygl:qygl:edit']"
        >修改
        </el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['cygl:qygl:remove']"
        >删除
        </el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['cygl:qygl:export']"
        >导出
        </el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="qyglList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center"/>
      <el-table-column align="center" type="index" width="60" label="序号">
        <template slot-scope="scope">
          {{(queryParams.pageNum - 1) * queryParams.pageSize + scope.$index + 1}}
        </template>
      </el-table-column>
      <el-table-column label="企业名称" align="center" prop="qyName"/>
      <el-table-column label="所属产业" align="center" prop="cy.cyName"/>
      <el-table-column label="所在城市" align="center" prop="qyAreas"/>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['cygl:qygl:edit']"
          >修改
          </el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['cygl:qygl:remove']"
          >删除
          </el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改企业管理对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="企业名称" prop="qyName">
          <el-input v-model="form.qyName" placeholder="请输入企业名称"/>
        </el-form-item>
        <el-form-item label="所属产业" prop="isDeleted">
          <el-select v-model="form.qyIndustry" placeholder="请选择企业所属产业" style="width: 380px">
            <el-option
              v-for="item in cyList"
              :key="item.cyId"
              :label="item.cyName"
              :value="item.cyId">
            </el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="所在城市" prop="selectedOptions">
          <div id="app">
            <el-cascader
              ref="cascaderAddr"
              :options="options"
              expand-trigger="hover"
              size="medium"
              :props="cateProps"
              style="width: 380px"
              v-model="form.selectedOptions"
              @change="rcAreasChange"
            />
          </div>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import {listQygl, getQygl, delQygl, addQygl, updateQygl, cyList} from "@/api/cygl/qygl";
import {getCy} from "@/api/cygl/cy";
import {provinceAndCityDataPlus, CodeToText, TextToCode} from 'element-china-area-data' // 4.省市区带‘全部’三级联动选择

export default {
  name: "Qygl",
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 企业管理表格数据
      qyglList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        qyName: null,
        qyIndustry: null,
        qyAreas: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {},
      // 省市区带‘全部’二级联动选择
      options: provinceAndCityDataPlus,
      selectedOptions: [],
      areas: "",
      areas2: "",
      //省市区显示
      cateProps: {
        value: 'value',
        label: 'label',
        children: 'children',
      },
      cyList: [],
      cyAddList: [],
      data: {}
    };
  },
  created() {
    this.getList();
    this.getCyList();
  },
  methods: {
    /** 级联选择城市-添加/修改 **/
    rcAreasChange() {
      var loc = ''
      for (let i = 0; i < this.form.selectedOptions.length; i++) {
        var addr = CodeToText[this.form.selectedOptions[i]]
        if (addr == "北京市" || addr == "天津市") {
          loc = addr;
          break;
        }
        loc += CodeToText[this.form.selectedOptions[i]]
        if (i == 0) {
          loc += "/"
        }
      }
      // 输出区域码所对应的属性值即中文地址
      this.areas = loc
    },
    /** 级联选择城市-列表 **/
    rcAreasChange2() {
      var loc = ''
      for (let i = 0; i < this.selectedOptions.length; i++) {
        var addr = CodeToText[this.selectedOptions[i]]
        if (addr == "北京市" || addr == "天津市") {
          loc = addr;
          break;
        }
        loc += CodeToText[this.selectedOptions[i]]
        if (i == 0) {
          loc += "/"
        }
      }
      // 输出区域码所对应的属性值即中文地址
      this.areas2 = loc
    },
    /** 查询企业管理列表 */
    getList() {
      this.loading = true;
      this.queryParams.qyAreas = this.areas2
      listQygl(this.queryParams).then(response => {
        this.qyglList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    /** 查询产业列表 **/
    getCyList() {
      this.loading = true;
      cyList().then(response => {
        this.cyList = response;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        qyId: null,
        qyName: null,
        qyIndustry: null,
        qyAreas: null,
        createBy: null,
        createTime: null,
        updateBy: null,
        updateTime: null,
        selectedOptions: []
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.selectedOptions = null
      this.areas2 = null;
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.qyId)
      this.single = selection.length !== 1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加企业信息";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const qyId = row.qyId || this.ids
      getQygl(qyId).then(response => {
        this.form = response.data;
        if (this.form.qyAreas != "") {
          if (this.form.qyAreas == "北京市" || this.form.qyAreas == "天津市") {
            this.form.selectedOptions = [TextToCode[this.form.qyAreas].code, TextToCode[this.form.qyAreas]['市辖区'].code];
          } else {
            var arr = this.form.qyAreas.split("/");
            this.form.selectedOptions = [TextToCode[arr[0]].code, TextToCode[arr[0]][arr[1]].code]
          }
        }
        this.areas = this.form.qyAreas;
        this.open = true;
        this.title = "修改企业信息";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.qyId != null) {
            this.form.qyAreas = this.areas;
            updateQygl(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            this.form.qyAreas = this.areas;
            addQygl(this.form).then(response => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const qyIds = row.qyId || this.ids;
      this.$modal.confirm('是否确认删除？').then(function () {
        return delQygl(qyIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {
      });
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('cygl/qygl/export', {
        ...this.queryParams
      }, `qygl_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
