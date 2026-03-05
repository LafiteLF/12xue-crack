.class public Lcom/deepe/c/c/a/a/k$bb;
.super Lcom/deepe/c/c/a/a/k$am;

# interfaces
.implements Lcom/deepe/c/c/a/a/k$aw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "bb"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field private b:Lcom/deepe/c/c/a/a/k$ba;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/k$am;-><init>()V

    iput-object p1, p0, Lcom/deepe/c/c/a/a/k$bb;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public h()Lcom/deepe/c/c/a/a/k$ba;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/k$bb;->b:Lcom/deepe/c/c/a/a/k$ba;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TextChild: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/k$bb;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
