.class public Lcom/deepe/c/l/d/a;
.super Ljava/lang/Exception;


# static fields
.field private static final serialVersionUID:J = 0x65bb3ca323055105L


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lcom/deepe/c/l/d/a;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/deepe/c/l/d/a;->a:I

    return v0
.end method
