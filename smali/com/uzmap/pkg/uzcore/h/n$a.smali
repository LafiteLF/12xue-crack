.class public Lcom/uzmap/pkg/uzcore/h/n$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzcore/h/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/h/n$a;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/h/n$a;->b:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/h/n$a;->c:Z

    iput p1, p0, Lcom/uzmap/pkg/uzcore/h/n$a;->a:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
