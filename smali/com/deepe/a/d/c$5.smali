.class Lcom/deepe/a/d/c$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/a/d/c;->c(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/a/d/c;

.field private final synthetic b:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Lcom/deepe/a/d/c;Landroid/media/MediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/a/d/c$5;->a:Lcom/deepe/a/d/c;

    iput-object p2, p0, Lcom/deepe/a/d/c$5;->b:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lcom/deepe/a/d/c$5;->a:Lcom/deepe/a/d/c;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/deepe/a/d/c;->a(Lcom/deepe/a/d/c;I)V

    iget-object p1, p0, Lcom/deepe/a/d/c$5;->a:Lcom/deepe/a/d/c;

    iget-object v0, p0, Lcom/deepe/a/d/c$5;->b:Landroid/media/MediaPlayer;

    invoke-static {p1, v0}, Lcom/deepe/a/d/c;->a(Lcom/deepe/a/d/c;Landroid/media/MediaPlayer;)V

    return-void
.end method
