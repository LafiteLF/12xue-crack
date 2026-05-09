.class public Lcom/uzmap/pkg/uzcore/i/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzcore/i/a/d$a;
    }
.end annotation


# static fields
.field private static a:Lcom/uzmap/pkg/uzcore/i/a/f;

.field private static b:Lcom/uzmap/pkg/uzcore/i/a/e;


# direct methods
.method public static final a()Lcom/uzmap/pkg/uzcore/i/a/d$a;
    .locals 2

    sget-object v0, Lcom/uzmap/pkg/uzcore/i/a/d;->a:Lcom/uzmap/pkg/uzcore/i/a/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/uzcore/i/a/f;

    const/high16 v1, 0x300000

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzcore/i/a/f;-><init>(I)V

    sput-object v0, Lcom/uzmap/pkg/uzcore/i/a/d;->a:Lcom/uzmap/pkg/uzcore/i/a/f;

    :cond_0
    sget-object v0, Lcom/uzmap/pkg/uzcore/i/a/d;->a:Lcom/uzmap/pkg/uzcore/i/a/f;

    return-object v0
.end method

.method public static final a(Z)Lcom/uzmap/pkg/uzcore/i/a/d$a;
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/uzmap/pkg/uzcore/i/a/d;->b()Lcom/uzmap/pkg/uzcore/i/a/d$a;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/uzmap/pkg/uzcore/i/a/d;->a()Lcom/uzmap/pkg/uzcore/i/a/d$a;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final b()Lcom/uzmap/pkg/uzcore/i/a/d$a;
    .locals 2

    sget-object v0, Lcom/uzmap/pkg/uzcore/i/a/d;->b:Lcom/uzmap/pkg/uzcore/i/a/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/uzcore/i/a/e;

    const/high16 v1, 0x300000

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzcore/i/a/e;-><init>(I)V

    sput-object v0, Lcom/uzmap/pkg/uzcore/i/a/d;->b:Lcom/uzmap/pkg/uzcore/i/a/e;

    :cond_0
    sget-object v0, Lcom/uzmap/pkg/uzcore/i/a/d;->b:Lcom/uzmap/pkg/uzcore/i/a/e;

    return-object v0
.end method

.method public static final c()V
    .locals 1

    sget-object v0, Lcom/uzmap/pkg/uzcore/i/a/d;->b:Lcom/uzmap/pkg/uzcore/i/a/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/i/a/e;->a()V

    :cond_0
    sget-object v0, Lcom/uzmap/pkg/uzcore/i/a/d;->a:Lcom/uzmap/pkg/uzcore/i/a/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/i/a/f;->a()V

    :cond_1
    return-void
.end method
