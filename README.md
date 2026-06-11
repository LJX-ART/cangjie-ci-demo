# cangjie-ci-demo

平时作业 2：在 GitHub Actions 上搭建仓颉单元测试环境，并完成一次自动化测试。

## 项目结构

```
.
├─ cjpm.toml                # 仓颉包配置
├─ src/calculator.cj        # 业务代码（加减乘除）
├─ tests/calculator_test.cj # 单元测试
└─ .github/workflows/ci.yml # GitHub Actions 流水线
```

## 本地运行（可选）

需要本地已安装仓颉 SDK：

```bash
cjpm build
cjpm test
```

## CI/CD 流程

每次 push 到 main 分支或发起 PR 时，GitHub Actions 会自动：

1. 拉取代码
2. 安装仓颉工具链（cjc / cjpm）
3. 编译项目
4. 执行单元测试
