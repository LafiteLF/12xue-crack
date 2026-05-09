.class public Lcom/deepe/a/g/a/g;
.super Ljava/lang/Object;


# static fields
.field static final a:I

.field static final b:I

.field static final c:F


# instance fields
.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/apicloud/a/a/d;->b(I)I

    move-result v0

    sput v0, Lcom/deepe/a/g/a/g;->a:I

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/apicloud/a/a/d;->b(I)I

    move-result v0

    sput v0, Lcom/deepe/a/g/a/g;->b:I

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/apicloud/a/a/d;->b(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/deepe/a/g/a/g;->c:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x66000000

    iput v0, p0, Lcom/deepe/a/g/a/g;->d:I

    const v0, -0xe0e0f

    iput v0, p0, Lcom/deepe/a/g/a/g;->e:I

    const v0, -0x19191a

    iput v0, p0, Lcom/deepe/a/g/a/g;->f:I

    const v0, -0xff8501

    iput v0, p0, Lcom/deepe/a/g/a/g;->g:I

    const v0, -0xff9f10

    iput v0, p0, Lcom/deepe/a/g/a/g;->h:I

    const v0, -0x707071

    iput v0, p0, Lcom/deepe/a/g/a/g;->i:I

    return-void
.end method
