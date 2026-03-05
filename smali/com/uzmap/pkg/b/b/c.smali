.class public Lcom/uzmap/pkg/b/b/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/uzmap/pkg/b/b/c;


# instance fields
.field private b:Lcom/uzmap/pkg/b/b/e;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/uzmap/pkg/b/b/c;
    .locals 1

    sget-object v0, Lcom/uzmap/pkg/b/b/c;->a:Lcom/uzmap/pkg/b/b/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/b/b/c;

    invoke-direct {v0}, Lcom/uzmap/pkg/b/b/c;-><init>()V

    sput-object v0, Lcom/uzmap/pkg/b/b/c;->a:Lcom/uzmap/pkg/b/b/c;

    :cond_0
    sget-object v0, Lcom/uzmap/pkg/b/b/c;->a:Lcom/uzmap/pkg/b/b/c;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 2

    invoke-static {p1, p2}, Lcom/deepe/d/a;->c(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/c;->b:Lcom/uzmap/pkg/b/b/e;

    if-eqz v0, :cond_0

    const-string v1, "app3c"

    invoke-virtual {v0, p1, v1, p2}, Lcom/uzmap/pkg/b/b/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method a(Lcom/uzmap/pkg/b/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/c;->b:Lcom/uzmap/pkg/b/b/e;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/uzmap/pkg/b/b/c;->a(ILjava/lang/String;)V

    return-void
.end method
