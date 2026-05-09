.class Lcom/deepe/a/d/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/a/d/c;->a(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/a/d/c;


# direct methods
.method constructor <init>(Lcom/deepe/a/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/a/d/c$1;->a:Lcom/deepe/a/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    iget-object p1, p0, Lcom/deepe/a/d/c$1;->a:Lcom/deepe/a/d/c;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/deepe/a/d/c;->a(Lcom/deepe/a/d/c;I)V

    iget-object p1, p0, Lcom/deepe/a/d/c$1;->a:Lcom/deepe/a/d/c;

    invoke-virtual {p1}, Lcom/deepe/a/d/c;->c()V

    iget-object p1, p0, Lcom/deepe/a/d/c$1;->a:Lcom/deepe/a/d/c;

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/deepe/a/d/c;->a(Lcom/deepe/a/d/c;IILjava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
