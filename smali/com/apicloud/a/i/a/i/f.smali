.class public Lcom/apicloud/a/i/a/i/f;
.super Landroid/view/TouchDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/i/f$a;
    }
.end annotation


# static fields
.field private static final b:Landroid/graphics/Rect;

.field private static final c:Lcom/apicloud/a/i/a/i/f$a;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/TouchDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/apicloud/a/i/a/i/f;->b:Landroid/graphics/Rect;

    new-instance v0, Lcom/apicloud/a/i/a/i/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apicloud/a/i/a/i/f$a;-><init>(Lcom/apicloud/a/i/a/i/f$a;)V

    sput-object v0, Lcom/apicloud/a/i/a/i/f;->c:Lcom/apicloud/a/i/a/i/f$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/apicloud/a/i/a/i/f;->b:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/i/f;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/TouchDelegate;)V
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/apicloud/a/i/a/i/e;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/apicloud/a/i/a/i/e;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/i/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/i/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/i/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/apicloud/a/i/a/i/f;->a:Ljava/util/List;

    sget-object v0, Lcom/apicloud/a/i/a/i/f;->c:Lcom/apicloud/a/i/a/i/f$a;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    iget-object v3, p0, Lcom/apicloud/a/i/a/i/f;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    move v5, v4

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    return v5

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/TouchDelegate;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    invoke-virtual {v6, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    return v7

    :cond_1
    if-nez v6, :cond_2

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    move v5, v7

    goto :goto_1
.end method
