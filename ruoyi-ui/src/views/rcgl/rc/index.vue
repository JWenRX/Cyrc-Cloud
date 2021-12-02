<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="姓名" prop="rcName">
        <el-input
          v-model="queryParams.rcName"
          placeholder="请输入姓名"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="所属机构" prop="rcCommanyId">
        <el-input
          v-model="queryParams.rcCommanyId"
          placeholder="请输入所属机构"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="研究方向" prop="rcResearchField">
        <el-input
          v-model="queryParams.rcResearchField"
          placeholder="请输入研究方向"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="活跃度" prop="rcActivation">
        <el-input-number
          :min="60"
          :max="100"
          :step="10"
          clearable
          size="medium"
          v-model="queryParams.rcActivation"
          @keyup.enter.native="handleQuery"
        />
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
          v-hasPermi="['rcgl:rc:add']"
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
          v-hasPermi="['rcgl:rc:edit']"
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
          v-hasPermi="['rcgl:rc:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['rcgl:rc:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="rcList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="姓名" align="center" prop="rcName" />
      <el-table-column label="所属机构" align="center" prop="rcCommanyId" />
      <el-table-column label="研究方向" align="center" prop="rcResearchField" />
      <el-table-column label="论文数" align="center" prop="rcPaperNum" />
      <el-table-column label="专利数" align="center" prop="rcPatentNum" />
      <el-table-column label="项目数" align="center" prop="rcProjectNum" />
      <el-table-column label="活跃度" align="center" prop="rcActivation" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['rcgl:rc:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['rcgl:rc:remove']"
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

    <!-- 添加或修改人才管理对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="姓名" prop="rcName">
          <el-input v-model="form.rcName" placeholder="请输入姓名" />
        </el-form-item>
        <el-form-item label="所属机构" prop="rcCommanyId">
          <el-input v-model="form.rcCommanyId" placeholder="请输入所属机构" />
        </el-form-item>
        <el-form-item label="研究方向" prop="rcResearchField">
          <el-input v-model="form.rcResearchField" placeholder="请输入研究方向" />
        </el-form-item>
        <el-form-item label="论文数" prop="rcPaperNum">
          <el-input v-model="form.rcPaperNum" placeholder="请输入论文数" />
        </el-form-item>
        <el-form-item label="专利数" prop="rcPatentNum">
          <el-input v-model="form.rcPatentNum" placeholder="请输入专利数" />
        </el-form-item>
        <el-form-item label="项目数" prop="rcProjectNum">
          <el-input v-model="form.rcProjectNum" placeholder="请输入项目数" />
        </el-form-item>
        <el-form-item label="活跃度" prop="rcActivation">
          <el-input v-model="form.rcActivation" placeholder="请输入活跃度" />
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
import { listRc, getRc, delRc, addRc, updateRc } from "@/api/rcgl/rc";

export default {
  name: "Rc",
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
      // 【请填写功能名称】表格数据
      rcList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        rcCommanyId: null,
        rcName: null,
        rcResearchField: null,
        rcPaperNum: null,
        rcPatentNum: null,
        rcProjectNum: null,
        rcActivation: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询人才列表 */
    getList() {
      this.loading = true;
      listRc(this.queryParams).then(response => {
        this.rcList = response.rows;
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
        rcId: null,
        rcCommanyId: null,
        rcName: null,
        rcResearchField: null,
        rcPaperNum: null,
        rcPatentNum: null,
        rcProjectNum: null,
        rcActivation: null,
        createBy: null,
        createTime: null,
        updateBy: null,
        updateTime: null
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
      this.ids = selection.map(item => item.rcId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加人才信息";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const rcId = row.rcId || this.ids
      getRc(rcId).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改人才信息";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.rcId != null) {
            updateRc(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addRc(this.form).then(response => {
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
      const rcIds = row.rcId || this.ids;
      this.$modal.confirm('是否确认删除？').then(function() {
        return delRc(rcIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('rcgl/rc/export', {
        ...this.queryParams
      }, `rc_${new Date().getTime()}.xlsx`)
    },
  }
};
</script>
