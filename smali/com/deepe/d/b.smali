.class public final Lcom/deepe/d/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Z = false

.field private static b:Lcom/deepe/d/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final a(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/deepe/d/b;->b()Lcom/deepe/d/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/deepe/d/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/deepe/d/b;->b()Lcom/deepe/d/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/deepe/d/c;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method static final a()Z
    .locals 1

    const-string v0, "Y29tLnlvbnlvdS5taXBtLnNkay5Mb2dDYXQ="

    invoke-static {v0}, Lcom/deepe/c/i/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/i/r;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/deepe/d/b;->a:Z

    sget-boolean v0, Lcom/deepe/d/b;->a:Z

    return v0
.end method

.method static final b()Lcom/deepe/d/c;
    .locals 1

    sget-object v0, Lcom/deepe/d/b;->b:Lcom/deepe/d/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/deepe/d/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/deepe/d/d;

    invoke-direct {v0}, Lcom/deepe/d/d;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/deepe/d/c;

    invoke-direct {v0}, Lcom/deepe/d/c;-><init>()V

    :goto_0
    sput-object v0, Lcom/deepe/d/b;->b:Lcom/deepe/d/c;

    sget-object v0, Lcom/deepe/d/b;->b:Lcom/deepe/d/c;

    return-object v0
.end method
