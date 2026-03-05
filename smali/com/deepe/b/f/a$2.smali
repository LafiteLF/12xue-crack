.class Lcom/deepe/b/f/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/b/f/a;->e(Lcom/deepe/b/f/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Lcom/deepe/b/f/c;


# direct methods
.method constructor <init>(Lcom/deepe/b/f/c;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/f/a$2;->a:Lcom/deepe/b/f/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/b/f/a$2;->a:Lcom/deepe/b/f/c;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/deepe/b/f/a;->b(Ljava/lang/String;Lcom/deepe/b/f/c;)V

    return-void
.end method
