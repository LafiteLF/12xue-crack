.class Lcom/deepe/a/g/a/a$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/a/g/a/a;->a(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/a/g/a/a;

.field private final synthetic b:Lcom/deepe/a/g/a/e;


# direct methods
.method constructor <init>(Lcom/deepe/a/g/a/a;Lcom/deepe/a/g/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/a/g/a/a$4;->a:Lcom/deepe/a/g/a/a;

    iput-object p2, p0, Lcom/deepe/a/g/a/a$4;->b:Lcom/deepe/a/g/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/deepe/a/g/a/a$4;->a:Lcom/deepe/a/g/a/a;

    iget-object v0, p0, Lcom/deepe/a/g/a/a$4;->b:Lcom/deepe/a/g/a/e;

    invoke-virtual {v0}, Lcom/deepe/a/g/a/e;->a()I

    move-result v0

    invoke-static {p1, v0}, Lcom/deepe/a/g/a/a;->a(Lcom/deepe/a/g/a/a;I)V

    return-void
.end method
