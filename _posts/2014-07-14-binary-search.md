---
layout: post
title: 二分查找实现（如果被查找元素在数组中多次出现，则可以返回下标最小的，或者下标最大的）
date: 2014-07-14
category: " Tech "
---

面试过程中经常被要求手写二分查找，可写的准确并不容易。

###代码如下
	int right_to_left_binary_search(int a[],int n, int x)
	{
		int l=0,r=n-1;
		while(l<=r)
		{
			mid=(r - l)/2 + l; // 防止(r+l)/2 溢出
			
			if(a[mid] >= x) r = mid - 1; //即使找到了 a[mid]==x 也不退出，继续向左寻找其他满足条件的值，以返回满足条件的最小下标

			else l = mid + 1;  
		}

		return (r+1 < n) && (a[r+1]==x)?r+1:-1;
	}
	//下面这个是满足条件的最大下标的查找，可以注意差别，其实只有一个等号在if中的位置
	int left_to_right_binary_search(int a[],int n, int x)
	{
		int l=0,r=n-1;
		while(l<=r)
		{
			mid=(r - l)/2 + l; // 防止(r+l)/2 溢出
			
			if(a[mid] > x) r = mid - 1; 

			else l = mid + 1;  
		}

		return (l-1 > 0) && (l-1 < n) && (a[l-1]==x)?(l-1):-1;
	}
