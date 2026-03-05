.class interface abstract Lcom/apicloud/a/i/a/x/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/i/a/x/i;


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x41

    invoke-static {v0}, Lcom/apicloud/a/g/h;->a(I)I

    move-result v0

    sput v0, Lcom/apicloud/a/i/a/x/g;->a:I

    const/16 v0, 0x2c

    invoke-static {v0}, Lcom/apicloud/a/g/h;->a(I)I

    move-result v0

    sput v0, Lcom/apicloud/a/i/a/x/g;->b:I

    sget v0, Lcom/apicloud/a/a/d;->d:I

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/apicloud/a/i/a/x/g;->c:I

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/apicloud/a/i/a/x/h;)V
.end method

.method public abstract g()I
.end method

.method public abstract j()I
.end method
