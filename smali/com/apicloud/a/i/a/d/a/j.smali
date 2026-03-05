.class abstract Lcom/apicloud/a/i/a/d/a/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/d/a/j$a;
    }
.end annotation


# instance fields
.field private a:Lcom/apicloud/a/i/a/d/a/j$a;

.field private b:I

.field private c:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Landroid/view/Surface;
.end method

.method abstract a(I)V
.end method

.method a(II)V
    .locals 0

    return-void
.end method

.method a(Lcom/apicloud/a/i/a/d/a/j$a;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/j;->a:Lcom/apicloud/a/i/a/d/a/j$a;

    return-void
.end method

.method abstract b()Landroid/view/View;
.end method

.method b(II)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/d/a/j;->b:I

    iput p2, p0, Lcom/apicloud/a/i/a/d/a/j;->c:I

    return-void
.end method

.method abstract c()Ljava/lang/Class;
.end method

.method abstract d()Z
.end method

.method protected e()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/j;->a:Lcom/apicloud/a/i/a/d/a/j$a;

    invoke-interface {v0}, Lcom/apicloud/a/i/a/d/a/j$a;->a()V

    return-void
.end method

.method f()Landroid/view/SurfaceHolder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method g()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method h()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/d/a/j;->b:I

    return v0
.end method

.method i()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/d/a/j;->c:I

    return v0
.end method
