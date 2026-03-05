.class Lcom/deepe/e/j$2;
.super Lcom/deepe/a/g/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/e/j;->b(Lcom/deepe/e/d;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/deepe/e/j;

.field private final synthetic e:Lcom/deepe/e/d;


# direct methods
.method constructor <init>(Lcom/deepe/e/j;Lcom/deepe/e/d;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/e/j$2;->d:Lcom/deepe/e/j;

    iput-object p2, p0, Lcom/deepe/e/j$2;->e:Lcom/deepe/e/d;

    invoke-direct {p0}, Lcom/deepe/a/g/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/deepe/e/j$2;->e:Lcom/deepe/e/d;

    iget-object v0, p0, Lcom/deepe/e/j$2;->d:Lcom/deepe/e/j;

    invoke-static {v0, p2}, Lcom/deepe/e/j;->a(Lcom/deepe/e/j;I)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/deepe/e/d;->success(Lorg/json/JSONObject;)V

    return-void
.end method
