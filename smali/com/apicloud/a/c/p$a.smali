.class Lcom/apicloud/a/c/p$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/e/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/c/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/apicloud/a/c/h;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/c/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/c/p$a;->a:Lcom/apicloud/a/c/h;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/apicloud/a/c/l;
    .locals 2

    new-instance v0, Lcom/apicloud/a/c/l;

    iget-object v1, p0, Lcom/apicloud/a/c/p$a;->a:Lcom/apicloud/a/c/h;

    invoke-direct {v0, p1, v1}, Lcom/apicloud/a/c/l;-><init>(Ljava/lang/String;Lcom/apicloud/a/c/o;)V

    return-object v0
.end method
