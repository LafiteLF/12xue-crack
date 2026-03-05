.class public Lcom/apicloud/a/i/a/x/b$a;
.super Lcom/apicloud/a/i/a/q/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/x/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/q/a$a;-><init>(II)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/apicloud/a/i/a/x/b$a;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/q/a$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/apicloud/a/i/a/x/b$a;->b:I

    iput p1, p0, Lcom/apicloud/a/i/a/x/b$a;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/q/a$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/apicloud/a/i/a/x/b$a;->b:I

    return-void
.end method
