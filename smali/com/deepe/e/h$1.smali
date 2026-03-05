.class Lcom/deepe/e/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/e/h;->c(Lcom/deepe/e/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/e/h;


# direct methods
.method constructor <init>(Lcom/deepe/e/h;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/e/h$1;->a:Lcom/deepe/e/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/deepe/e/h$1;->a:Lcom/deepe/e/h;

    iget-object v0, v0, Lcom/deepe/e/h;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/a;

    invoke-static {}, Lcom/deepe/e/h;->c()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->a(ILjava/lang/String;)Ljava/lang/String;

    return-void
.end method
