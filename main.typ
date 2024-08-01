#import "chicv.typ": *;

#let Chinese = 0
#let EnglishFull = 1
#let Simplified = 2
#let runReader(mode) = {
  let translate(zh: [], en: []) = {
    if mode == Chinese {
      zh
    } else {
      en
    }
  }
  let noSimple(simple: [], content) = {
    if mode == Simplified {
      simple
    } else {
      content
    }
  }
  let months = ("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")
  let translate-date(month, year) = translate(
    zh: [#year 年 #month 月],
    en: [#months.at(month - 1), #year]
  )
  let current = translate(
    zh: [至今],
    en: [Present]
  )

  let archrv = {
    let archrv-date = [#translate-date(03, 2022) -- #translate-date(05, 2023)]
    translate(
      en: cventry(
        tl: [*ISCAS*, Remote],
        tr: archrv-date,
        bl: [_Modified Arch Linux packages for RISC-V_, Package Maintainer],
      )[#noSimple(
        // simple: [- Leading a team to explore modern techniques in type theory implementation.]
      )[
      - Actively contributed to the Arch Linux RISC-V project, submitting 189 pull requests (PRs) to enhance the software ecosystem for the RISC-V platform.
      - Testing and analyzing for Arch Linux RISC-V, strengthening and expanding its infrastructure while establishing automated build and test environments to improve system stability.
      - Proactively championed upstream submission of RISC-V platform-related modifications, fostering close communication with the community to drive widespread support for the RISC-V ecosystem.
      ]],
      zh: cventry(
        tl: [*中科院软件研究所*，远程],
        tr: archrv-date,
        bl: [Arch Linux RISC-V 小队，操作系统开发工程师],
      )[
      - 积极贡献 Arch Linux RISC-V 软件包支持项目，提交 PR 189 个，努力提升 RISC-V 平台软件生态。
      - 独立负责 Arch Linux RISC-V 测试与验证，巩固并扩展其基础设施架构，搭建自动化构建测试环境，提升系统稳定性。
      - 积极推动 RISC-V 平台相关修改提交上游，与社区保持密切沟通，为 RISC-V 生态的广泛支持做出重要贡献。
      ],
    )
  }

  let buddy-mlir = {
    let buddy-date = [#translate-date(05, 2023) -- #translate-date(05, 2024)]
    translate(
      en: cventry(
        tl: [*ISCAS*, Remote],
        tr: buddy-date,
        bl: [_MLIR-based compiler framework_, RVV Dialect and Infra maintainer],
      )[#noSimple(
        // simple: [- Leading a team to explore modern techniques in type theory implementation.]
      )[
      - Engineered and deployed a comprehensive RISC-V Vector (RVV) infrastructure for PyTorch, enabling end-to-end validation on baremetal RVV hardware.
      - Leveraged Buddy Compiler infrastructure to successfully deploy and execute the Bert ML model on a baremetal RVV machine, showcasing Buddy MLIR capabilities for supporting multiple backend tasks.
      - Contribute comprehensive documentation for MLIR Sparse Tensor implementation, including illustrative examples, to enhance developer understanding and facilitate broader adoption.
      - Developed and maintained the build system infrastructure, ensuring seamless integration of new tools and libraries, and reproducibility.
      ]],
      zh: cventry(
        tl: [*中科院软件研究所*，远程],
        tr: buddy-date,
        bl: [基于 MLIR 的编译器组件，RVV 方言和基础设施维护工程师],
      )[
      - 设计并创建对 RISC-V Vector 机器的底层系统基础设施，成功实现并验证在裸机上的 PyTorch 到 RVV 的端到端验证。
      - 利用 Buddy MLIR 的编译器工具链，成功在裸机 RVV 上部署并执行 Bert ML 模型，展现 Buddy MLIR 工具链的后端支持灵活性。
      - 撰写详细的 MLIR Sparse Tensor 实现，并提供大量简单清晰的使用范例，帮助更多开发者理解和运用 MLIR 基础设施。
      - 开发并维护了一套可复现，可拓展的编译基础设施，帮助用户更好的构建 Buddy MLIR 工具链。
      ],
    )
  }

  let xing = {
    let xing-date = [#translate-date(05, 2023) -- #current]
    translate(
      en: cventry(
        tl: [*ISCAS*, Remote],
        tr: xing-date,
        bl: [_MLIR-based wafer compiler framework_, Cryptography Dialect developer],
      )[#noSimple(
        // simple: [- Leading a team to explore modern techniques in type theory implementation.]
      )[
      - Engineered the MD5, SM3 MLIR crypto Dialect, providing high level abstraction of crypto implementation for users.
      - Develop the Wafer Compiler to provide simutaneous execution of multiple crypto operation on CPU/GPU.
      ]],
      zh: cventry(
        tl: [*中科院软件研究所*，远程],
        tr: xing-date,
        bl: [基于 MLIR 的晶圆编译基建，密码学方言工程师],
      )[
      - 设计并实现 MD5, SM3 密码学方言，为用户提供一层高抽象封装的密码学算子，简化对摘要操作的调用。
      - 用 MLIR 实现在 CPU/GPU 平台的密码学的同步执行，提高在多独立数据密码学计算时的并行度和计算效率。
      ],
    )
  }

  let chipsalliance = {
    translate(
      en: cventry(
        tl: [*chipsalliance/t1*, RISC-V Vector implementation],
        tr: githublink("chipsalliance/t1"),
      )[
      - CI/CD Infrastructure Management: Led development and maintenance of the CI/CD infrastructure for Project T1, ensuring seamless service deployment, server configuration, and ongoing system optimization.
      - Simulation Test Automation: Spearheaded the creation of a simulation test automation framework for Project T1, driving daily regression testing and backend verification to ensure the RTL reliability.
      - Performance Analysis Framework: Engineered the probe-based TestBench module for Project T1, drafting the performance analysis and inspection framework to identify bottlenecks and optimize compiler efficiency.
      - Rocket Core Development: Engineered the rocket core DPI and Verilator emulator, establishing foundational support for integrating Project T1 with the Rocket Chip.
      - Compiler Infrastructure: Led the design and implementation of basic system library for Project T1, enabling the execution of vectorized workloads and expanding the T1 emulator capabilities.
      ],
      zh: cventry(
        tl: [*chipsalliance/t1*，RISC-V 向量 IP],
        tr: githublink("chipsalliance/t1"),
      )[
      - CI/CD 基础设施管理： 主要负责 T1 项目 CI/CD 基础设施的开发与维护，确保服务部署、服务器运行持续稳定运行。
      - 仿真测试自动化： 领导 T1 项目仿真测试自动化框架的创建，推动日常回归测试和后端验证，以保证 RTL 可靠性。
      - 性能分析框架： 为 T1 项目开发了早期基于 Probe 的 TestBench 模块，提供的性能分析和检查框架，用于帮助编译器团队识别瓶颈并优化代码。
      - rocket-chip 开发： 开发了 rocket-chip DPI 和 verilator 仿真器，为 T1 项目与 Rocket Chip 生态系统的集成开发了基础实现。
      - 测试环境开发：开发并引入如 newlibc 等库进入 T1 项目，支持更多向量化测例的运行。
      ],
    )
  }

  let skills = {
    let devTools = {
      let tools = ("GitHub", "Gitee", "Slack", "GitLab")
      translate(en: [
        - Tools: editor-agnostic, have experience with team tools like #tools.join(", ") and more.
      ], zh: [- 开发工具：主要使用 Neovim 在 Linux 环境开发，能适应任何常见编辑器/操作系统，有使用 #tools.join("、") 等团队协作工具的经验。])
    }
    let progLang = {
      let very = "Rust Scala Ruby Lua TypeScript Nix"
      let somehow = "OCaml Haskell Zig C++"
      translate(en: [
        - Programming Languages: multilingual (not limited to any specific language), especially experienced in #very, comfortable with #somehow (in random order).
      ], zh: [
        - 编程语言：泛语言（编程不受特定语言限制），且尤其熟悉 #very，较为熟悉 #somehow（排名均不分先后）。
      ])
    }
    let nvimDev = {
      let nvim = link("https://github.com/Avimitin/nvim")[Neovim]
      translate(en: [
        - Experience #nvim user, have full experience on Neovim plugin development and development environment deployment.
      ], zh: [
        - 熟练的 #nvim 用户，给 Neovim 社区贡献过大量插件。
      ])
    }
    let linuxDev = translate(
      en: [- Linux development: experienced Linux distro user and developer, Know how Linux distro works and know what is the best practice for maintaining Linux infrastructure.],
      zh: [- Linux 开发：非常熟悉发行版的工作机制，熟知在发行版上各种工作流的最佳实践，能够独立且熟练的寻找，测试并解决发行版工作中遇到的问题。]
    )
    let rustDev = translate(
      en: [- Rust developement: familiar with Rust development, know some implementation detailed like the Async Coroutine, Higher Kinded Types],
      zh: [- Rust 开发：熟悉 Rust 社区，常用 Rust 开发。理解并实践过一些实现细节，比如 Async Coroutine，Higher Kinded Types]
    )
    let nixDev = translate(
      en: [- Nix developement: experienced with Nix packaging and reproducible build. Famililar with Nixpkgs library and packages. Daily driven project with Nix flakes],
      zh: [- Nix 开发：在使用 Nix 打包和 reproducible build 上有丰富的经历，非常熟悉 Nixpkgs 的状态，库的实现和软件包的打包方式。日常使用 nix flake 来做开发环境]
    )
    let frontendDev = translate(
      en: [- React Development: familiar with how to start and implement a typical CSR or SSR frontend project, with React and Rust as the tech stack.],
      zh: [- 前端开发：熟悉传统 SSR 和现代 CSR 的前端开发，熟悉 React 和 vite 技术栈]
    )
    progLang
    nvimDev
    linuxDev
    rustDev
    nixDev
    frontendDev
    devTools
  }

  // Start of the document

  translate(en: [= #smallcaps[Avimitin]], zh: [= 卢炯嘉])

  [#link("mailto:avimitin@gmail.com")[avimitin\@gmail.com] $dot.c$ #iconlink("https://github.com/Avimitin", icon: github) $dot.c$ #iconlink("https://crates.io/users/avimitin") $dot.c$ #iconlink("https://sh1mar.in")]

  translate(en: [== Work Experience], zh: [== 工作经历])
  archrv
  buddy-mlir
  xing

  translate(en: [== Related Projects], zh: [== 项目经历])
  chipsalliance

  translate(en: [== Skills], zh: [== 技能])
  skills
}
