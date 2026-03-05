.class public Lcom/uzmap/pkg/uzcore/aa;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;ILjava/lang/CharSequence;)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/aa;->a:Z

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/aa;->b:Ljava/lang/String;

    iput p3, p0, Lcom/uzmap/pkg/uzcore/aa;->c:I

    iput-object p4, p0, Lcom/uzmap/pkg/uzcore/aa;->d:Ljava/lang/CharSequence;

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/aa;->a:Z

    return v0
.end method
