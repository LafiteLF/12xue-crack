.class Lcom/apicloud/a/i/a/y/a/n$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/i/a/y/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/y/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/y/a/n;


# direct methods
.method private constructor <init>(Lcom/apicloud/a/i/a/y/a/n;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/y/a/n$b;->a:Lcom/apicloud/a/i/a/y/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/apicloud/a/i/a/y/a/n;Lcom/apicloud/a/i/a/y/a/n$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/y/a/n$b;-><init>(Lcom/apicloud/a/i/a/y/a/n;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a/n$b;->a:Lcom/apicloud/a/i/a/y/a/n;

    invoke-static {v0}, Lcom/apicloud/a/i/a/y/a/n;->c(Lcom/apicloud/a/i/a/y/a/n;)Lcom/apicloud/a/i/a/y/a/m;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a/n$b;->a:Lcom/apicloud/a/i/a/y/a/n;

    invoke-static {v0}, Lcom/apicloud/a/i/a/y/a/n;->c(Lcom/apicloud/a/i/a/y/a/n;)Lcom/apicloud/a/i/a/y/a/m;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/apicloud/a/i/a/y/a/m;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
