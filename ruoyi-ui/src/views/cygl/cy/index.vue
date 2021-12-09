<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="产业名称" prop="cyName">
        <el-input
          v-model="queryParams.cyName"
          placeholder="请输入产业名称"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="产业方向" prop="cyDirection">
        <el-select v-model="queryParams.cyDirection" clearable size="small" filterable
                   @keyup.enter.native="handleQuery" placeholder="请选择产业方向">
          <el-option
            v-for="item in options"
            :key="item.value"
            :label="item.label"
            :value="item.value">
          </el-option>
        </el-select>
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
          v-hasPermi="['cygl:cy:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['cygl:cy:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['cygl:cy:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['cygl:cy:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="cyList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column align="center" type="index" width="60" label="序号">
        <template slot-scope="scope">
          {{(queryParams.pageNum - 1) * queryParams.pageSize + scope.$index + 1}}
        </template>
      </el-table-column>
      <el-table-column label="产业名称" align="center" prop="cyName" />
      <el-table-column label="产业方向" align="center" prop="cyDirection" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['cygl:cy:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['cygl:cy:remove']"
          >删除</el-button>
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

    <!-- 添加或修改产业管理对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="产业名称" prop="cyName">
          <el-input v-model="form.cyName" placeholder="请输入产业名称" />
        </el-form-item>
        <el-form-item label="产业方向" prop="cyDirection">
          <el-select v-model="form.cyDirection" clearable
                     size="medium" filterable style="width: 380px"
                     placeholder="请选择产业方向">
            <el-option
              v-for="item in options"
              :key="item.value"
              :label="item.label"
              :value="item.value">
            </el-option>
          </el-select>
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
import { listCy, getCy, delCy, addCy, updateCy } from "@/api/cygl/cy";

export default {
  name: "Cy",
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
      // 产业管理表格数据
      cyList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        cyName: null,
        cyDirection: null,
        isDeleted: null
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
      },
      options: [{
        value: '节能环保方向',
        label: '节能环保'
      }, {
        value: '高端装备制造产业方向',
        label: '高端装备制造产业'
      }, {
        value: '新一代信息技术产业方向',
        label: '新一代信息技术产业'
      }, {
        value: '生物产业方向',
        label: '生物产业'
      }, {
        value: '新材料产业方向',
        label: '新材料产业'
      }],
      value: ''
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询产业管理列表 */
    getList() {
      this.loading = true;
      listCy(this.queryParams).then(response => {
        this.cyList = response.rows;
        this.total = response.total;
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
        cyId: null,
        cyName: null,
        cyDirection: null,
        createBy: null,
        createTime: null,
        updateBy: null,
        updateTime: null,
        isDeleted: null
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
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.cyId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加产业信息";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const cyId = row.cyId || this.ids
      getCy(cyId).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改产业信息";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.cyId != null) {
            updateCy(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addCy(this.form).then(response => {
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
      const cyIds = row.cyId || this.ids;
      this.$modal.confirm('是否确认删除？').then(function() {
        return delCy(cyIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('cygl/cy/export', {
        ...this.queryParams
      }, `cy_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
