.class Lcom/apicloud/c/a/a/p$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/c/a/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static d:Lcom/apicloud/c/a/a/a/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/c/a/a/a/a$a<",
            "Lcom/apicloud/c/a/a/p$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:Lcom/apicloud/c/a/a/j$e$c;

.field c:Lcom/apicloud/c/a/a/j$e$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/apicloud/c/a/a/a/a$b;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/apicloud/c/a/a/a/a$b;-><init>(I)V

    sput-object v0, Lcom/apicloud/c/a/a/p$a;->d:Lcom/apicloud/c/a/a/a/a$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lcom/apicloud/c/a/a/p$a;
    .locals 1

    sget-object v0, Lcom/apicloud/c/a/a/p$a;->d:Lcom/apicloud/c/a/a/a/a$a;

    invoke-interface {v0}, Lcom/apicloud/c/a/a/a/a$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/c/a/a/p$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/c/a/a/p$a;

    invoke-direct {v0}, Lcom/apicloud/c/a/a/p$a;-><init>()V

    :cond_0
    return-object v0
.end method

.method static a(Lcom/apicloud/c/a/a/p$a;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/apicloud/c/a/a/p$a;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/c/a/a/p$a;->b:Lcom/apicloud/c/a/a/j$e$c;

    iput-object v0, p0, Lcom/apicloud/c/a/a/p$a;->c:Lcom/apicloud/c/a/a/j$e$c;

    sget-object v0, Lcom/apicloud/c/a/a/p$a;->d:Lcom/apicloud/c/a/a/a/a$a;

    invoke-interface {v0, p0}, Lcom/apicloud/c/a/a/a/a$a;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method static b()V
    .locals 1

    :cond_0
    sget-object v0, Lcom/apicloud/c/a/a/p$a;->d:Lcom/apicloud/c/a/a/a/a$a;

    invoke-interface {v0}, Lcom/apicloud/c/a/a/a/a$a;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void
.end method
