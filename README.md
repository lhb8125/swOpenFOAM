# swOpenFOAM
## wclean All 之后再重新编译会出现regExp.h未定义
* 这个问题正在改进，临时的解决方案是clean之前备份src/OSspecific/lnInclude文件夹，或者将OSspecific下的文件重新软链接到lnInclude文件夹下
* 项目中的“移植文档”针对官网下载的原生OpenFoam-3.0.0版本，本项目中基本不需要重复文件中的大部分操作
## 加速热点
* FOAM::fv::gaussGrad::gradf
* FOAM::surfaceInterpolationScheme::interpolate
* FOAM::swScalarFields
* FOAM::GAMGSolver::solve 
* scalingFactor<br>
* smoother替换（Gauss-Seidel替换为Chebyshev）
* solveCoarsestLevel 对称版本优化
* GAMG、PBiCG和DILU中向量连续段部分
* 新增PBiCGSTAB求解器及其从核加速版本
* normFactor简化和从核优化
* Amul：重新设计实现了Amul
## 算例安全要求
* 每个进程上网格数量不超过150万,且不少于5万
* 各进程矩阵最大带宽不超过12800
* 加速效果较好区间是在每个进程网格数20万以上
## 使用设置方法
* FOAM::surfaceInterpolationScheme::interpolate的加速代码已经通过编译开关SW_SLAVE已经嵌入gwcfd，默认即会调用
* FOAM::fv::gaussGrad::gradf的从核代码调用需要在system下fvScheme文件中的Grad关键字对应的值改为swGauss（原为Gauss）
* GAMG加速版本需要在system/fvSolution里将solver值修改为swGAMG，会自动调用加速版本的Amul和scalingFactor，smoother需要显示指定用Gauss-Seidel还是Chebyshev，方法是在system/fvSolution里将smoother修改为Gauss-Seidel或swCheby
* PBiCGStab加速版本的调用方法是在system/fvSolution里将solver值修改为swPBiCGStab, 此版本会自动调用加速版本的Amul
* DILU的加速版本的调用方法是在system/fvSolution里将preconditioner值修改为swDILU
* diagonal的加速版本的调用方法是在system/fvSolution里将preconditioner值修改为swDiagonal
## Chebyshev光滑器附加使用说明
> 目前Chebyshev光滑器作为GAMG（几何代数多重网格）每层上的光滑器来使用，主要用来替代Gauss-Seidel光滑器，目前版本只支持对称矩阵。Chebyshev光滑器主要由两部分组成，一部分是用PCG（预条件共轭梯度法）来求解系数矩阵A的特征值，另一部分是用所得的特征值进行迭代求解。用PCG求解特征值的时候也会同时对求解量X进行残差光滑，提高收敛速度。<br/>
> 可改控制参数：
> * nPCGsCheby：默认值是10。此系数是用PCG获得A特征值eigCheby的迭代次数。这个数值越大，代表所用PCG的次数越多，所得eigCheby也更准确。A的特征值越准确，Chebyshev的求解迭代次数也越少，但PCG的开销比单次Chebyshev的迭代要高很多，因此需要平衡。目前的经验数值是10，可选最低值是2，上不封顶
> * boostFactorCheby：默认值是1.1。此系数用来扩大PCG所求的特征值eigCheby，因为用PCG所得的eigCheby一般都偏小，需要乘以一个大于1的系数。如果nPCGsCheby值很大，那么特征值很准确的情况下，boostFactorCheby的值可以取更接近于1的数。一般情况下不需要做出改动
> * eigRatioCheby：默认值是1.5。此系数是用来获得每层上的最小特征值，根据eigCheby/ eigRatioCheby。此系数一般不需调整。如果是在最粗层，则此数需要取20，不过目前最粗层上还是默认的PCG求解器，后续会有调整
## 算例运行
> 以motorBike的simpleFoam为例
```
bsub -I -b -q q_name -exclu -n nps -cgsp 64 -host_stack 1024 -share_size 6144 -m 2 pisoFoam -parallel |&tee log.swPISO
```
> 具体参数说明请参阅“神威.太湖之光并行程序设计与优化”手册（可从官网http://www.nsccwx.cn/process.php?word=process&i=54处下载）
