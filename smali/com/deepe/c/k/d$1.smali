.class Lcom/deepe/c/k/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/c/k/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/k/d;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Landroid/webkit/ValueCallback;


# direct methods
.method constructor <init>(Lcom/deepe/c/k/d;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/k/d$1;->a:Lcom/deepe/c/k/d;

    iput-object p2, p0, Lcom/deepe/c/k/d$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/deepe/c/k/d$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/deepe/c/k/d$1;->d:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/deepe/c/k/d$1;->a:Lcom/deepe/c/k/d;

    iget-object v1, p0, Lcom/deepe/c/k/d$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/deepe/c/k/d$1;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/deepe/c/k/d$1;->d:Landroid/webkit/ValueCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/deepe/c/k/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
