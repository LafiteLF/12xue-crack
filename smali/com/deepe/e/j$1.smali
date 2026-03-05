.class Lcom/deepe/e/j$1;
.super Lcom/deepe/a/g/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/e/j;->a(Lcom/deepe/e/d;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j:Lcom/deepe/e/j;

.field private final synthetic k:Lcom/deepe/e/d;


# direct methods
.method constructor <init>(Lcom/deepe/e/j;Lcom/deepe/e/d;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/e/j$1;->j:Lcom/deepe/e/j;

    iput-object p2, p0, Lcom/deepe/e/j$1;->k:Lcom/deepe/e/d;

    invoke-direct {p0}, Lcom/deepe/a/g/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    check-cast p1, Lcom/deepe/a/g/a;

    invoke-virtual {p1}, Lcom/deepe/a/g/a;->a()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/deepe/e/j$1;->k:Lcom/deepe/e/d;

    iget-object v1, p0, Lcom/deepe/e/j$1;->j:Lcom/deepe/e/j;

    invoke-static {v1, p1, p2}, Lcom/deepe/e/j;->a(Lcom/deepe/e/j;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/deepe/e/d;->success(Lorg/json/JSONObject;)V

    return-void
.end method
