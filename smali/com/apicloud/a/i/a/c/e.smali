.class public Lcom/apicloud/a/i/a/c/e;
.super Landroid/text/method/ReplacementTransformationMethod;


# static fields
.field private static final a:[C

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/apicloud/a/i/a/c/e;->a:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/apicloud/a/i/a/c/e;->b:[C

    return-void

    :array_0
    .array-data 2
        0xas
        0xds
    .end array-data

    :array_1
    .array-data 2
        -0x101s
        -0x101s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/text/method/ReplacementTransformationMethod;-><init>()V

    return-void
.end method


# virtual methods
.method protected getOriginal()[C
    .locals 1

    sget-object v0, Lcom/apicloud/a/i/a/c/e;->a:[C

    return-object v0
.end method

.method protected getReplacement()[C
    .locals 1

    sget-object v0, Lcom/apicloud/a/i/a/c/e;->b:[C

    return-object v0
.end method
