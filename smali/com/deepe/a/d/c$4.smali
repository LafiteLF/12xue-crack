.class Lcom/deepe/a/d/c$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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

    iput-object p1, p0, Lcom/deepe/a/d/c$4;->a:Lcom/deepe/a/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    iget-object p1, p0, Lcom/deepe/a/d/c$4;->a:Lcom/deepe/a/d/c;

    invoke-static {p1, p2, p3}, Lcom/deepe/a/d/c;->a(Lcom/deepe/a/d/c;II)Z

    move-result p1

    return p1
.end method
