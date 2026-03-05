.class abstract Lcom/deepe/c/c/a/a/k$ak;
.super Lcom/deepe/c/c/a/a/k$am;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ak"
.end annotation


# instance fields
.field p:Ljava/lang/String;

.field q:Ljava/lang/Boolean;

.field r:Lcom/deepe/c/c/a/a/o;

.field s:Lcom/deepe/c/c/a/a/o;

.field t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/k$am;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepe/c/c/a/a/k$ak;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/deepe/c/c/a/a/k$ak;->q:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/deepe/c/c/a/a/k$ak;->r:Lcom/deepe/c/c/a/a/o;

    iput-object v0, p0, Lcom/deepe/c/c/a/a/k$ak;->s:Lcom/deepe/c/c/a/a/o;

    iput-object v0, p0, Lcom/deepe/c/c/a/a/k$ak;->t:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/k$ak;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
