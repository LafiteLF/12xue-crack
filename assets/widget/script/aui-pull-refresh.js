/**
 * pull-refresh-new.js
 * 新一代下拉刷新插件
 * @author AI Assistant
 * @version 1.0.0
 * 
 * 功能特点：
 * - 流畅的动画效果
 * - 友好的用户提示
 * - 高性能实现
 * - 平滑的回弹效果
 */

(function(window) {
    'use strict';

    /**
     * PullRefresh 下拉刷新插件
     * @param {Object} config 配置项
     * @param {HTMLElement} config.container 容器元素
     * @param {Number} config.triggerDistance 触发距离（单位：px）
     * @param {Number} config.friction 阻力系数
     * @param {Function} callback 刷新回调函数
     */
    function PullRefresh(config, callback) {
        this.config = {
            container: config.container || document.querySelector('.aui-refresh-content'),
            triggerDistance: config.triggerDistance || 100,
            friction: config.friction || 2.5
        };
        this.callback = callback;
        this.isLoading = false;
        this.isPulling = false;
        this.startY = 0;
        this.currentY = 0;
        this.distance = 0;
        
        this._init();
    }

    PullRefresh.prototype = {
        /**
         * 初始化
         */
        _init: function() {
            var self = this;
            var container = this.config.container;
            
            if (!container) {
                console.error('PullRefresh: 未找到容器元素');
                return;
            }

            // 创建刷新指示器
            this._createIndicator();
            
            // 绑定触摸事件
            container.addEventListener('touchstart', function(ev) {
                self._onTouchStart(ev);
            });
            
            container.addEventListener('touchmove', function(ev) {
                self._onTouchMove(ev);
            }, { passive: false });
            
            container.addEventListener('touchend', function(ev) {
                self._onTouchEnd(ev);
            });
        },

        /**
         * 创建刷新指示器
         */
        _createIndicator: function() {
            var container = this.config.container;
            
            var indicatorHtml = `
                <div class="pull-refresh-indicator">
                    <div class="pull-refresh-icon">
                        <svg width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M16 4V8M16 24V28M8 16H4M28 16H24M25.657 6.343L23.535 8.464M8.465 23.536L6.343 25.657M25.657 25.657L23.535 23.535M8.465 8.465L6.343 6.343" 
                                  stroke="#999" stroke-width="2" stroke-linecap="round" 
                                  class="pull-refresh-arrow"/>
                        </svg>
                    </div>
                    <div class="pull-refresh-text">下拉刷新</div>
                </div>
            `;
            
            container.insertAdjacentHTML('afterbegin', indicatorHtml);
            
            this.indicator = container.querySelector('.pull-refresh-indicator');
            this.icon = container.querySelector('.pull-refresh-icon');
            this.text = container.querySelector('.pull-refresh-text');
        },

        /**
         * 触摸开始
         */
        _onTouchStart: function(ev) {
            if (this.isLoading) return;
            
            // 在触摸开始时就检查是否在顶部，如果不在顶部就忽略
            var scrollTop = this._getScrollTop();
            if (scrollTop > 1) {
                this.isPulling = false;
                return;
            }
            
            var touch = ev.touches[0];
            this.startY = touch.clientY;
            this.isPulling = false;
            
            var container = this.config.container;
            // 移除动画过渡
            container.style.transition = 'none';
        },

        /**
         * 触摸移动
         */
        _onTouchMove: function(ev) {
            if (this.isLoading) {
                // 只有在可以取消的情况下才调用 preventDefault
                if (ev.cancelable) {
                    ev.preventDefault();
                }
                return;
            }

            var touch = ev.touches[0];
            
            // 检查是否在页面顶部（持续检测）
            var scrollTop = this._getScrollTop();
            if (scrollTop > 1) {
                this.isPulling = false;
                // 如果之前在下拉中，需要重置
                if (this.distance > 0) {
                    this._reset();
                }
                return;
            }

            this.currentY = touch.clientY;
            var deltaY = this.currentY - this.startY;

            // 只处理向下拉（且移动距离大于10px，避免误触）
            if (deltaY > 10) {
                // 只有在可以取消的情况下才调用 preventDefault
                if (ev.cancelable) {
                    ev.preventDefault();
                }
                this.isPulling = true;
                this.distance = Math.pow(deltaY, 0.8); // 使用缓动算法
                this._updateIndicator();
            } else if (deltaY <= 0) {
                // 向上滑动时重置
                this.isPulling = false;
                this.distance = 0;
            }
        },

        /**
         * 触摸结束
         */
        _onTouchEnd: function(ev) {
            // 再次检查是否在顶部（安全验证）
            var scrollTop = this._getScrollTop();
            if (scrollTop > 1) {
                this._reset();
                return;
            }
            
            if (!this.isPulling || this.isLoading) {
                this._reset();
                return;
            }

            // 检查是否触发刷新
            if (this.distance >= this.config.triggerDistance) {
                this._triggerRefresh();
            } else {
                this._reset();
            }
        },

        /**
         * 更新指示器状态
         */
        _updateIndicator: function() {
            var container = this.config.container;
            var distance = this.distance;
            var triggerDistance = this.config.triggerDistance;
            
            // 移动容器
            container.style.transform = 'translate3d(0, ' + distance + 'px, 0)';
            
            // 更新图标旋转
            if (distance >= triggerDistance) {
                this.icon.style.transform = 'rotate(180deg)';
                this.text.textContent = '松开刷新';
                container.classList.add('pull-refresh-ready');
            } else {
                var rotation = (distance / triggerDistance) * 180;
                this.icon.style.transform = 'rotate(' + rotation + 'deg)';
                this.text.textContent = '下拉刷新';
                container.classList.remove('pull-refresh-ready');
            }
        },

        /**
         * 触发刷新
         */
        _triggerRefresh: function() {
            var self = this;
            this.isLoading = true;
            
            var container = this.config.container;
            container.style.transition = 'transform 0.3s ease-out';
            container.style.transform = 'translate3d(0, 60px, 0)';
            
            // 显示加载状态
            this.icon.innerHTML = `
                <svg width="32" height="32" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg">
                    <circle cx="16" cy="16" r="14" stroke="#4bc7c7" stroke-width="2" 
                            fill="none" stroke-dasharray="22 22" stroke-linecap="round" 
                            opacity="0.3"/>
                    <circle cx="16" cy="16" r="14" stroke="#4bc7c7" stroke-width="2" 
                            fill="none" stroke-dasharray="22 22" stroke-linecap="round"
                            stroke-dashoffset="22">
                        <animate attributeName="stroke-dashoffset" values="22;-22" dur="1s" repeatCount="indefinite"/>
                    </circle>
                </svg>
            `;
            this.text.textContent = '加载中...';
            container.classList.add('pull-refresh-loading');
            
            // 执行回调
            if (this.callback) {
                this.callback({
                    status: 'success'
                });
            }
        },

        /**
         * 重置状态
         */
        _reset: function() {
            var container = this.config.container;
            container.style.transition = 'transform 0.3s ease-out';
            container.style.transform = 'translate3d(0, 0, 0)';
            
            // 重置指示器
            if (this.icon && this.text) {
                this.icon.style.transform = 'rotate(0deg)';
                this.text.textContent = '下拉刷新';
            }
            
            container.classList.remove('pull-refresh-ready');
            this.isPulling = false;
            this.distance = 0;
        },

        /**
         * 取消加载
         */
        cancelLoading: function() {
            var self = this;
            this.isLoading = false;
            
            var container = this.config.container;
            container.classList.remove('pull-refresh-loading');
            
            // 恢复默认图标
            if (this.icon) {
                this.icon.innerHTML = `
                    <svg width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M16 4V8M16 24V28M8 16H4M28 16H24M25.657 6.343L23.535 8.464M8.465 23.536L6.343 25.657M25.657 25.657L23.535 23.535M8.465 8.465L6.343 6.343" 
                              stroke="#999" stroke-width="2" stroke-linecap="round" 
                              class="pull-refresh-arrow"/>
                    </svg>
                `;
            }
            
            if (this.text) {
                this.text.textContent = '下拉刷新';
            }
            
            // 延迟重置，让用户看到刷新完成的效果
            setTimeout(function() {
                self._reset();
            }, 200);
        },

        /**
         * 获取滚动位置
         */
        _getScrollTop: function() {
            var container = this.config.container;
            
            // 先检查是否有子元素滚动
            var contentElement = container.querySelector('.content');
            if (contentElement && contentElement.scrollTop !== undefined && contentElement.scrollTop > 0) {
                return contentElement.scrollTop;
            }
            
            // 检查容器自身滚动
            if (container && container.scrollTop !== undefined && container.scrollTop > 0) {
                return container.scrollTop;
            }
            
            // 检查窗口滚动（放宽检测，允许1px误差）
            var pageScroll = window.pageYOffset || document.documentElement.scrollTop || 0;
            if (pageScroll > 1) {
                return pageScroll;
            }
            
            return 0;
        }
    };

    // 导出到全局
    if (typeof module !== 'undefined' && module.exports) {
        module.exports = PullRefresh;
    } else {
        window.PullRefresh = PullRefresh;
        // 为了兼容现有代码，同时提供 auiPullToRefresh 别名
        window.auiPullToRefresh = PullRefresh;
    }

})(window);

