.class Lcom/deepe/a/c/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/a/c/h;->a(Lcom/deepe/a/c/d;Lcom/deepe/a/c/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/a/c/h;

.field private final synthetic b:Lcom/deepe/a/c/d;

.field private final synthetic c:Lcom/deepe/a/c/c;


# direct methods
.method constructor <init>(Lcom/deepe/a/c/h;Lcom/deepe/a/c/d;Lcom/deepe/a/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/a/c/h$1;->a:Lcom/deepe/a/c/h;

    iput-object p2, p0, Lcom/deepe/a/c/h$1;->b:Lcom/deepe/a/c/d;

    iput-object p3, p0, Lcom/deepe/a/c/h$1;->c:Lcom/deepe/a/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/deepe/a/c/h$1;->a:Lcom/deepe/a/c/h;

    iget-object v1, p0, Lcom/deepe/a/c/h$1;->b:Lcom/deepe/a/c/d;

    iget-wide v1, v1, Lcom/deepe/a/c/d;->d:J

    iget-object v3, p0, Lcom/deepe/a/c/h$1;->c:Lcom/deepe/a/c/c;

    invoke-virtual {v0, v1, v2, v3}, Lcom/deepe/a/c/h;->a(JLcom/deepe/a/c/c;)V

    return-void
.end method
