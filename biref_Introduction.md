# 机器学习_吴恩达

- 线行回归
	- 代价函数
	- 梯度函数
	- 使用现成的最小化函数实现梯度下降，最小化代价函数
- 逻辑回归
	- 代价函数用到的变形(Sigmoid function)
	- 梯度函数也用到了变形函数
	- 使用现成的最小化函数实现梯度下降，最小化代价函数
- 神经网络
	- 输入层、隐藏层和输出层
	- 前向传播，计算预测结果
	- 后向传播，计算梯度
- 机器学习分析
	- 划分数据集
		- 训练集60%
		- 交叉检验集20%
		- 误差检验集20%
	- 过拟合，高方差，交叉检验集误差和训练集误差随着数据集的增加慢慢减小，最后稳定在一个较小的数字，在数据集较小时，两者相差很多，在数据集较大时，两者相差很小
		- 增加数据集
		- 提高正则化参数
		- 减少特征数量和幂次数
	- 欠拟合，高误差，交叉检验集误差和训练集误差几乎不随着数据集的增加变化,两者相差一直都较大，
		- 增加数据集无用
		- 减小正则话参数
		- 增加特征数量和幂次数
- SVM：大间距分类器
	- 是逻辑回归的变形，使用直线拟合逻辑回归的代价函数,使用C代替正则化参数1/lambda
	- 核心函数：用于度量两个数据点相似程度的函数，高斯核心函数、线性核心函数
	- 适用情况
		- n > m：使用逻辑回归或线性核心的SVM
		- n < m：使用带高斯核心的SVM
		- n << m：增加特征数量，使用逻辑回归或线性核心的SVM
- 无监督学习
	- 聚类算法：k-mean
		- 使用手肘法则确定k的大小
	- 数据降维：pca
		- 归一化原始数据
		- 计算数据的协方差矩阵sigma
		- 计算sigma的特征向量矩阵 $$[U, S, V] = \frac{1}{m}\sum_{i=1}^m(x^{(i)})(x^{(i)})^T$$
		- 计算数据保真度确定降维后的数据维度k $$\frac{\sum_{(i=1)}{k}S_{ii}}{\sum_{i=1}^mS_{ii}}$$
		- 降维后数据$$z = U(:,1:k)^' * x$$
		- 应用：可视化高维数据、压缩数据、加速算法
- 异常检测
	- 一维高斯分布和多维高斯分布
- 协同滤波
	- 应用：内容推荐系统
	- 同时预测theta和x
- 大规模机器学习
	- 分布式计算，要求是大规模求和计算
- 上限分析
	- 在多模块应用中，分析哪个模块对系统性能的提升最高，用于分配资源
