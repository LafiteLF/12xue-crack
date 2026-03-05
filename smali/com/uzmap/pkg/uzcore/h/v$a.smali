.class public abstract Lcom/uzmap/pkg/uzcore/h/v$a;
.super Lcom/uzmap/pkg/uzcore/h/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzcore/h/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/h/v;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;)Z
.end method

.method protected b(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/h/v$a;->a(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
