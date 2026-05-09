.class public final Lcom/deepe/c/f/m$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/f/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/deepe/c/f/i;

.field private final b:I

.field private final c:[Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method public varargs constructor <init>(Landroid/app/Activity;I[Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    array-length v0, p3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lcom/deepe/c/f/i;->a(Landroid/app/Activity;)Lcom/deepe/c/f/i;

    move-result-object p1

    iput-object p1, p0, Lcom/deepe/c/f/m$a;->a:Lcom/deepe/c/f/i;

    iput p2, p0, Lcom/deepe/c/f/m$a;->b:I

    iput-object p3, p0, Lcom/deepe/c/f/m$a;->c:[Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t check permissions for none perms"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/deepe/c/f/m$a;
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/f/m$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/deepe/c/f/m$a;
    .locals 0

    iput-boolean p1, p0, Lcom/deepe/c/f/m$a;->g:Z

    return-object p0
.end method

.method public a()Lcom/deepe/c/f/m;
    .locals 10

    iget-object v0, p0, Lcom/deepe/c/f/m$a;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/deepe/c/f/e;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/f/m$a;->d:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/f/m$a;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/deepe/c/f/m$a;->g:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/deepe/c/f/e;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/deepe/c/f/e;->e()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/deepe/c/f/m$a;->e:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/deepe/c/f/m$a;->f:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/deepe/c/f/e;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/f/m$a;->f:Ljava/lang/String;

    :cond_3
    new-instance v0, Lcom/deepe/c/f/m;

    iget-object v2, p0, Lcom/deepe/c/f/m$a;->a:Lcom/deepe/c/f/i;

    iget-object v3, p0, Lcom/deepe/c/f/m$a;->c:[Ljava/lang/String;

    iget v4, p0, Lcom/deepe/c/f/m$a;->b:I

    iget-object v5, p0, Lcom/deepe/c/f/m$a;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/deepe/c/f/m$a;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/deepe/c/f/m$a;->f:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/deepe/c/f/m$a;->g:Z

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/deepe/c/f/m;-><init>(Lcom/deepe/c/f/i;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/deepe/c/f/m;)V

    return-object v0
.end method
