.class Lcom/deepe/f/b/a$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/f/b/a;->a([Ljava/lang/String;Ljava/lang/String;Lcom/deepe/f/b/a$a;)Lcom/deepe/f/b/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/f/b/a;

.field private final synthetic b:Lcom/deepe/f/b/a$a;


# direct methods
.method constructor <init>(Lcom/deepe/f/b/a;Lcom/deepe/f/b/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/f/b/a$1;->a:Lcom/deepe/f/b/a;

    iput-object p2, p0, Lcom/deepe/f/b/a$1;->b:Lcom/deepe/f/b/a$a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p1, p0, Lcom/deepe/f/b/a$1;->a:Lcom/deepe/f/b/a;

    invoke-virtual {p0}, Lcom/deepe/f/b/a$1;->getResultCode()I

    move-result v0

    iget-object v1, p0, Lcom/deepe/f/b/a$1;->b:Lcom/deepe/f/b/a$a;

    invoke-static {p1, v0, p2, v1}, Lcom/deepe/f/b/a;->a(Lcom/deepe/f/b/a;ILandroid/content/Intent;Lcom/deepe/f/b/a$a;)V

    return-void
.end method
