.class Lcom/apicloud/a/c/v$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/eclipsesource/v8/JavaCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/c/v;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/c/v;


# direct methods
.method constructor <init>(Lcom/apicloud/a/c/v;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/c/v$1;->a:Lcom/apicloud/a/c/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/eclipsesource/v8/V8Object;Lcom/eclipsesource/v8/V8Array;)Ljava/lang/Object;
    .locals 1

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/eclipsesource/v8/V8Array;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x3641cce3

    if-eq p2, v0, :cond_2

    const v0, 0x30a17510

    if-eq p2, v0, :cond_0

    goto :goto_1

    :cond_0
    const-string p2, "innerWidth"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/apicloud/a/c/v$1;->a:Lcom/apicloud/a/c/v;

    invoke-static {p1}, Lcom/apicloud/a/c/v;->a(Lcom/apicloud/a/c/v;)Lcom/apicloud/a/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/apicloud/a/d;->o()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    :goto_0
    invoke-static {p1}, Lcom/apicloud/a/a/d;->a(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p2, "innerHeight"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :goto_1
    const/4 p1, 0x0

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/apicloud/a/c/v$1;->a:Lcom/apicloud/a/c/v;

    invoke-static {p1}, Lcom/apicloud/a/c/v;->a(Lcom/apicloud/a/c/v;)Lcom/apicloud/a/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/apicloud/a/d;->o()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    goto :goto_0
.end method
