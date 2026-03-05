.class public Lcom/apicloud/a/i/a/ad/f;
.super Lcom/apicloud/a/i/a/g/d;

# interfaces
.implements Lcom/apicloud/a/i/a/g/e;


# instance fields
.field private a:Z

.field private b:Lcom/apicloud/a/i/a/ad/j;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/g/d;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/i/a/ad/j;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ad/f;->b:Lcom/apicloud/a/i/a/ad/j;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ad/f;->a:Z

    return-void
.end method

.method public a_()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/f;->b:Lcom/apicloud/a/i/a/ad/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/apicloud/a/i/a/ad/j;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/a/i/a/ad/f;->b:Lcom/apicloud/a/i/a/ad/j;

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ad/f;->a:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[swiper-item]"

    return-object v0
.end method
