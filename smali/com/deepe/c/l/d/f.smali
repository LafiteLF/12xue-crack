.class public Lcom/deepe/c/l/d/f;
.super Lcom/deepe/c/l/d/c;


# static fields
.field private static final serialVersionUID:J = 0x5fdf5a6688bc28a1L


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/deepe/c/l/d/f;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x3f1

    invoke-direct {p0, v0}, Lcom/deepe/c/l/d/c;-><init>(I)V

    iput p1, p0, Lcom/deepe/c/l/d/f;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/deepe/c/l/d/f;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/16 v0, 0x3f1

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/l/d/c;-><init>(ILjava/lang/String;)V

    iput p2, p0, Lcom/deepe/c/l/d/f;->a:I

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lcom/deepe/c/l/d/f;->a:I

    return v0
.end method
