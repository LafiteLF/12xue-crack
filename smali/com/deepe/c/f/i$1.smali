.class Lcom/deepe/c/f/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/c/f/i;->b(I[Ljava/lang/String;Lcom/deepe/c/f/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/f/i;

.field private final synthetic b:Lcom/deepe/c/f/k;


# direct methods
.method constructor <init>(Lcom/deepe/c/f/i;Lcom/deepe/c/f/k;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/f/i$1;->a:Lcom/deepe/c/f/i;

    iput-object p2, p0, Lcom/deepe/c/f/i$1;->b:Lcom/deepe/c/f/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/f/i$1;->a:Lcom/deepe/c/f/i;

    invoke-virtual {v0}, Lcom/deepe/c/f/i;->a()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/c/f/i$1;->b:Lcom/deepe/c/f/k;

    invoke-static {v0, v1}, Lcom/deepe/c/f/i;->a(Landroid/app/Activity;Lcom/deepe/c/f/k;)V

    return-void
.end method
