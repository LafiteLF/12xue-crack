.class public Lcom/uzmap/pkg/b/a/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/b/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/b/a/g$a;->h:Z

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/b/a/g$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/b/a/g$a;->i:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/b/a/g$a;->i:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/uzmap/pkg/b/a/g$a;->h:Z

    return-void
.end method

.method public a()Z
    .locals 2

    iget-boolean v0, p0, Lcom/uzmap/pkg/b/a/g$a;->g:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/uzmap/pkg/b/a/g$a;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/uzmap/pkg/b/a/g$a;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/g$a;->i:Ljava/lang/String;

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
