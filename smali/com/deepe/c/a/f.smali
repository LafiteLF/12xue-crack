.class public Lcom/deepe/c/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/c/a/f$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/deepe/c/a/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/view/View;

.field private c:I

.field private d:I

.field private e:Landroid/widget/FrameLayout$LayoutParams;

.field private f:I

.field private g:Landroid/view/inputmethod/InputMethodManager;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepe/c/a/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/deepe/c/a/f;->a:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>(Landroid/widget/FrameLayout;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/deepe/c/a/f;->b:Landroid/view/View;

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object p1, p0, Lcom/deepe/c/a/f;->e:Landroid/widget/FrameLayout$LayoutParams;

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput p1, p0, Lcom/deepe/c/a/f;->f:I

    iget-object p1, p0, Lcom/deepe/c/a/f;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/a/j;->a(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    iput-object p1, p0, Lcom/deepe/c/a/f;->g:Landroid/view/inputmethod/InputMethodManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/deepe/c/a/f;->h:Ljava/util/List;

    iget-object p1, p0, Lcom/deepe/c/a/f;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/deepe/c/a/f;
    .locals 3

    invoke-static {p0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/deepe/c/a/f;

    invoke-direct {v1, v0}, Lcom/deepe/c/a/f;-><init>(Landroid/widget/FrameLayout;)V

    invoke-static {p0}, Lcom/deepe/a/b/d;->b(Landroid/content/Context;)I

    move-result p0

    iput p0, v1, Lcom/deepe/c/a/f;->j:I

    :cond_2
    :goto_0
    return-object v1
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/i/q;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(I)V
    .locals 3

    iget v0, p0, Lcom/deepe/c/a/f;->j:I

    sub-int/2addr p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget v0, p0, Lcom/deepe/c/a/f;->d:I

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/deepe/c/a/f;->d:I

    iget-object v0, p0, Lcom/deepe/c/a/f;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/deepe/c/a/f;->g:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/deepe/c/a/f;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/c/a/f$a;

    invoke-interface {v2, v0, p1}, Lcom/deepe/c/a/f$a;->a(Landroid/view/View;I)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    invoke-static {p0}, Lcom/deepe/c/a/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/deepe/c/a/f;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/deepe/c/a/f;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/a/f;

    invoke-virtual {v1, p0}, Lcom/deepe/c/a/f;->c(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/deepe/c/a/f;->b(Landroid/app/Activity;)V

    :cond_1
    invoke-static {p0}, Lcom/deepe/c/a/f;->a(Landroid/content/Context;)Lcom/deepe/c/a/f;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/deepe/c/a/f;->i:Z

    sget-object v1, Lcom/deepe/c/a/f;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/deepe/c/a/f$a;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/deepe/c/a/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/deepe/c/a/f;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/a/f;

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/deepe/c/a/f;->a(Landroid/content/Context;)Lcom/deepe/c/a/f;

    move-result-object v1

    sget-object p0, Lcom/deepe/c/a/f;->a:Ljava/util/Hashtable;

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v1, :cond_2

    iget-object p0, v1, Lcom/deepe/c/a/f;->h:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, v1, Lcom/deepe/c/a/f;->h:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private b()V
    .locals 4

    invoke-direct {p0}, Lcom/deepe/c/a/f;->c()I

    move-result v0

    iget v1, p0, Lcom/deepe/c/a/f;->c:I

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/deepe/c/a/f;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int v2, v1, v0

    iget-boolean v3, p0, Lcom/deepe/c/a/f;->i:Z

    if-eqz v3, :cond_2

    div-int/lit8 v3, v1, 0x4

    if-le v2, v3, :cond_1

    iget-object v3, p0, Lcom/deepe/c/a/f;->e:Landroid/widget/FrameLayout$LayoutParams;

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/deepe/c/a/f;->e:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/deepe/c/a/f;->f:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_0
    iget-object v1, p0, Lcom/deepe/c/a/f;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_2
    iput v0, p0, Lcom/deepe/c/a/f;->c:I

    invoke-direct {p0, v2}, Lcom/deepe/c/a/f;->a(I)V

    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 1

    invoke-static {p0}, Lcom/deepe/c/a/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/deepe/c/a/f;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepe/c/a/f;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/deepe/c/a/f;->a()V

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/deepe/c/a/f$a;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/deepe/c/a/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/deepe/c/a/f;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepe/c/a/f;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/deepe/c/a/f;->h:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private c()I
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/a/f;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepe/c/a/f;->h:Ljava/util/List;

    iget-object v0, p0, Lcom/deepe/c/a/f;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/deepe/c/a/f;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/a/f;->e:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/deepe/c/a/f;->f:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/deepe/c/a/f;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/a/f;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void
.end method

.method public c(Landroid/app/Activity;)Z
    .locals 2

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/deepe/c/a/f;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public onGlobalLayout()V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/c/a/f;->b()V

    return-void
.end method
