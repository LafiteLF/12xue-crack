.class public abstract Lcom/uzmap/pkg/uzcore/i/b/f;
.super Landroid/webkit/WebView;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Lcom/uzmap/pkg/uzcore/i/b/c;

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const-string v0, "text/html; charset=UTF-8"

    goto :goto_0

    :cond_0
    const-string v0, "text/html"

    :goto_0
    sput-object v0, Lcom/uzmap/pkg/uzcore/i/b/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/i/b/f;->b:Z

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/i/b/f;->c:Z

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/i/b/f;->d:Z

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/i/b/f;->e:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uzmap/pkg/uzcore/i/b/f;->g:J

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/i/b/f;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method private final a(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/i/b/f;->setVerticalScrollbarOverlay(Z)V

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/i/b/f;->setHorizontalScrollbarOverlay(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/i/b/f;->setOverScrollMode(I)V

    sget v0, Lcom/deepe/c/b/c;->a:I

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/i/b/f;->setBackgroundColor(I)V

    invoke-direct {p0, p2}, Lcom/uzmap/pkg/uzcore/i/b/f;->a(Z)V

    new-instance p2, Lcom/uzmap/pkg/uzcore/i/b/f$1;

    invoke-direct {p2, p0}, Lcom/uzmap/pkg/uzcore/i/b/f$1;-><init>(Lcom/uzmap/pkg/uzcore/i/b/f;)V

    invoke-static {p1, p2}, Lcom/uzmap/pkg/uzcore/i/b/a;->a(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/i/b/a$a;)Landroid/webkit/DownloadListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/i/b/f;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    new-instance p1, Lcom/uzmap/pkg/uzcore/i/b/f$2;

    invoke-direct {p1, p0}, Lcom/uzmap/pkg/uzcore/i/b/f$2;-><init>(Lcom/uzmap/pkg/uzcore/i/b/f;)V

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/i/b/f;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    sget-boolean v0, Lcom/uzmap/pkg/uzcore/z;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/uzcore/i/b/f$3;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzcore/i/b/f$3;-><init>(Lcom/uzmap/pkg/uzcore/i/b/f;)V

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/i/b/f;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzcore/i/b/f;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final F()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/i/b/f;->b:Z

    return v0
.end method

.method public J()V
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/i/b/f;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/i/b/f;->F()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/i/b/f;->c:Z

    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    return-void
.end method

.method public K()V
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/i/b/f;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/i/b/f;->F()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/i/b/f;->c:Z

    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    return-void
.end method

.method protected M()I
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/uzmap/pkg/uzcore/i/b/f;->g:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public N()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/i/b/f;->d:Z

    return v0
.end method

.method public final O()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/i/b/f;->b:Z

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/i/b/f;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/uzmap/pkg/uzcore/i/b/d;

    invoke-direct {v0, p1, p0}, Lcom/uzmap/pkg/uzcore/i/b/d;-><init>(Ljava/lang/String;Landroid/webkit/WebView;)V

    invoke-virtual {v0, p2}, Lcom/uzmap/pkg/uzcore/i/b/d;->a(Landroid/webkit/ValueCallback;)V

    invoke-static {v0}, Lcom/deepe/c/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/i/b/f;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-super {p0, p1, p2, v0}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected abstract a(Landroid/view/KeyEvent;)Z
.end method

.method protected abstract a(Lcom/uzmap/pkg/uzcore/p$a;)Z
.end method

.method protected abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
.end method

.method protected abstract b(Landroid/view/View;Z)V
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/i/b/f;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v4, Lcom/uzmap/pkg/uzcore/i/b/f;->a:Ljava/lang/String;

    const-string v5, "UTF-8"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-super/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final clearCache(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/i/b/f;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->clearCache(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected abstract d(I)Z
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sget-boolean v2, Lcom/uzmap/pkg/uzcore/z;->g:Z

    const/4 v3, 0x1

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/i/b/f;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    if-eqz v0, :cond_1

    if-ne v0, v3, :cond_2

    :cond_1
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/p;->b(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/i/b/f;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_3
    const/16 v2, 0x52

    const/4 v4, 0x4

    if-nez v0, :cond_6

    if-eq v1, v4, :cond_5

    if-ne v1, v2, :cond_4

    goto :goto_0

    :cond_4
    iput-boolean v3, p0, Lcom/uzmap/pkg/uzcore/i/b/f;->e:Z

    return v3

    :cond_5
    :goto_0
    invoke-super {p0, v1, p1}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_6
    if-ne v0, v3, :cond_c

    if-eq v1, v4, :cond_b

    if-ne v1, v2, :cond_7

    goto :goto_3

    :cond_7
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/i/b/f;->e:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    const/16 v0, 0x42

    if-ne v1, v0, :cond_8

    const/16 v0, 0x17

    move v1, v0

    :cond_8
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/i/b/f;->d(I)Z

    move-result v0

    goto :goto_1

    :cond_9
    move v0, v2

    :goto_1
    iput-boolean v2, p0, Lcom/uzmap/pkg/uzcore/i/b/f;->e:Z

    if-eqz v0, :cond_a

    goto :goto_2

    :cond_a
    invoke-super {p0, v1, p1}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    :goto_2
    return v3

    :cond_b
    :goto_3
    invoke-super {p0, v1, p1}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_c
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final e(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/i/b/f;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    const/16 v1, 0x30

    if-ne p1, v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    goto :goto_0

    :cond_2
    const/16 v1, 0x50

    if-ne p1, v1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p1

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final goBack()V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/i/b/f;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->goBack()V

    return-void
.end method

.method public final goForward()V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/i/b/f;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->goForward()V

    return-void
.end method

.method public j(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/i/b/f;->d:Z

    return-void
.end method

.method protected final k(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/i/b/f;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public final loadUrl(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/i/b/f;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/i/b/f;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-lt v0, v1, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b/f;->f:Lcom/uzmap/pkg/uzcore/i/b/c;

    if-nez v0, :cond_1

    new-instance v0, Lcom/uzmap/pkg/uzcore/i/b/c;

    invoke-direct {v0, p1}, Lcom/uzmap/pkg/uzcore/i/b/c;-><init>(Landroid/view/inputmethod/InputConnection;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b/f;->f:Lcom/uzmap/pkg/uzcore/i/b/c;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/i/b/c;->setTarget(Landroid/view/inputmethod/InputConnection;)V

    :goto_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/f;->f:Lcom/uzmap/pkg/uzcore/i/b/c;

    return-object p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/i/b/f;->k(Z)V

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    sget-boolean v0, Lcom/uzmap/pkg/uzcore/z;->g:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/uzmap/pkg/uzcore/p$a;->a:Lcom/uzmap/pkg/uzcore/p$a;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/i/b/f;->a(Lcom/uzmap/pkg/uzcore/p$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/16 v0, 0x52

    if-ne p1, v0, :cond_3

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/i/b/f;->e:Z

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    sget-boolean v0, Lcom/uzmap/pkg/uzcore/z;->g:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/uzmap/pkg/uzcore/p$a;->a:Lcom/uzmap/pkg/uzcore/p$a;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/i/b/f;->a(Lcom/uzmap/pkg/uzcore/p$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/16 v0, 0x52

    if-ne p1, v0, :cond_3

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_3
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/i/b/f;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/i/b/f;->d(I)Z

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    iput-boolean v1, p0, Lcom/uzmap/pkg/uzcore/i/b/f;->e:Z

    if-eqz v0, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    :goto_1
    return p1
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onOverScrolled(IIZZ)V

    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/i/b/f;->k(Z)V

    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    sget-boolean v0, Lcom/deepe/d/a;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Webview onRestoreInstanceState: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/d/a;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    sget-boolean v0, Lcom/deepe/d/a;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "Webview onSaveInstanceState."

    invoke-static {v0}, Lcom/deepe/d/a;->f(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final pauseTimers()V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/i/b/f;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->pauseTimers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final resumeTimers()V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/i/b/f;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->resumeTimers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final saveWebArchive(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final setOverScrollMode(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/i/b/f;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOverScrollMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final stopLoading()V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/i/b/f;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V

    return-void
.end method
