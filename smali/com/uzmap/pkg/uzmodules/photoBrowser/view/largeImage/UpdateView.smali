.class public abstract Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;
.super Landroid/view/View;
.source "UpdateView.java"


# instance fields
.field protected index:I

.field location:[I

.field private lock:Z

.field private final mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mGlobalListenersAdded:Z

.field final mLayout:Landroid/view/WindowManager$LayoutParams;

.field mLeft:I

.field mLocation:[I

.field mRequestedVisible:Z

.field final mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field mTop:I

.field mViewVisibility:Z

.field private mVisibilityRect:Landroid/graphics/Rect;

.field mVisible:Z

.field mWindowVisibility:Z

.field private mWindowVisibleDisplayFrame:Landroid/graphics/Rect;

.field tempLocationInWindow:[I

.field tempVisibilityRect:Landroid/graphics/Rect;

.field time:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 37
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mRequestedVisible:Z

    .line 41
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mWindowVisibility:Z

    .line 42
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mViewVisibility:Z

    .line 44
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 72
    new-instance v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView$1;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView$1;-><init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 80
    new-instance v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView$2;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView$2;-><init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 121
    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mLocation:[I

    .line 122
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mVisible:Z

    const/4 p1, -0x1

    .line 123
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mLeft:I

    .line 124
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mTop:I

    new-array p1, v0, [I

    .line 136
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->tempLocationInWindow:[I

    .line 137
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->tempVisibilityRect:Landroid/graphics/Rect;

    .line 164
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mVisibilityRect:Landroid/graphics/Rect;

    new-array p1, v0, [I

    .line 168
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->location:[I

    .line 169
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mWindowVisibleDisplayFrame:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mRequestedVisible:Z

    .line 41
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mWindowVisibility:Z

    .line 42
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mViewVisibility:Z

    .line 44
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 72
    new-instance p2, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView$1;

    invoke-direct {p2, p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView$1;-><init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;)V

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 80
    new-instance p2, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView$2;

    invoke-direct {p2, p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView$2;-><init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;)V

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    const/4 p2, 0x2

    new-array v0, p2, [I

    .line 121
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mLocation:[I

    .line 122
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mVisible:Z

    const/4 p1, -0x1

    .line 123
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mLeft:I

    .line 124
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mTop:I

    new-array p1, p2, [I

    .line 136
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->tempLocationInWindow:[I

    .line 137
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->tempVisibilityRect:Landroid/graphics/Rect;

    .line 164
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mVisibilityRect:Landroid/graphics/Rect;

    new-array p1, p2, [I

    .line 168
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->location:[I

    .line 169
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mWindowVisibleDisplayFrame:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mRequestedVisible:Z

    .line 41
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mWindowVisibility:Z

    .line 42
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mViewVisibility:Z

    .line 44
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 72
    new-instance p2, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView$1;

    invoke-direct {p2, p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView$1;-><init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;)V

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 80
    new-instance p2, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView$2;

    invoke-direct {p2, p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView$2;-><init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;)V

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    const/4 p2, 0x2

    new-array p3, p2, [I

    .line 121
    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mLocation:[I

    .line 122
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mVisible:Z

    const/4 p1, -0x1

    .line 123
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mLeft:I

    .line 124
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mTop:I

    new-array p1, p2, [I

    .line 136
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->tempLocationInWindow:[I

    .line 137
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->tempVisibilityRect:Landroid/graphics/Rect;

    .line 164
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mVisibilityRect:Landroid/graphics/Rect;

    new-array p1, p2, [I

    .line 168
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->location:[I

    .line 169
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mWindowVisibleDisplayFrame:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$000(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;ZZ)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->updateWindow(ZZ)V

    return-void
.end method

.method private updateWindow(ZZ)V
    .locals 6

    .line 141
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->lock:Z

    if-eqz v0, :cond_0

    return-void

    .line 144
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 145
    iget-wide v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->time:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x10

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    return-void

    .line 148
    :cond_1
    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->time:J

    .line 149
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->tempLocationInWindow:[I

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->getLocationInWindow([I)V

    .line 150
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mVisible:Z

    iget-boolean v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mRequestedVisible:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    if-nez p1, :cond_3

    if-nez v0, :cond_3

    .line 151
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->tempLocationInWindow:[I

    aget v0, p1, v3

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mLocation:[I

    aget v4, v1, v3

    if-ne v0, v4, :cond_3

    aget p1, p1, v2

    aget v0, v1, v2

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_5

    .line 152
    :cond_3
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mLocation:[I

    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->tempLocationInWindow:[I

    aget v0, p2, v3

    aput v0, p1, v3

    .line 153
    aget p2, p2, v2

    aput p2, p1, v2

    .line 154
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->tempVisibilityRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->getVisibilityRect(Landroid/graphics/Rect;)V

    .line 155
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mVisibilityRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->tempVisibilityRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 156
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mVisibilityRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->tempVisibilityRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 157
    :cond_4
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mVisibilityRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->tempVisibilityRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 158
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mVisibilityRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->onUpdateWindow(Landroid/graphics/Rect;)V

    :cond_5
    return-void
.end method


# virtual methods
.method protected getVisibilityRect(Landroid/graphics/Rect;)V
    .locals 3

    .line 172
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 174
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mWindowVisibleDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 176
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mWindowVisibleDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mWindowVisibleDisplayFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 179
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mWindowVisibleDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_1

    .line 180
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mWindowVisibleDisplayFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 182
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mWindowVisibleDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_2

    .line 183
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mWindowVisibleDisplayFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 185
    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mWindowVisibleDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_3

    .line 186
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mWindowVisibleDisplayFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->location:[I

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->getLocationInWindow([I)V

    .line 191
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->location:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 192
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->location:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 193
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->location:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 194
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->location:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method protected lock()V
    .locals 1

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->lock:Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 92
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 95
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 96
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "SurfaceView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mViewVisibility:Z

    .line 99
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mGlobalListenersAdded:Z

    if-nez v0, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 101
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 102
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 103
    iput-boolean v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mGlobalListenersAdded:Z

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 109
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mGlobalListenersAdded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 111
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 112
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 113
    iput-boolean v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mGlobalListenersAdded:Z

    .line 115
    :cond_0
    iput-boolean v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mRequestedVisible:Z

    .line 116
    invoke-direct {p0, v1, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->updateWindow(ZZ)V

    .line 117
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 118
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected abstract onUpdateWindow(Landroid/graphics/Rect;)V
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 49
    :goto_0
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mWindowVisibility:Z

    if-eqz p1, :cond_1

    .line 50
    iget-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mViewVisibility:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mRequestedVisible:Z

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 200
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->index:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    .line 56
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 57
    :goto_0
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mViewVisibility:Z

    .line 58
    iget-boolean v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mWindowVisibility:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 59
    :goto_1
    iget-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mRequestedVisible:Z

    if-eq v0, p1, :cond_2

    .line 66
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->requestLayout()V

    .line 68
    :cond_2
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->mRequestedVisible:Z

    return-void
.end method

.method protected unLock()V
    .locals 1

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->lock:Z

    return-void
.end method
