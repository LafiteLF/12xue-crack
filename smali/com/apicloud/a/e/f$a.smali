.class public Lcom/apicloud/a/e/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Object;

.field private c:Lcom/apicloud/a/c/l;

.field private final d:Lcom/apicloud/a/e/f$b;

.field private final e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/apicloud/a/e/f$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/e/f$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/apicloud/a/e/f$a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/apicloud/a/e/f$a;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/apicloud/a/e/f$a;->d:Lcom/apicloud/a/e/f$b;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/apicloud/a/e/f$b;Lcom/apicloud/a/e/f$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apicloud/a/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/apicloud/a/e/f$b;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/e/f$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/e/f$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/e/f$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/apicloud/a/c/l;
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/e/f$a;->c:Lcom/apicloud/a/c/l;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/e/f$a;->d:Lcom/apicloud/a/e/f$b;

    iget-object v1, p0, Lcom/apicloud/a/e/f$a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/apicloud/a/e/f$b;->a(Ljava/lang/String;)Lcom/apicloud/a/c/l;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/e/f$a;->c:Lcom/apicloud/a/c/l;

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/e/f$a;->c:Lcom/apicloud/a/c/l;

    return-object v0
.end method
