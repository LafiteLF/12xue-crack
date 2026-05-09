.class Lcom/deepe/c/c/o$a;
.super Lcom/deepe/c/c/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/c/c/o;-><init>()V

    iput-object p2, p0, Lcom/deepe/c/c/o$a;->a:Ljava/lang/String;

    sget p1, Lcom/deepe/c/c/o$a;->e:I

    iput p1, p0, Lcom/deepe/c/c/o$a;->b:I

    return-void
.end method
