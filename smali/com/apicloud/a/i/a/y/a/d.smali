.class public Lcom/apicloud/a/i/a/y/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/i/a/y/a/a$a;


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/y/a/d;->a:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a/d;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    return v0
.end method
