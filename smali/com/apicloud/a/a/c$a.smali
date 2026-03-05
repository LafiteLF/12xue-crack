.class Lcom/apicloud/a/a/c$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "TT;TT;TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/apicloud/a/a/c$b;


# direct methods
.method constructor <init>(Lcom/apicloud/a/a/c$b;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/a/c$a;->a:Lcom/apicloud/a/a/c$b;

    return-void
.end method

.method static a(Lcom/apicloud/a/a/c$b;)Lcom/apicloud/a/a/c$a;
    .locals 1

    new-instance v0, Lcom/apicloud/a/a/c$a;

    invoke-direct {v0, p0}, Lcom/apicloud/a/a/c$a;-><init>(Lcom/apicloud/a/a/c$b;)V

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)TT;"
        }
    .end annotation

    iget-object p1, p0, Lcom/apicloud/a/a/c$a;->a:Lcom/apicloud/a/a/c$b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/apicloud/a/a/c$b;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onCancelled()V
    .locals 0

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/apicloud/a/a/c$a;->a:Lcom/apicloud/a/a/c$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/apicloud/a/a/c$b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
