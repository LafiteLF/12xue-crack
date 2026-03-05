.class Lcom/apicloud/a/i/a/y/a/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/y/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field final d:Ljava/lang/String;

.field final synthetic e:Lcom/apicloud/a/i/a/y/a/b;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/y/a/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/y/a/b$a;->e:Lcom/apicloud/a/i/a/y/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/apicloud/a/i/a/y/a/b$a;->d:Ljava/lang/String;

    return-void
.end method
