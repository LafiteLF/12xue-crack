.class Lcom/apicloud/a/i/a/d/a/b$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/i/a/d/a/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/d/a/b;->a(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/d/a/b;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/d/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/b$4;->a:Lcom/apicloud/a/i/a/d/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b$4;->a:Lcom/apicloud/a/i/a/d/a/b;

    iget-object v0, v0, Lcom/apicloud/a/i/a/d/a/b;->b:Lcom/apicloud/a/i/a/d/a/f$a;

    invoke-interface {v0, p1}, Lcom/apicloud/a/i/a/d/a/f$a;->a(Ljava/io/File;)V

    return-void
.end method
