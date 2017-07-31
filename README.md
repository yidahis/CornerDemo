# CornerDemo
看到一篇文章后，不得不谈论下设置圆角的姿势

##这里讨论了UIImageView三种设置圆角的姿势，分别是 cornerRadius + maskToBounds、异步剪裁，imageView.layer.mask。经过实测，iOS10下，前两种帧率
能保持到55，最后一种智能到达30附近。
