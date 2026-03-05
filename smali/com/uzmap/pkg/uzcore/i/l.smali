.class public Lcom/uzmap/pkg/uzcore/i/l;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzcore/i/l$a;
    }
.end annotation


# instance fields
.field private a:Lcom/uzmap/pkg/uzcore/i/l$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x1000000

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/i/l;->setBackgroundColor(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/i/l;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/l;->a:Lcom/uzmap/pkg/uzcore/i/l$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/i/l$a;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/i/l;->a:Lcom/uzmap/pkg/uzcore/i/l$a;

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/i/l$a;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/l;->a:Lcom/uzmap/pkg/uzcore/i/l$a;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
